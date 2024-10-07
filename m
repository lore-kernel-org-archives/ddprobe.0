Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD69E574
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728269754; cv=none; b=kM3qnbmA1kGGLPh6FrC1R0CI3KCvJRHc/68B7UlLwNahuf14QDV7wCsaGz1vmZV0rUcIlR035SHM/eAF5Wg4IHmuupmeIlm7ddE6u4oEWhFiIN+BaU5r0U2/hcpvf/i1Wf6bQh5IpZaF4GtHyHJn4ORZqSFzzFpkc/BiRAMeKIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728269754; c=relaxed/simple;
	bh=W2umGI2ODUjQ8uWnnMsvX6729UN/S/BuESwo8eittsY=;
	h=To:Subject:From:Message-Id:Date; b=m2t3lAXCE5Fyxpxru+ucrHo9Ft9AK3gZLnA/oRES930zxpcNJhAaiS3WuI98ystsBopdiLVCdplxuQX9tbgbt9SC6UjQRmvDiyjRWGwSlBzFKeTLwbKG6lz2GrbSQSq6+baYMhUu+niwPYihi+h++VvD371P3xXBGx/EiyDcW64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrvTkfZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrvTkfZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEB6C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728269753;
	bh=W2umGI2ODUjQ8uWnnMsvX6729UN/S/BuESwo8eittsY=;
	h=To:Subject:From:Date:From;
	b=ZrvTkfZKthXkup/u94Uuxakqa2TuUv+ayqpx9yn8cxRCuoYYTHkIHamHQxXrkR2b2
	 BIbZt3/HnzLlPTNl8gjHubypoeYY0N5/lnhGSNOHaBYd08Cnpzv+t2L78wMFKPX+Pl
	 CwWPozvyQfZZ22Vg5nhjsqoye2y+bCN9KmAlM6nDG5WzBpx6DEvdnLswcctesFwgol
	 f6CzixSONloCaTcOhbSvjQnqd3S8+FKzppAP05uk8AdAtst8FylOJ41ILvzyyD+8Fi
	 HdZ8rS+YOrV4+QoMt1OJO/lcWbygsfihFeGY2HIII4QccmcIWxKmKD6o5Qq6P0BYkY
	 zEBrQ6SMkq62A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982D7CFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826975360.21562.6357363244897922046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86da05f6a1fcac396ec22047c978a9ebe1f1067e94a732f80cc51eca8e1b3952
Date: Mon, 07 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728269753
