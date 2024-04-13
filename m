Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E24533EE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712981963; cv=none; b=gXIcJdPml5x0OCSlExfCnR9+ciTiaVMU6Xjg2lgRUXIt+o/euPw64rUqiaDXGukz/FyiUVLlbMXh/UX1kEURfbY9nUxaG8PSn5DGYPSPPDfznnnvL18K+j41EI2wpgdJplkevBy4Q597muA7q/rVpmiQ8I2pap7Hr+Sl/qE/wwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712981963; c=relaxed/simple;
	bh=H4UnZfA2jyA6CIKmnQxT/1GBIgl+Q+llp/MyaeFvCKM=;
	h=To:Subject:From:Message-Id:Date; b=hjSIbg8QWMpEt8m1+oqOCedgNsaDuedxA/HB2e/mlUhfr23Kq2wCdqvCCtycmFGcyqbcsDDf3Yc7DT5PmbkTt6ffH2vVN9zyr4suLp+FscP5Aa65b1dEj/2Cl4SOQPS7FilrzEMehB1hn0fiyJYIRg0xdbG/qjCOlgTApFH08TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lkq/G8cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lkq/G8cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4DFC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712981962;
	bh=H4UnZfA2jyA6CIKmnQxT/1GBIgl+Q+llp/MyaeFvCKM=;
	h=To:Subject:From:Date:From;
	b=Lkq/G8cWCvTpCjHSOkyOw+3qlOHD7Pec39QCyEzw00RVVIq4/Zp5PO7JWSRtjypjw
	 jc1kSm/pZgtWlj37lMIwfBJqcCjACkUpHTG35kP4hxWAffjOJtVuux0omfV6hBgSUM
	 eWw1YarY4ESXggOs/1a0xZnmyZEAR5BQrlN3+igH0he0KxzueRPc7pPzhg7WaIgZs+
	 Urw5nlOnBvsxpfSQcz7J7ga5GCA7tri3F6/4qhEwSzgu2Lxdx4RlxOk+7Z4lEM96zN
	 d8GEmS+rOKVBAnw9IVY4zOpVRhJVOWeSdtXYPmJuGJ+j0ACHD+mL0aJV3irJJpMKZk
	 Qls0c2noV8S2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F6AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171298196276.21479.8290756369784578181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b1246cd9754a610c9128b74562ade8c4d5a491be6b726a3ef0b1e74fe87516
Date: Sat, 13 Apr 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712981962
