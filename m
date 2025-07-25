Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1904B1D555
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753484994; cv=none; b=RHb/ZyBBiK7vLAbgqxuOhtgKdjA3fSldlkAvjjAmT6uVjPtvycEnQq0yaBPcJM5LsJF0HtmdA+2rNDw0Ohcs5/w2wpY42y5GLHAw5IHainWBMPfawuoVHpXK7Y7mp7lzUaFnsQHGJh+Br2HwMQjTouX4vP6MIif1nMVlIbcof/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753484994; c=relaxed/simple;
	bh=e/YpqEABzlw51c9v6UDy0QtXvEY8UXOIVcCOTLZ3Q5w=;
	h=To:Subject:From:Message-Id:Date; b=MyfpW+3oPUf2ube1C5g4gz60CBZ1L5LnYYgeS0flOTG4+EbsNIhimSKCvF0UmmeCHuMdju4NJ+vdkXZGlvDoEGVAZwhmkI4PJg4ajeZ6891xSUNk0MkZ6yksGDWYv3a+TLs09eDl8i2hpcWzatwZJEKwKxlraFrz4TKGRNXNj9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxYqBj0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxYqBj0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C90C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753484993;
	bh=e/YpqEABzlw51c9v6UDy0QtXvEY8UXOIVcCOTLZ3Q5w=;
	h=To:Subject:From:Date:From;
	b=IxYqBj0D5qBzAQ9iW1ke/hbyZRrxXZLBrplvUrL/9JY7LD2LhCUX9IOZhv3ZS0JNl
	 3kUP5lc0/kC74FFAFL18LZ7+3Q+VMugr4cnvY2bA2Kx3flhA84tCXvx2RLZwqfq7Vo
	 TI1XCfCKzEVBIsELbkprw0SeUlqkgVuJE5tzIcPKqhhIAHvm+5ssDi9eKJHMWgFGsl
	 PrHQJIZPbCi4ollS3CVbbBPT8P49O0yYO0aytU95ihuXYyE7I+/eZvYkO25CA4+qah
	 GiEytVzaOq2cZHP9IuyXHFGG2rN+fT7ePMTvZZwBAYhxcj8Xbjug+Gmd1HdaNfNfoe
	 TSoDnW/3c5Jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E74C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348499357.11373.12221180722467397427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc4208023a2bd2f80443400a56ede2b8e8bf16dd3582031ce732c44b7a710cc
Date: Fri, 25 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753484993
