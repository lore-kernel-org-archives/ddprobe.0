Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADAD1DF26E
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781286394; cv=none; b=RrbcZvc6HF6l+MZC8n96IKKgTvehdMshez0WVc7TGDgNP6N34fDnqB62hMcHEeIr5QJUBGkOMuj0lzzTKg+jo3YusvJsGaNCVrMBWkphf4YfyaEPtlKR+nqaVuCileTqEAFHxqIwcN1Tah8G6yFqjVa2exHV213nnhv5M/2KCMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781286394; c=relaxed/simple;
	bh=gFX4cUuzOqdB2u/bX1A18gemCqgm43I95lM8OiDxHDs=;
	h=To:Subject:From:Message-Id:Date; b=uNXssYIUatxiWrVFD8QoHETR+c+89GzlA19MptJjvwINetfhpuwjLiXZ2IvfjEfaFjel62TkcnZqxauloiAhU1FdcWNmfB4WK3NWR/9TVkSXLR/GHRViOH13WnPg8y1lsaAbIdO/vHG9ngw4VerJRfOMs/j6P3NIbdMI2apdhMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noD2orwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noD2orwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EB6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781286393;
	bh=gFX4cUuzOqdB2u/bX1A18gemCqgm43I95lM8OiDxHDs=;
	h=To:Subject:From:Date:From;
	b=noD2orwCRxT1MXYRAXV5eYpZ7ap2Amy978n2Af1E4aRYEZBLOv5xmea+2kAsqLEd0
	 2JZkY3HF0sYqllLJgxVojCdAvtU5JBcceNEUIafu/3mlD/FqMzV3E2MuAeDEGWAkea
	 pnClMqIQ5YFIDPqtnIX/Yat3/Rg4Gc3Yr/jeUTsCe2Vsv3raSaM4RpKelzI9tAKRQP
	 fWk0ki5WRY1TTw3b/1N+sHXMT4mJkE2ygEmEwrDpYQRawWDhFi8kHcin2nSl8uuXL4
	 CsFTgWEFq17RzGfdlfRBCM2pBNxSGrACmJqM8teKk+7WHs8TWhQNY2wjzLj66eN/lo
	 cWH6k0MM6qBEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE79ECD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128639370.7891.15550279842611602845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455f11e9cf9b9c40bf49b425a08ab188becc2509310b6769a72063961c74d87c
Date: Fri, 12 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781286393
