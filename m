Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5F21F709D
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731572754; cv=none; b=LVqV6XBpRG1KEQvdHBHMcAENNQfnSstDiyNJxDlP9Q1QDmvXxrfEpHgYCTduNHXtmr52bMIMQmFhe5dTKsm2DpRhl73RbOVeoVOMxGjrXCC2nUO8JK1VBiIGpz1hIpC394v6XP32mRwh0Wdf89XZ4dTKd6MLXC/vfAZaYeNbxl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731572754; c=relaxed/simple;
	bh=V8BR3H7kmIBWIhWfPpYqqKjddRiEnQZTDulENco49UQ=;
	h=To:Subject:From:Message-Id:Date; b=UlYqxsrwiT4ZDE8AW0ygVuHQUm+zLkIANGD3xYpUAhpW/A3IbqJYOayBcdk+nC3gXkP2Xu0pEijrTdRI2olCn9zAYPz23I7kvZyUVhmxo3dgyZb1RUMchoM2gWS8pZFoAmM+tEy/g606l5vPTBSrCErtiDhP2uuQAPIHJDyLuDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tluzeOxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tluzeOxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C43C4CECF
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731572753;
	bh=V8BR3H7kmIBWIhWfPpYqqKjddRiEnQZTDulENco49UQ=;
	h=To:Subject:From:Date:From;
	b=tluzeOxegITQ2dc+CDmHnaiGo1fChYcZN9y4TWgBGas7oI8kFwMBOleCkIH52/cuS
	 gvWLM8MiLnWxoo+8cr+nxLS6AAZJN1UKJIIy+c7HBJCm7zbI2IQ/AsgXkKVBOIJJm8
	 XTtwShnwLieU/sI73W3t0VZYHNFY9jYLxhBXEoDGIlNSk1f2n93oY4vkIwsX7ePYcN
	 7GMR4vcenUqhGwuW0eF86AEL6M3LIW1lV00uZXxjXXzaaWvI+jlrfshm6ttIm5C/SO
	 9MDl1W+62bw5O/fce/PYqVadcsaFpx1dhZltm2fSDqB/J4Z8SYIssFZgqgvgGSfpNX
	 ao0cSoxtKfS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C53D65C5A
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173157275361.21967.9427753117475328993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd85f5ac46c183274c86ae3bffc4cad0f1d911a23dfcd266b05279f51a6a2ad1
Date: Thu, 14 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731572753
