Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438132C9D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738178754; cv=none; b=TqxZIeU9eI74gzZUImZsPe5kHotWRA41eHBfhtZKiqDvbJpaRCO6XlKTj1a0u9ZXscQI2FgGSIdKyD33V/0YidYXjEnSIiNgsDWXYC3BdIB+7cfKJh/mylvUCN1wqkct+5kQ4VdKDGrIX7JVxgUV5oIuvZtOfDnS3YesmoRQi98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738178754; c=relaxed/simple;
	bh=MWEv3myvCg9kLsLePZAK2ooXq4M7sq7l23HXlIlVsE4=;
	h=To:Subject:From:Message-Id:Date; b=ueY5OUcBbB0K1Tf+KASCM/bqr4hKdmwNbOWN+hHo41gZCMG4JjD3vLuvPodbrzdeMZHMJPuT56ct5pSC9feal/CXXpWs6l/nFqU8Nm1a/BCh4UljEVxIfPIOB51g1OnrkD3PBVSYJ80G9zif3vW/tCm+AwcCzOwUfY3x3P4/eEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/VPZEpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/VPZEpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1DDC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738178753;
	bh=MWEv3myvCg9kLsLePZAK2ooXq4M7sq7l23HXlIlVsE4=;
	h=To:Subject:From:Date:From;
	b=s/VPZEpqJC04OBhakSLUyfSYs1xTSNbaTS6CjVvJCgondynZaT6+Wj+yGR/9ahW1g
	 XahrpwVg3bg3xf7VjXUABucswv1hMsCkbH2Ydh9d1oozetUyNnzftBXn6sYG9KVewu
	 rariGgPbF0gfL9coztpBsTsV80liYdpc3LHRW7BNVh+Tx3nL70/9gD45tawyB3aioE
	 YDrrODmN6YUEJR18MY6IAudglRNx8m8zSr5g5PRZ+8KywWlRpdtxCgPi/B5ZlMx5ip
	 e0ainY5vcUKVDdmmsQqDT/795R0Y4Gpgyw8xi8eXtmjzR8QrMs+EwELFc8M35b8NtZ
	 fmTLt5ZcDJvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9F5C0218F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173817875363.25185.7100541454547790343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f758766c5fbeddbc9cc981b7ac60247d876fb095e823e1d1c013384f41a6cf5b
Date: Wed, 29 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738178753
