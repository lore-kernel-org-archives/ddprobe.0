Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ED4302068
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751407794; cv=none; b=lDH3MuLA79QvP7UwMSaeJdjUFdVC3HFwgOdyhD5tKjdczRptCx2Y8QQxAl9cvNVP5cr5LT7gmni3YVin1OlnZi8SDCvwsjbadWnniz13r+Ro67rBBf9j2MxDOnD9u3Ikzy3Sosuyl9Fvz2ChdT/J7Z3QpL2zeNjbBm23uPR882M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751407794; c=relaxed/simple;
	bh=QssnD1I79ff7kHvS1EnNxHmDEYLU+biqLcGcSNNa340=;
	h=To:Subject:From:Message-Id:Date; b=oIGO1oRcXkmH8HpGfSM1ilpCUH4hUf0CHlBcU2JMlXA7KT4RxQD2pBfcLGgYAVFIWB0Ccjxk/S+wbQq/iSgNcnw4XVbseHo5SEkTZzKnL9N4fXtJPAmFZTt8qzYfjWaba0lhhxFhcrVngzYPPVOFo8bvznXFiESVkmzyUe9VSMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xw+ezq6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xw+ezq6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751407793;
	bh=QssnD1I79ff7kHvS1EnNxHmDEYLU+biqLcGcSNNa340=;
	h=To:Subject:From:Date:From;
	b=Xw+ezq6NZ8LMSPoGGYtHmoElvoqr4JOeenbC2iA8lpH7N64DCUnRo4VA+LQwX7bCs
	 3QnovzLUV9CaVf5riflo/kt44N3gqgNFVHfJFKuPOD2f6pWQDO958KSqf7YVF3fqp+
	 p+7ioP9vhgWsHMiRHSYapRkvWrhN84SVhtsFHrDY5QlTsGTABlh0/cF+kVT63YKfBc
	 G4KZjih67tLJ1eJJg8HJ/Gk/FqrY+ARJtzp1oDj3eGN20gzQMWS5OMWI3xr8VR+oim
	 CP6IYfSz44mTgJBBFfINrlAJSi1ic+du5SHQNg6ZgA9izPe2ciRG2CFiR8xfEwV+yT
	 IPYaasAE5anbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91382C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140779358.12207.2525315584668096883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69ee507254b5bb896014b58794e3e566b68bddab1a66fa9d65c5fa84478bacf
Date: Tue, 01 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751407793
