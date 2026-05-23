Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DAD19343E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779541354; cv=none; b=KrKWhmpNw65Tq+rt9vWZIuUV7RFUqFihi3nAgwD6xhvlNKRTIvgUS9mp+Vpk/R8o2orVQnXx2jJBIFt2QhnukHgeWqRAPoqmzZtE0yGnb+1DCGmR42utsPDEixdDDvHwAsdEcXTAkeQx6/+Eoc3xDW7zvoS16hcTEhtUK31K7FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779541354; c=relaxed/simple;
	bh=7s+g+cEMJdTQBrJhmagf5zENtGWonRaMJx5mY/+AeR0=;
	h=To:Subject:From:Message-Id:Date; b=krqZeP+Huyysv+urfSjzERVDb+YXrOihKQdFEBMtSR5uIs1xXKv+1MsHFsjlM0RpVegw9ObeNIbxSxSSb+uGC16s6MIszASxiUyNohjAqkN/SAoNDEteVV3+n7/YXfCyjq4D3jI4HSBQo3GP4kWRO2clSsrr30py8fZJ2s76QlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHmsAIn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHmsAIn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75EEC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779541353;
	bh=7s+g+cEMJdTQBrJhmagf5zENtGWonRaMJx5mY/+AeR0=;
	h=To:Subject:From:Date:From;
	b=cHmsAIn/L7aLnnOcigM/kX+qZwZSZOvWcfU1Oqh/oznU3QMWNkYzdECchS3af9hJx
	 dVDEU5KwpgG7xyBxqo1p+UfDuohFdePj74wm2ar55dJUwiEXVIapS0q8Rz/5+QNRyN
	 evAH6ASl/HhJa3V4SAAjCFqquJTtqjfAoqqRbXj0zz+eESpMXr1Uo4o8SeMBepvtNy
	 NoVL5uBMLXR9C6Mkivo/8+r3/LMssQNWUMPt/SZfddLToFfEdW1HHw8ooEYtvl1iTl
	 a1QpTFQEhGtoUZNrsha0IQoF4n52MsJreykeYh8BjYyqUxbJnjkzBZYgfzafgPwG4y
	 Q1G1pPP+Air6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD8CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 13:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177954135368.13815.14837239457789453438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5878457a3c842e88aa68ff46108b8135c0d08bbc1856bb61bab26518faa3a62c
Date: Sat, 23 May 2026 13:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779541353
