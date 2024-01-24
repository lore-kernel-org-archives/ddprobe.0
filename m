Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A6418E00
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706090297; cv=none; b=paNrfOxNq3auBnXWjziDoaq4Lenr31u+vV1FI9Gg77lntcZSZW8lDxSejJ0khNy4vDUzi2EIovBatq+y9iIHzpshocIg9sMIokWgC4gwGdaF5crVfRaoSiNAkckLQBoTGxpaaE5ZbnIkpLSH1pOkujB65G4b8w3Kv54b81RrVQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706090297; c=relaxed/simple;
	bh=Edn/Ghtu3F8x6Wy+SGfIGFKOCbfNiFELpffo+RW2R8E=;
	h=To:Subject:From:Message-Id:Date; b=Mdmxr7d5OibnLgqaH5/ZiIriYPAH/hJGRvZYroSCN2s1QJfSne6133vWkZYrH2WbQaAY/LV4xA17z79cyRT4f5NoeULPXZckoeBA6I8N5CvXLkBpgeF5fkvatXUxfPEmYohun7MFXkwt8WciN8sSLFd3k0i0cRjEQ0DMX3MAhIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n42i80LC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n42i80LC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7606CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706090296;
	bh=Edn/Ghtu3F8x6Wy+SGfIGFKOCbfNiFELpffo+RW2R8E=;
	h=To:Subject:From:Date:From;
	b=n42i80LCvEnmeHiamYvaDzeTRxo1+FrlZZLxVl4cxVSX9fiOSrMU/m7RPrOTaBcnq
	 qy+Ahww5W0rfTjY+ecu6vtoQXWEM8tp18ss8P9sIP6tDpe8+1OKohw9m3/xTYu4jEd
	 kCz+i78q9ydJ4q2jmoDDl0Vbq+/mdlTQd6nkg1FSr6+pviXOoEkpKh77OVkB//gK5l
	 +3XskdRSCAgQfvdOHAWJNWhZQay0DDUlxfYLMNv+W2mrs1nP0JI3XpocwgMp3w7Dyl
	 a865S+yFffZIVeokclq7froH4hD4Ih/iPAEeQHZSvyDwSpXj3FyFDhhBK25qff3L0o
	 BLmG393rQR15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3D5C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170609029637.10731.14376386948391540374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64edb1cc4491c1d3d71f30dd21e0ed1a10492b38441520fe98d059e30ae1b756
Date: Wed, 24 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706090296
