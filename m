Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555C1206046
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731525954; cv=none; b=UEKWP01t02EwLKfnp59AeRhJTgguWasdcy8Z23BfPM/HC1veUdd36dARDdl1cnFlBNoPHF9CB9g7infuYp5kbq58QfgONLw+tg5gBDO6p3vK57fK3jIZVHW+fPU1nxL4NF48pbQVV0Sr7Q4mkXVY7faQHlot5zh0GoNf2HHTQ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731525954; c=relaxed/simple;
	bh=xAQhOA+IAgtqAXtNVnvTwrSylltDimfcjgSjSGd5/9c=;
	h=To:Subject:From:Message-Id:Date; b=Uk5KEE2ZRUf1eXn7f0PGkcXILWjN1vdr5b//BrFCLqNNGs2lTm22KaX9YI/QPOq99qwvKVjPW29sh1SxQRuwVUxvkaIl3c+ixcXWoF9TtrUQelRxkLKqhbuzCZCYN1F0F2ma/qpRKXkJ0+qkYdxGppPLJPEARdHAK0LdZXyO9DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJ5alYFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJ5alYFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B5FC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731525953;
	bh=xAQhOA+IAgtqAXtNVnvTwrSylltDimfcjgSjSGd5/9c=;
	h=To:Subject:From:Date:From;
	b=OJ5alYFuQqRXfxhQ84epWyvGiynZgJAfh9lWmBJrVt366d8XVaFPqz/Mj+9jN9duk
	 kJi3VLtCL5TtODn8nmz+c5EBT0WKBtToCrH1QrUHnxeqLWhixBT0IZziHwdNMgAKME
	 ZAJkHHSBjXUHnu4XTUD+ww8JWYfTmVDXNOR8viDdhFgsCZfwtQ2RkLxQRcY0sv9ofZ
	 BAxK/VGzJ/PcUUsCbPdoHtjvoUsbS6y/KGwcLbGfP4Bb5vcJV79cECshhRqaEtl/vL
	 gZfk2yItmX/jsfTgXVCvgFRl4ApE6bosWMDQzi2JDE35VyHdumBkkubnCO3M7AEKHv
	 eHEbFAYPrO2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC7DD637A8
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173152595362.25708.18167572875053777569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282f88fb65e09b3932c7b7922c98fb38a46a54fb71d2af65ec423689bb3cb4a4
Date: Wed, 13 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731525953
