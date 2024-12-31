Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D71E18C31
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735685754; cv=none; b=KmRHNOu2j6zpMP8s4SFMO9345fGIPV1CsKe3TlCZ2UStN3t8HMmgr8E+D6tu+W8TwIr7EiVNOxLt7R66zAOPc/GMU0ycQ2GNTJNjr/ZDneTvilwHirTsC/hGbVhni+1kqk43F5T2qwEjFIqn5kIu5j+G9qwdVHOoucMQw5ocmPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735685754; c=relaxed/simple;
	bh=qjItj2tkSQBcPa1NJkTynDu8yKXHxBzcpQsFljXBv5o=;
	h=To:Subject:From:Message-Id:Date; b=hcVA+tfdAh0d3jJsjrmfFAMXNv5ZhkGR0rJQM8cAmoCjpLjAwNmTMBBdRQIcucoUv3qnjZA1XdWebjZjomoINVENiaaRBaQjsQAtCS7at/xCGlNNrc6p5f76u2/NoDPZtNrnXJf+XSBp0pMd+GrfUOroDMvs4Dnh2vvAITgIGYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2kb8NeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2kb8NeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD943C4CED2
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735685753;
	bh=qjItj2tkSQBcPa1NJkTynDu8yKXHxBzcpQsFljXBv5o=;
	h=To:Subject:From:Date:From;
	b=H2kb8NeHEDP6EFtw9uLU+UsXsrWjQEyouK1xCgpbmhxDeN+se89LIDE0/0utO3ulh
	 C4ATlrMLkHAbohmjEYC0tS4KG+qgwSF+HG1hAhNjatkkxm3sANqsWIzMISYYQney6w
	 lNlsa14whBeGAzPoDO4hjzCb/moXc2exsnpJptfiQ3d6ZVLoC92+eaooWuETX/LWvz
	 LssgG7G8j5zgdpZkMOgqUSKWBSX6FpaXDOXdbvHc20rmOdR1wBAQD32pe9ShphKW3p
	 zF7XRuoBp7xYgRJ5k7zfHpXfupauJWKRnPTnfYg2HtuRbUlgUm2evU7ym0ZCfuUQid
	 iVgpkdGLsxciw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981B6E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173568575357.18034.11791145987616609072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9717474cce5f286e5c0245c85c61238aa2c4ad0c7d67e953d7f69a5292c30f
Date: Tue, 31 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735685753
