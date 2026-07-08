Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402123B71BC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783477714; cv=none; b=Uaz6TnTGg6D0S5/bqEQkAwZfuawDCDFNo2SPn8RU+p2zwDWdf2vqZ99AD171wPDTiyfwqzIThusWBsAzseEi2AbtbG2NVgHIXTuEgav8jpC8eJGEg8DIfyP9n6N9K3+SdYrCYL/pJxb0RfaAI5G7pkk/hH/0MGjsAu5n6FWjHds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783477714; c=relaxed/simple;
	bh=RM5WrTvSHFOowvPu2IpmHP4ndSz/q55sC2feck3mSiE=;
	h=To:Subject:From:Message-Id:Date; b=JIOvPrgyU0I+nbQ3fnXFkitOFJSe5hQjVOGacRd1+48hAtddYkllPSizT/19smxxFpy1hy8Q++tZ5B3DR/IUGlZqG2k3zVmysemiwKMRIdgkaNc9noMxqXpiFsbDdt5HEquf3Od9IpL5Eh+AIBZm6r9DIgkOp8RZn0fiigfNDdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaHddGU6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaHddGU6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEF3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783477713;
	bh=RM5WrTvSHFOowvPu2IpmHP4ndSz/q55sC2feck3mSiE=;
	h=To:Subject:From:Date:From;
	b=LaHddGU6CqOtjKolKVGoZnfZyu9meqPLozV9bzwL1k75aXxVx8EN6oPwLd+aTFTMP
	 51WryAu4+HccLtHbPGNAWnIHe48pFXf7eKK7KK/VZ2hTGGFU0ZH5YNJ5gZxHEsULJg
	 XmKLaCwj/bWmXCrpcPZPOjL/rByc7QtM2DZWtRX3WtmCQRkxfoM/vrqi+GqjIsT3Bj
	 7FwWxo5Be6UDxxS6Lutp8p6Tgs8IIHdIIIntuSLZBPEFUS1Q2myWmaQfH5jx8U0uXC
	 RniwpegCYNqNZS+7RAO+iaC5UValwBGKpyWsTLOphFBe6H8yOUwh511QldB7Ws3ivW
	 FM3RiBw2QtM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC8C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347771368.14053.15500975780611576297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c8ceddfd7a522d1c8ba607ff18528a1c2c5469b0adb1e022f20fb5bcf2888a
Date: Wed, 08 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783477713
