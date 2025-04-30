Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D58F2DC77B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745983194; cv=none; b=bbl76o3vVQd/+djlSgEoTl9KvtDrx/hx62uJfEJSS0CaJbnfplEUz8IMuYYA+i1y25v/YhMbFWkf3mEOjzhi7cg8P2TgqJrRlseNGFBYSh9uXoyUagKU8jgszMnqMDc6Jpb0kUwXFmmO3JVsmnsXFtEj/GWQaYM61iihIb/tNpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745983194; c=relaxed/simple;
	bh=9kzCKiGnMVwzZ5pThmrw9f+SdCxEH6PVrSC7fOD/w74=;
	h=To:Subject:From:Message-Id:Date; b=eY9Kg2avIrBHdJdd8SrNTjPRGRhJHvoSjJ0otDdSGFTNCb7MuboGA0+HnS4mrAA4PTdEbJ41hSJMgJeyH0uPvFeN0lQgqUPVuezahm+JQ3vv0GzPSOVrcAercup4Lvgd9E0xoDAsGVaYWEeCLl0TBGrHWd7Lu8e7szd36bVJhp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAkPe6Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAkPe6Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B06C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745983193;
	bh=9kzCKiGnMVwzZ5pThmrw9f+SdCxEH6PVrSC7fOD/w74=;
	h=To:Subject:From:Date:From;
	b=QAkPe6KapNqck73Jki1ko//v8Qtp5gb96Esfij583skTKNzWAzKxzfkF2H8ZD62T9
	 WPLKoN49AZOkGfCSnoE+w3Nag1j1P6ynkKlj0vVyXt6RZOa8Mi8oS9pol5h9KpHwco
	 MfVxgqS+omkQUve37w0wXUAGiJAF1U13wQnhdgHB2bzMe8Aao6pk6vAKOzKm+qkRQ0
	 I0bjXtwCPptP1cFdyfCvyVUnpwNXNy6HLzZ9eLiEUwaY+TxsyaykGeVCBAAKSCz1IB
	 M83eBYqOJUCm6caNGH9fvxG9YhNbnQ9U4o794Up9GVBiFdHUWW7xIec7UgAfpYxjiR
	 gSEzridbs5AYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A4C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598319357.12811.3307718665600901192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fdeb5d8266a7837a5c5d97f9cd7c346ffb22ef510141f2e309678a545314060
Date: Wed, 30 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745983193
