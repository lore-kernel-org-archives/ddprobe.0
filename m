Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1198F54
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749262194; cv=none; b=HlBTJ47zoPwgPDsvsoodox83ixDwc3D8SoKXR7xMoBdQ1e/PN4VcQutuZG1en9B33GaNDDlRmWsrWtYKIcbfzEQX3p2rodPTgV/byxbzn+OGbKmX/fcolbA/nHLZ3ivO0XPagPB46wZku6HqcDTAw4gXgzmQ1KHlbAEYO/diGa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749262194; c=relaxed/simple;
	bh=Ow03tIiMJq93jq/jiMHFGVRqPsZblZIu4RCbOZS8Ihc=;
	h=To:Subject:From:Message-Id:Date; b=nnj/80Xoc5JFb4wLeyW7MPfEauU7votW3p2IM9SAyslFRp/SLRBjTcdruq7D+uEwvvBAuzphxgpftZj7/u8HRowI7mPsPMRk1n5xeobVY3wjjBQuiOROVFDTopa70VVFJzWHo7t7awOotjsVkiqcVb669xVZKXNHpsaJrFgK2wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePGLWxW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePGLWxW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89AFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749262193;
	bh=Ow03tIiMJq93jq/jiMHFGVRqPsZblZIu4RCbOZS8Ihc=;
	h=To:Subject:From:Date:From;
	b=ePGLWxW4tEPrN0GlEanjgwHmqhyrEgVV/7ZFwgs6E//a8tS65rI8bYdMQcb7MYMHs
	 Ulzux+TEGXi2XYhK0/G3A79RuqSRmqX4mz1424rqXQn8i+4UZtTSixCnNEX/H8Paa2
	 eNb32xFbQBub4TrqlhInfgnjsMCtVvSLDMbilIuDNrxU2iGlZIRz5zKSSD3IRd6as0
	 JnT3Pvi2pKzKwt9CXPlNo2FWoqGHhvkg1NKF7NbgZsS1NK34MfhwhaFEN/SBFjFwZY
	 YN2IcI/denBmH0VMxUcNprv+EXwd35sqfoRXvSOgqbsnoq3T0AqDwuW2SveDXSBJll
	 uRS/nc+Le6uwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950DDC5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926219357.32301.2973486739642630321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e29b5a5c4d013d083afcdf16c91df610b69923a4c755ef923c095aeadb11f48
Date: Sat, 07 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749262193
