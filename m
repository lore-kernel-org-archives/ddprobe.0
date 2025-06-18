Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DBE2DFF18
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750258795; cv=none; b=iulyooBfWnqm/8AtiiYX0CiAxqC4yNMWzjVbZusXVHGKUhqwU5ufDatxq07Lh3yjWsq1bjGfEwTy/3UADAVzsh7REpENosOCoaqrRvs6c5QhKREwyMKvYlZOFEPcAM1PRuPCAgTtURrPxeerUmSFYVNs5qBoZgjPkbmzTAQcOFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750258795; c=relaxed/simple;
	bh=mkQX94Xd0Zr6Ov2Al4SS7YjHLAxp/+0XOWIk8E+A2jc=;
	h=To:Subject:From:Message-Id:Date; b=HZiuxW1giaPRPNThIwKUIZVpjQ817XvpDmbCqxrhhbLW0ZmukEbXiId/rhtGLvs6rFpsllrwBeD0IHHDkWjfd+JHPaOj337CtQL7c8pyalyiokyQOVAjKrXRmxgQkFjR3O1HAxVilRdxSjPObkEXcja9ytYnScJuMbpoGWVOBRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeL7ZzIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeL7ZzIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A975AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750258793;
	bh=mkQX94Xd0Zr6Ov2Al4SS7YjHLAxp/+0XOWIk8E+A2jc=;
	h=To:Subject:From:Date:From;
	b=NeL7ZzIgkI44aTwP9JPc9duCAqP/QRkQUtECtmmWAXfAY52RxJegBiw7nzfj1UYov
	 hRCPhMl94n541Nd2SPVuixaKhtNUYXvioR70c38ayMSnRhk2AsMQy4WfDRJ/lxyw4p
	 cDxNVxIer3SCLYS/yMQr3ki3jWlcptwGYufXuBceNnNNOm2mRLsgXcOBOzZelaLQKe
	 tjDjdW2nZUVmMAMKcoPwxTTkxow+CJzAoPzIpFsIWJuulaty6MO1oYAki8nU6l5CJB
	 /PvfdoOr3NWgX0WhKvR9OHrEB7wptcM9kbmUCyiNWNJCUHLdLVMIPMVYk8OfS9taVF
	 AffwmyLuCtAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E4AC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025879358.1020.17130797551701661680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e811de17657b480849e66801317e8973f17ddba5939290258797d913d5027c3
Date: Wed, 18 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750258793
