Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768BBA2D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730953554; cv=none; b=udR5i9FBs+ooCMSiGpY6w/spItUbz9NyrN+ALRv2hLe1/Nx41rCQ2czJTMycm5fb07hwfK7jNdEg0PjOyf9W0qK/JvFFpYTAJipCGKRTbOfagXC6gFW1MvmEiWekn1fEUHSXPcdrMlPDMaewuSonC8r5ZNb48Jklm0BbLwD/1HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730953554; c=relaxed/simple;
	bh=ndG9OfWCzhrKUczofNhlhEIm79wRBfRlDPXxaY3rEkw=;
	h=To:Subject:From:Message-Id:Date; b=lrmbZkiPenqCWsxQdl5uxeV3hUvx9jouUONmBEl6J7IQ1w7sKBriNDJOmVS2/N8jBGVYmdh0rympart4LM+sUYmXL9AEyexc0P51ZddySuvrPCh128+M1l9YXc7TrMZ4Zi66siq/W39GLy9SovGZNJABW3LvZZ4yx5W5lX5enNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcFXM7Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcFXM7Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00B6C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730953553;
	bh=ndG9OfWCzhrKUczofNhlhEIm79wRBfRlDPXxaY3rEkw=;
	h=To:Subject:From:Date:From;
	b=kcFXM7Jm/cxG5RxzArLmdznuEjKl8+8SFI4pk4dhDXR0whQZmlzAQJ4LGMX80crWm
	 ziHyeiRAg4scVgiI7/j+YxGTbTV4kcMsGaEGVOLhcL/w2JkO43VAplTRx3cblZKcyx
	 +ntijjq1n9RDP/ZslA04tO9Z2Z25bXDThqfkBjuaNFYPIvSbST1OZmY5MCVTi5voUu
	 31wtiW2ZGFweFSZaUaAnsEb9saK/FNokB0HV5yKrGeqlUeCoBEQOnYXORwz/U9NTDv
	 PBVh2fov/pMZktk2CQZEubAPgMMs+CAddxLzK4HLDoh9woFpRlsAt4ezo0KBCr+50/
	 vjVkhfnMjDdkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C1DD5AE5A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173095355358.12133.8477824996723020464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38d6ec609a2628111ef9bd5d4290749a01381368a55e7a16cf472586a5d8db3
Date: Thu, 07 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730953553
