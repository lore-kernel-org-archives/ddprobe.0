Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D12823E320
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752622194; cv=none; b=R5zDw/6V7muW6ec4qVoXRCXe6YXa/ustE0gr1a/h72oxzmDFc5KzE3Ljj/vfbJiRFo7qByKttUkbu7vMuraDs2Lsor8TeQGdhaaHnSGPzDECHJ9iBHf8toRaI0OVALil4H2x9HbwHsDo7972TMyWoNeRR8g0HUEq12t/UTFyNiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752622194; c=relaxed/simple;
	bh=xwqsSN5WiaSwW4w/bk/86at0ZY7nhYTPPThvYb1qpQU=;
	h=To:Subject:From:Message-Id:Date; b=rlicBna3+hLjcdio9v0IyStnFd3p/7L27DvWiISO/Wpxkap7yDvosqydt5Z9Y6kZO11eI+DJLjhplczbuVgUFnwXXfA2AyG+0/f86XkDWiOc0NCGcRk09s+pAJTPvtax9tnae8jZy8WCNvpbdFpMVHBLMNv4FmYuxWXBC+oqEcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9uoJILT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9uoJILT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA45C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752622193;
	bh=xwqsSN5WiaSwW4w/bk/86at0ZY7nhYTPPThvYb1qpQU=;
	h=To:Subject:From:Date:From;
	b=U9uoJILTmlllA016RDsRii+GJNg1jLwnaX7hJ0mrxRCWo+skUQHM9A4NALJ4rateq
	 a8Z1trqzJoMtfAnQG0QMy4XBFrbGn/+T/SysUwLn42UBbAfjJgHVbsqWFmuqFfCJ3n
	 KukMWuqMawHmxBGCIMYAteTMKockXuJrCBVnbvTgtqQrdy+lZXq4SHEGz58pP44X7f
	 dQxgaBnD5/nywmwFfWTme7u4O/UfpgUvu154m/sStKSAeHlJwpxm40uy4opRoG3LM/
	 uCrMhUJ+P13pDZGKfRhxySmVuV0+mDyEjfNBwsdVfNXc8AyVtTg2/D3MOPUDkcO2+1
	 QMrs0fPXT2LZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91149C83F27
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262219358.11047.12219937624668387002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca7b8b208173e4678ebff1e3ac2b7b90b164857f92dc2b6505ec112fec1f8a9
Date: Tue, 15 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752622193
