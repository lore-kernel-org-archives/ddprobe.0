Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA5C1EEA27
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746079193; cv=none; b=Wp6gTQnEjKXQzOLpDTTYaFCR6rdNjnuy8ZwW4SV0PIbVlsej2DGrm6XfZZbAWI0sQTE/RagJsuQuuZm7iYSyUPoOFfCXqE+FgFVnVDt0qJTvpZtGZC++DkgCECx0r4zg7LObXGX9nnBZLWh8cavaVxD7ZuNUCmiBt5at4n4nbl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746079193; c=relaxed/simple;
	bh=pR2dAgrmSRxAIydu2P8elXXj1GFiPN1YLpvgEIcca+U=;
	h=To:Subject:From:Message-Id:Date; b=ZmB67Rszk3A+AFbONS+zSDQeGyHxN7mcTO3QdFL1i9wGc+Li29+jmM5wjMkubbDyADIiV8EskFMEu+CtTaZ6oZVVjp/4g1A/Mkx+qubQ0zpoOdQXpSWut4NuUiplsmEZ9yIaNCyYmeBKiA6SIzCdd9XBsyLDVokLVjfpcYAkD6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2fQwdLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2fQwdLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE32C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746079193;
	bh=pR2dAgrmSRxAIydu2P8elXXj1GFiPN1YLpvgEIcca+U=;
	h=To:Subject:From:Date:From;
	b=T2fQwdLMsl1RKuEWeuTfxJDKTSfv6B/aeuAtkH9wVBvRYJl+LXZfNtxZcEwTi6b93
	 okNocz1Rjzf6aJN8w0MyOUrrYywiA8PmGC/VkMOtL/VfIQUphsbMJJtV1w7YRN8gGn
	 o7tUbttLOdPlHnLIUKXd2NQuO/bXtYJWny/iIeEaIhZddARSu9DXBpKOJtFE+CXWy2
	 F8rprU/Kq42ekrldctR14Ssn91rjZiGyC6lbIB87hZ94+7yVO2llO0zXUJ4YbcKoZx
	 3Bkm5/lN1sLXLPaPgyHIVK6sK3MHJvBksaxG7L+XzQHc0hMCDn9ECgn1l3OwqPF2T6
	 sIW9AYy3D7pFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E15EC3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607919357.31230.4830170620685369847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f0327cc334a489e5e11d20d38edbc8a62743b46c982bbc78b2af61974abdec
Date: Thu, 01 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746079193
