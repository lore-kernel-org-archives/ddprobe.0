Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AF5262D0B
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764339774; cv=none; b=IUir1T0OkHmwfkG6qljetan1AlKGeWTFMk+W+hwAOiIsnkBgCW3wTdhO62fWWjSV9Fujm/MUTCOw4eDIgP2c2lUi4rY9c1SyHkEj1fly6YVY3D2LaZEuzBCGhmyt2bJ/nnOBQwn+2mXzj8OkjGCndryItIV2OAUa18RUzpYdOzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764339774; c=relaxed/simple;
	bh=5BkNL4oSwQtBxM69i0Z6vY/zgGwwH5VmEzAtQ6wLo/w=;
	h=To:Subject:From:Message-Id:Date; b=WoV1gBRoA/ifq1SYvdy1a6qpQwzoec0mIh5FwGlMTdJI49loxwrMofPwytssj4sUHPxiEaaTnciAne6CRqOvoVKmgKKJuwOx99my7/JohTSV3NqdVJyG1tpW+s7hdtkEqHwMqt6ik9gb9/xGUVLyHdwxbrXmDuFkvZTTD2CgFnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ntbx/EyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ntbx/EyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADFAC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764339773;
	bh=5BkNL4oSwQtBxM69i0Z6vY/zgGwwH5VmEzAtQ6wLo/w=;
	h=To:Subject:From:Date:From;
	b=Ntbx/EyUV0+IrqiYzlAOdntSaIEeK+2d/TvuIHFrDdB1iULLgubFw1PNKA1rtUHMS
	 XnkdVaHF8CgX5dwGM1FAMupUuUhy6n1Whjy5ELRCIB//5x6VMltYlDVmcJ6CHoe0U9
	 dIMl2N9r9p4cqdeWzXqMIVsUfGPah+VaQo9NQeXnIF+pAM9DpxI7qXJwod7bd7E0X0
	 07BJAKD9DddoCrX3lu4/yZ+77qGQlb2H2J7on3vYgquQB2pwkVhhbw4znTYZf5IeOA
	 iObSIbla6tccVncqow0jg6+sDJIFfZS3AgceXzeGe2gmZlK59OZc4/8UUgglDPMKtF
	 NewpzjBL3J2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6ED116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433977359.8679.14790144329806581106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4969ffc1f49fcee19d5d30d9a16b54eddd11729e32fcb7556afe02d824e5338c
Date: Fri, 28 Nov 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764339773
