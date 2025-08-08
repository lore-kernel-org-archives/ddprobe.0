Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0B77346F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754696993; cv=none; b=MCJT+HAEuF/MOjbK0O9xRVjhoc2I5gY8zOhvjdDMAaMxmRfG36gkHaq6DzCWDwCUNF8JdOgbPIGo3oFIHgdmWX/cTlVf+vHM8ckVO/JF2YHvPhlBi6aC1s4iu/fjqE0UMoEe27IkC2LhV61QCE2+kZG1bK8qIp5WwJK8HkD5QM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754696993; c=relaxed/simple;
	bh=IysBcKezpglX9Gdd0eqKdRBRRKhPLQ6Qbj/p/LdFgp0=;
	h=To:Subject:From:Message-Id:Date; b=Intme4iTXqZVZ4TA423ODANvuLjTeTG0b/OylzLGqdOc7dcb07ZkOvHRN5/a7Hji6E9cB2XJyhD1DuBtuz+fAj2OU+bx8fVDur7j3h0MdcJ5YiI3QGOcU26Lg7fiMX/HUQeXrykBnZ6MUV7Uh47x7azkXuzHSTBF6Lb5vDKfSTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DoQr+UMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DoQr+UMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F551C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754696993;
	bh=IysBcKezpglX9Gdd0eqKdRBRRKhPLQ6Qbj/p/LdFgp0=;
	h=To:Subject:From:Date:From;
	b=DoQr+UMknKjNy3MR6DQwrN2fu7DtecZCayoZt7TFdv2dnQdNLaVOFEeRGhoROUpX1
	 CetG1yieKpNqY8FDKFeSXRDqNJryf8znZtzXqcbBufEFiJdzQAmwA1V6neUp/Pgnnj
	 x+Kb9qIVKbepAR0opkEl70DH4hnDnIvejH2M565K34pwQCqocnA5pN1hy1zxSKjieo
	 2wepCY6zYvntVRmBs4EcbtNAq5EvJyye4iUpdNO1f+8oSHkF78KKkO4elYoArxK3tp
	 nhS8y1K4JnCw04zvhVO4hM38PYa1RSDlcBgZlDyUbAegInlvwuesP+9f8zBKDQoVat
	 NXHrUOQEDpiSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB3C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469699358.17372.15745232584922599023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e118424bc8c53f23dc33a5a15e8b331599164530d1e8ab5430c596f78c14a4
Date: Fri, 08 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754696993
