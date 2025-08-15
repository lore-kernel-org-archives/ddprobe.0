Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2E018A6AE
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755291595; cv=none; b=nGPzyFh3kqcRWMf+wx9seK88xqOccQvbaXFeXBuagwlRIYsKaD2EH+60pB5uVNN2LF55NvDq6QGlLTYfUKINzGq08eE8+zhDvK2c2TCmuEk51eamF6mbZyh9UT4WrBvBsmrDeS/tg1icrgvH80EgXB5tpsg7/R463n/CDRq8BrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755291595; c=relaxed/simple;
	bh=3lrit7VTQ6mc9OyejUdjSa9Kd6dQHf6ZlZhd6qnelGg=;
	h=To:Subject:From:Message-Id:Date; b=DOHrMSAnDawz72n1CKF4Ov0YVcjG6OfPZmaYHmL85bnKt2UEu8SX1PmdaRutJqAb/d4MpGKdOz0WcL1D+Kmew47sCdYpvwTwGK9puh2i5Q8UK4dzDqePp2hbxmDc5V31cptjWjIkNML4HLLu0BkhoRp8mdsWiZwpZYiYlug1Opw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdOwgJdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdOwgJdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A9CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755291593;
	bh=3lrit7VTQ6mc9OyejUdjSa9Kd6dQHf6ZlZhd6qnelGg=;
	h=To:Subject:From:Date:From;
	b=cdOwgJdwuLjjMbGEHAP93STvSURIgrw666H+Y9tQ9vz6KSe1v6yvFiysPCqASMCZ3
	 OYET3afGEkxPjYbbJExi3h/RjAq/fnY+zzEHt0XOoHekG58d7+eA/sl2iLpJN64EtU
	 uYmOA8XscZY3Dc4OHjL0s605VG928vT1ArqEkw3MLv3BOujPfzzthQtr1V0xL0xM1u
	 hoXODOwl868bHVj+HaK3DnXda1UUN+4j1SBJIxmvispRy1MNhAp0RGiD9WAKJLuMdr
	 I+WWi/ewcQpVRWDLlTqyPRIiGEbP21G0q0zSeHkNQYsR80iL4JWMLd2+/Ma51td8s1
	 33gRBFPB6opqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC50CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175529159357.11402.4775958794331209823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a67d20be153e2cfb1d1f5e21b6289b39e15f9a2060cf02ff51a775417da4c5c
Date: Fri, 15 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755291593
