Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76C8223301
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752689393; cv=none; b=UFTUNtNKBPXYXG2ax9ihP8xsfXLiZQk7Hq7ojXPsn81HNTyWTL5VdrMOmq15up/c0TP2DWYVVxHrXP3NLHTp0Z+6Hu7ws68NpDLZXA/v+gOnmmATYMrLZRnPS+FftNblWP+XlHh4H/wqjaAIDbxWtlOouFZGS2IlNgzc3udkQWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752689393; c=relaxed/simple;
	bh=dh9cxR4iTUKz/7SY4x5R0FltYNGoXNW3c2WaTNeik6g=;
	h=To:Subject:From:Message-Id:Date; b=Wymlva/bYRKwFrM9Yrc7Pyo6KnV0AedHYp9fVkd++S/gxgQTFYZZClnCDrxGAjLnhX13knHMbL1UOcAM6+zW22OobV22Bji1gYpIRQ5Gmr/B8LeH6pejh/jcbMFxkfN6eQIFsaFSeSjVYJ9Gf9BJv50dvQ3uQrHoekv2FtTteqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcEznA54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcEznA54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC963C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752689393;
	bh=dh9cxR4iTUKz/7SY4x5R0FltYNGoXNW3c2WaTNeik6g=;
	h=To:Subject:From:Date:From;
	b=QcEznA54HYgA4V8cvsVr6lt/nN9UFgF6ecSPa/79NrEkIpABluyVMNJNQ+L3hjey+
	 apfxXCCGHDS5qo2RaPhBKfUEDnD7fWgmbXLMz0OD+EgH2PYrm8LfbNxSoo+yak/JsZ
	 2Ga03lTn7012UROJ9fjLBbuPh6VKHwP97Q73UDvrBINDprV8z0t1ig50x5ecO5S+kJ
	 ZvsmGX7zAgr8eEmKou6BcT/WSHFOB+p4moRZkF7bv8ooI8aJJymdZuVTcA0YLncyRv
	 /afuLKa98t3Hbtw00ERHdWawH8wXkZo67w0meKB/NiqeJL5fW70ZIK8i1lhsULjgjB
	 08pmY4W/Zk6qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98267C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268939361.10766.12357084438341905037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37459e209b42957e28dc3fc0f012e450cb8bae5a06faafec3c803cb3463d747
Date: Wed, 16 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752689393
