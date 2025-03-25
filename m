Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355C8197A7A
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742912394; cv=none; b=bAKPr0TRBrCEqX/U79wscTlxAmKj605tnQ76YHdntzL9N8KyhX/oQlXWnkhVoovPtZpDNHkxvCw0Ca9OD7C2hDw+JWMZuLtAe6t0b1dsarWAFW+qtf8IYXtREKOw+hWW7YB3fS5kmrhqSsHGKtftFbZhxAgWhXDBBJ1Fa3oNDMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742912394; c=relaxed/simple;
	bh=52PIgwURNDRaw4/OoliKJ+tTYbApvDEhfo2aPCjds/M=;
	h=To:Subject:From:Message-Id:Date; b=obaTSx1nnbi3LQ8yRp8IfDRIBqO6iLGGIxusuOW2BlWebgyCoW0GigQyRCyjUp6sVl+ucKCKfHClVg7VCF/bROZSBVsVUXtnVATmjbFUSFvj1wgc8R2HUZsPXkKDJekcHHfROAlh2W4darod1o/LWc7fyWrtOpIEQYGpSwGQtDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h05oInSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h05oInSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE9DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742912393;
	bh=52PIgwURNDRaw4/OoliKJ+tTYbApvDEhfo2aPCjds/M=;
	h=To:Subject:From:Date:From;
	b=h05oInSWXMhllTPmjs+FS3fu7sZ2pL8PpNDvvowoWmgpupP0ZGgjDGyKE6yLGGrt6
	 HI/3n7H3/c4aiONIxY/IadUu6KAQc4vQ254AQd0OyalRaYKEHV60FwgecPCfXRF7fu
	 z5Ro9c2ziGOap15gGk5BOU1UwrNs2DC9j0GFOKnr8Wc3GnMoPCSw+T23DVxFAjfnrz
	 lJtP1IaIXaCdcuOAK0KnPDVXvM8T9tWBZ6u8Xr1wvKQd0M/pX+f8PEehLgqpUJUkOl
	 p8SfOcxs9nifAHJ13+BL3x6ToV9TQVxna1Y6xa+MTV7ESK3aRcI94qofz4nQ/LqV15
	 3mKmazNj8vJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9950BC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174291239361.30409.11413229831285493124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1bfa5a19146b403e64e139ff093e0ffa233a4b1c278be7c06e52170d32549b
Date: Tue, 25 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742912393
