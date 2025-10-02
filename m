Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A11296BA2
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759385394; cv=none; b=XwkviLXSlXo+uZrEo+Os8P8junXbg5jBSD/5/wX+6D+pbGddiFJxr6VreAsuJa5wpgZ8RZfndfGnzQWn6OXz0ieiTOSqVbthrmB/nY36JUeHwDnh6f3HB9YR8KYWWYRCCY9pJSnbwV0jweybPpL61DARqrIoqtSG8AXXVejwmMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759385394; c=relaxed/simple;
	bh=Id/05x1SaCqvxSPPrClCiMhwUOx5cppaMq9Q6KOQDq8=;
	h=To:Subject:From:Message-Id:Date; b=tNKN8Ca+9u3AppJ0JTjofnEuQJwhJHMlxK1UNNqhP+sQM548i8Thy6YYCsNc3A2B03V1BGq1z4ytdv3MXYWDSed4PBHlATIT6ksb0LgCqISfreggz2bX+P2CMUo9w8etVwEew4CTMazHypiIblqqcvMbJvbgDffEw0fD0ynArjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPb9LrTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPb9LrTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D778C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759385393;
	bh=Id/05x1SaCqvxSPPrClCiMhwUOx5cppaMq9Q6KOQDq8=;
	h=To:Subject:From:Date:From;
	b=GPb9LrTS3xzQzCxEjsJ0EmrAHKicqcYElHhvedlbtaiVgerBBmCS9Jg+EEi9d5Ko3
	 cFvCKs3BvD1NMBbfMOgUYn0WnOH02Zy3aq6+UY8HnmL672KBmUK4/PS6D2hvbK10Vf
	 SYSxPVTEAAsxpPW9x1wv3jq+1ceGnyoCS26TypMDlbH4FGqYSwv5MWdZwgvW+VL8Pb
	 azsujLKZ6KUEK44dRKOPb9ayT4HntU8yIlD1h5gEa4e3uNPF5aWW2adadXeuAPnikU
	 OnDCCvTVVY6lvJuv41lmqMt2nTCEOHN1bUdcf9/mVH2hhkIKzHXdeBDjIohW5kHkhJ
	 y5kioCsFkjw7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD0CCD183
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938539358.32389.14573610282751170135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6215dfee40e0e6d8cce998178d06a32ebc6fb7a140e0e81fa2f3964051b4860
Date: Thu, 02 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759385393
