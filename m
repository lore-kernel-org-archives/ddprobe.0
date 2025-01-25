Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B208494
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737829554; cv=none; b=N1H8OA2LsQJMSLzgxw+Qwk8UC2aUydLyz3YFOgW2yORtPaQwOZ8OLHeYevG3Qoc3MfIgI/bXGhZlFCmrxdKyKoqgyrcog2YWY1l8yJKMr0noLCEi9ubir+zAaH5ViQQg0TRN2ZoeoIsnP76dshOCaF9Y6e0hjNMVeZWeSOYX1vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737829554; c=relaxed/simple;
	bh=IleyEG2QGSlO2rdQCDwiudki2LYLAh+CHPr/CMCfqdg=;
	h=To:Subject:From:Message-Id:Date; b=iN82OCDjsFZFNSFPalPZAdAf29xHo2anP3Qga8ZA1A9EbUZsZ+XK0FOQIprcqMJhg70VFb/KBXMbv9O57LbUIGqfmo7ZrCK9PflG3AdxPmupn2P/7d9heeIBbAd+NcCHI3KYW1LhG76BV4nrmeIJ4OJ3qKVuiEoLqVy9PfFg3Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLIGi3Rt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLIGi3Rt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4976C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737829553;
	bh=IleyEG2QGSlO2rdQCDwiudki2LYLAh+CHPr/CMCfqdg=;
	h=To:Subject:From:Date:From;
	b=eLIGi3RtFXjW8+Mbh7W/KGlxm5JPsx5ERsLlFOeixxK2b0UgaMFZMUHefMJeOHLvy
	 uQbDWTrZvIaDZ/eLsvjpVDFcfyXjQ/t2xaNixr8mEjFBwT+IwGYSI5dG7jWdW8+M83
	 obpjFnZJQ3J4L98CYlanuZVsX16RmySbePW0ttFPxoVeBNnsjtpo9PnElKyoH/LDdY
	 BDqS97Hi9QIgikkxi8eOg1I5ZRufNoNTVk6agKI28GMak+46aE+O+o7z3KN2TaGVZQ
	 muCdpE2bK9uE8ENjzEDEWZbeAumlKXPA1vsRYccWusKngOaDiKm9HYS6bxMY7R6bGR
	 0BNptBXSbIPcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B5C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782955357.16505.2871377065392006712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192c59990be5660e9823944df893c751abb0097fe7d08d06b7b0b2c5775f6eaf
Date: Sat, 25 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737829553
