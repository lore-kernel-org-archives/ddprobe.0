Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DE31D7E41
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777781854; cv=none; b=AqXsvOl5MwtSU0lLnz33CRIlc+rpIZv48cFqzT2/HuKX5dJJUSQLo/Z2DkhZo+RPNlKxcBdElRZjGnFyydvUwBQfX0s+W4YxoLB1B10coq0+8rROkQnHUleLUgw7xLA23ouKh3KnuvunMU47nwMbdJZwZnlnAkxFL2BRF60PCpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777781854; c=relaxed/simple;
	bh=s6/p8tmcycI0JGTh5fkdrHyp2n4ccPrNMHQ5hGZeqKQ=;
	h=To:Subject:From:Message-Id:Date; b=a7PQ5CttYX6efJ/3DRYSP7GWf3mUJaqYeHg37fDPJ+z4XBC8tK3i4gect0PAFNi3kmFowEx2UOjuIoKzdxrL6OTMiduX/rMcCKHuZWtE9BodiW6Gr4qC36ao95yLeez90LYqb9duIEJeiKbvF6QROr3W4M8fj6yYQHitIVpXPqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/6ihhj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/6ihhj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C529EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777781853;
	bh=s6/p8tmcycI0JGTh5fkdrHyp2n4ccPrNMHQ5hGZeqKQ=;
	h=To:Subject:From:Date:From;
	b=g/6ihhj3CGm3D9/eBWRgb5VkVeleS2A2UlmdLz2lmWolQ7ZUkUPzhG1wyZqrXQzNe
	 aIA3KFuHuxAtP2P00XuAz+//4Smo/SDCwlALSiXBas6BtelC8L52bcXkWThjkYeKFj
	 4DZ9CGLmF8WXBmx3m6tHdp/YWK/DPH0OSdciUyTgrHGkSvjTQkYXHhSkxS4Wgr+Wbz
	 Qo80vb/j7oktBZgy20nhMAxIEoDEsxeaXiqrINW9pvHke3WpdQIuJIzl7Nh6lTRDRR
	 fv+/NgB8wMfLIkSu7iR8NI9HIaWFDEfDS65RqE+OhZPea5os9v7ikxTOmOq7dOUbdh
	 h3io+YhdWMBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D59FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778185369.3229.15999605488712469895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc030b5cd085337301912390d95d835396d61e37ba7c0be6244da58c63c7092
Date: Sun, 03 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777781853
