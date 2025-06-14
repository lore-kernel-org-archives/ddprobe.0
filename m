Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F1C2CA9
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749863994; cv=none; b=MwJuO0fTlcJ+UWjSt+OBM5ZiIUBGgg9HxxdiSOKZ50HIPpsCPu8K9WFGZfiSgWGsZZAnUuIUWjg/cVrzVZFTfRMPevgVt7ddMnA45Y/C7tnfPNuL5nacdOl5y6og/YVpveeU9f61uf4hNdPk5gKLd2IalsY7zKMmLe06aR/pPIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749863994; c=relaxed/simple;
	bh=Lle5ON7W86TlB667Ht6JYELclA6Jz5aDrrvw+q5eAoo=;
	h=To:Subject:From:Message-Id:Date; b=BtiuXIcBn1i5LmRt86XyPYk1M3HVG2dJ/QYBxpI/9x2bHBpUf2okA/IN/Csdw5VVdwscy1/br7ZC4cg2i/nREoMWBcw9c7f487lWy5BSxg1mgaSgQJWRmUKk0/b94ofEdtz9Y77OemZBT94b0pAJlbb8j3UK6C911KeDciq8OqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcJefURe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcJefURe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FE9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749863993;
	bh=Lle5ON7W86TlB667Ht6JYELclA6Jz5aDrrvw+q5eAoo=;
	h=To:Subject:From:Date:From;
	b=VcJefURefOwF1RlvzVe4/ak1Sb0AUSeaXhFLqwn9OOTx8Aam+nXAvn1eymA4DtsSx
	 u6xA7nH0KCNkHMgL4dvEpe85WdpH8B/Gt+uqM88mUlgaWB0IMuBpi7l8ht3IVlyAQ7
	 Yr0zBXDTbe+CJ1fgQib/tQvu8C7j2vxYqCg04+BnkAmA46VynkS7m8vSdYpjbDswug
	 HZnqc/QTFUPKVMsGEYDCi0DMNVXLl0IaV+wiC+fIu1SteEOfzIHT4TcWydS3qI2wO7
	 8EfqA/SmcAFU6OEzt/D1DeuTEXNy1V8wTZ9wE5ZJVnYxrENlL3FwqLVxLFSsDAZwkr
	 cOFd8XEkGWSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F8C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986399357.17627.14314821950251316271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d68696098e6408b3a81be7e9e2a11892f96b39148c5c41db4f471721f03de2c
Date: Sat, 14 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749863993
