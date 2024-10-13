Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D09231C8D
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728792954; cv=none; b=hjK4J4voRSwGyMaUHhBF4MqWbFFiPKceBfH4UZbtemYSlI+mtHBpXyCquuuZYyqYGtNp8V1zL2L7zD8r71ggw7eUBbW90dq4W1Cy9vAJnC1EwF9y8+Cvj/laVK0RFrp9vhW90Wa5Y89OvZAPwVbq0nxQVQ6lwqGKKDzgPzgMd4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728792954; c=relaxed/simple;
	bh=dg83R3Ka1oue/PtK2Iv+Gnw20E0FMLXp3hgHUy9KrSY=;
	h=To:Subject:From:Message-Id:Date; b=f2pNRV3/QKNDyLzMT4p4ouE02sFIZ4TzRcZxzlZnld/XfDmlKfBkATHSAtZLE3sDE3S/r3qx2VvSZ1o67z8VfSb9e4WVi1BKOVAsL1O8IjRNM3mztOAUdLRIKU2Y8Mqv59XjtOPkBj3CHJUFCtE2YHMuu6eSP4uUapqAD3kVow0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz7Fzbby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz7Fzbby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3449C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728792953;
	bh=dg83R3Ka1oue/PtK2Iv+Gnw20E0FMLXp3hgHUy9KrSY=;
	h=To:Subject:From:Date:From;
	b=sz7Fzbby6Gl7e81Xrbc+b/IKau/PqsvckW8zmnMR4IxsqTjbJiSDv7yth/N8bAhnR
	 7gOVG4o24DDVg1peAY3VPcCpfxoWY6NSZfh+d4Zw30ZUc1z2XuT5qOJnficfj+SyBq
	 ycVuQiYzLU8956gD2R+jrkvpboyRdZQWfqGBiYBAGe3v0nOuOiZpBHgVcuY+/qpsHr
	 kZwXrnh6kO2Eo4va0c1dts1UJPYLUh1WQNM1OlG1pX6bW2rpaFoO/bH+g3HjlviDsJ
	 NOxfsuxJXwJtKMQkYAOfaYTbZj4FedR9p21hApDrXrwNf7vRk0yqef4Rh0g/YME7FF
	 fT5xXG6eoKEpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD35CF2592
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172879295360.5952.11282364492795993196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191f40e30b914c6dd016e5a54d6156dd0f3f20906119aac1491b69960d6c10bd
Date: Sun, 13 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728792953
