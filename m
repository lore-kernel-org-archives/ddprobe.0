Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3632E1FBEB7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735930554; cv=none; b=jHrFlMWmzgNeASlSc+V0PiA7oa+xy/UbBwpRv+prhnjKZy9IHzE1I1WacSvnP19tIeVhP23pPdkHF+lne8HuIJDDH0wyTPNVnTw9B0uT5H8s3qs26iDEFgtWkxc6nN4L5GD5ulZR5bDd6nM2UhSQI2psvyaFoWgrqHZ63St3EQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735930554; c=relaxed/simple;
	bh=yBPICarDxdm1YhBw7wMr5zKL6d5g2Yt6sOm4BaKXWAg=;
	h=To:Subject:From:Message-Id:Date; b=PyrfKXLilLND2ageVemOqU6UxSJG0qZ9gAu9g95nhKT3LoAXzD/X9HqS7caM7TjMI1PoWRUt+pgIOGBULXuTN9TKhGkV5s6+XfOvxtXx6SwVseCqlMVNHC2wYXjuy2VrshSc0BD1K2xR806fC3WtWcSVUW3x55I2OpS1FdZJTbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLjqi+p0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLjqi+p0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB1AC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735930553;
	bh=yBPICarDxdm1YhBw7wMr5zKL6d5g2Yt6sOm4BaKXWAg=;
	h=To:Subject:From:Date:From;
	b=KLjqi+p03s4Q2cr25HwxBs9GoycUTxRbdhPUEh2WYTbYiqHA4E1GWeZmBJmoAzZHA
	 cySe7pZM4HDyVMWUUQQTuDzhe6+5oLdPrEZEaTitgWL5xHMTgNJp2FNAxCt9Qay8/E
	 4jXOHO8zHVwC2gX6DY1UyblWue9TntDvMtkhhOTePrKiY/i9a2E6k3KKIHQx1HVaf/
	 O5qyCWti4Q4BmYo19SI8AoXXyDihPzYJeYsTZEDsrc7JOSuI1xRsZAKnod+wliQgLu
	 PwkSTTbJ20oXSxRN0DfU5WWNR8FHoabCeT9Vtc9mtsqigfpSf3CBOj7cOSHpxvKMnR
	 nbucqrx/TN9kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F18FE7718F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593055364.15965.2183775306429997625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565d9fc81295b1fa0d2d632f9f4d1354c719abba08a621b1367a86f7eb999300
Date: Fri, 03 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735930553
