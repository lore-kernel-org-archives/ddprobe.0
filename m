Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6581030674E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783646314; cv=none; b=rT7dUNO2VfMgLg31CoLOizk5pCwyLYK3+w7tyzVSE7yv9EMZz0pFVaf7kZalR1DJINypRnfyioLIvtQlhG3OvzSCPVI2oPrEIVmt70y4pkyOkX73MlV2H2yjg4Cl5zgJhxu3gf4+iDV6mR/O3zoKDaDLxONeFj9DPoHUKYpz7UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783646314; c=relaxed/simple;
	bh=/S0t9WwMfuiA3xPj5R4pGkBrGeIKa8Lzfk128NES3oo=;
	h=To:Subject:From:Message-Id:Date; b=HltXCE3X25R4z/DnMDy5fvbh8/1NxTZECIxgt9+Mrtknj7QT6CpXX4i92+ut6UMlnIvt8hUwxfkreAYWA9BtBZ+6JMBSYBgIjb/t5cEJLrqrzm30r3fA3l+mxwQh+snZA6L+6CGWaHXBs8E5ihFFyTjYhNzQow1qN1FqWKug+30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or6tTk/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or6tTk/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF239C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783646313;
	bh=/S0t9WwMfuiA3xPj5R4pGkBrGeIKa8Lzfk128NES3oo=;
	h=To:Subject:From:Date:From;
	b=Or6tTk/Tpg9iQNASXw+36SLY0jlNI4eM6e0Kt0b/5M3WRw97gA9xqNpGQdV1QxxMR
	 n4EWAc4i4zQRpPmlIZkoxW9zPfp+spItKucB5Ygois6qTSFL9v96StvmQzge16XOp4
	 RS1YyTDktvo8xdTp7pJIbKv3RVgjaoS3tvT5BfnIsoDnlwPebxOptCsYCM4WmwUgFD
	 qnPq210uB7Ju2N1jdIatE/p6Nq38zuge07TVV7rrK6m3amglCZcVe+zAzy9d4fnhBj
	 /QfsRgGARCZmuSKa5Twt5E+/E58yt/rXBuID69NDE6lyzzjPV9WUjE3opKlE5lgo3t
	 h8X2hZyirxx+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB448C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364631368.17655.8188692665694500521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40da0ef4c4a593ad8f0d231d3d61fec8b62703170225fbbfe3010c0855005383
Date: Fri, 10 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783646313
