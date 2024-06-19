Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4742F15746A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718823563; cv=none; b=aZSg7PBCt0hCX7+bs6OcPGMJ2C/0aLhclEKzzWxudMPe3IbCdczVC39TAoXSn5u9HALxnWKSV2pZu/JDZ+GFycTH1KN1fjmvZrevgc6jSFk8dUGw3IOe2Yrw+h2/p49U84y9bOXovGbRAa5kpXscD4A3HanRGeiNvwgQP/1wxpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718823563; c=relaxed/simple;
	bh=tU3Dy376DnoQ6LYfAZbnsr5EfhBon8afSV6bCT0NZZs=;
	h=To:Subject:From:Message-Id:Date; b=tJzr4eMboYZfrCh5gb7xOrtx7WHbbdKAr1UJWeWpsKxyz0KVOeZk/5KG+amAdJ9bw+8nZqC7JZyj+oq4J+dsdHWOKn+50CpTSrz9H3xVtgF3WMo+JWOpTFNhvhK+2SvNTrHy9ridFdLX32o6IRMe0lq7N61Mj0VPV2g+CDMHO88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtzAHz8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtzAHz8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E030FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718823562;
	bh=tU3Dy376DnoQ6LYfAZbnsr5EfhBon8afSV6bCT0NZZs=;
	h=To:Subject:From:Date:From;
	b=AtzAHz8JDrXvAAbKR4sRDcbHq8xsaZA3qxLKvXUsZ3Zkl2Gi3W8PM+ARSLVam0pY/
	 nxM16J4IE+KX7Rhk97lBf4+fn9nZbjm+Ho1q5/JNtpkj0AclVvVy6WEJKZgxbzbEXV
	 4PV750q1qQnIGEEg3k8dxR3MfeEoQGf6Cp6lNAcpSN6lzvJ/h76oasny1R1qjOqQYA
	 oq2QVm0/N9pfweLVHraWbH4aK/tge+eXfu5Pd/6Y5VYoXmsdBdZCqce8x6qYv62dfo
	 LwNOv80/7XspSJeQpoebhu59wAkGdkKK8/2CA4+XrHXBf/qUZlptJ0sk6llYunDILS
	 CCeK/0sTYCRyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C092BC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882356277.10906.12083777280373451361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b306a2b3238a7ed20aaf5cf5e78986413b3396288bc895da5c6eb085abf0bc6e
Date: Wed, 19 Jun 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718823562
