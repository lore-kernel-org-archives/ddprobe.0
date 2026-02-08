Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0931C3C1F
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770571434; cv=none; b=O2rMaPe2BYNz/5O1bpBAGXlQ52l2w8pNDFEPU1exGLBFRcY2uc31rBHsZtjFGGiPH4XV6JhH5DQTSMxSULObjQTriaYYKoQIhTZ6bHFNoOzUjZVAc9ddsVo97Z7fxtHGPHNZxusUncLlZhgcuTBci/aKraxqRl33E0qNd0sGu4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770571434; c=relaxed/simple;
	bh=N5d3fAGuR9owl4qFzuMJCgAMaiSrbxzdeRmwQzshC94=;
	h=To:Subject:From:Message-Id:Date; b=Ri/FUHNwWFi05bEVhrLmEJ0PaMzopopXR/Zzyy87gNnR4ebnYHqr1TeP0ZCpx8ibFKXD56zljou7IdutwUt4alRpK7wyV2tArouvlASdlQTKGo9SDsXt3oAF6ynzx5JlL/TgLoNzuJRc0mbvZsD4TA2tQPHrLB2AoX7aeG2jboQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7PJ+IzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7PJ+IzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDC9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770571433;
	bh=N5d3fAGuR9owl4qFzuMJCgAMaiSrbxzdeRmwQzshC94=;
	h=To:Subject:From:Date:From;
	b=m7PJ+IzRth663MOY0mrYB7waQpIj4I9Iyn8HirCv8FIlXiS8sJmUAZDWLeKRG92kz
	 ibTeIX8xwElOkWnQd6+3qX3f6M15YIGNVg8O6UX73JhRPkCKxU+uXQif8xDxUAv3OF
	 XzY455HDyg+PiV4YMo8ss++rS6bhszeWyXUkV3xX7B6RYq9hP2zU3XWIYuJizCy2rW
	 WlyjHS+eh9bePj1R3P04zqeKQeTnefkvppZLzfu868Q3IYJ/pfsVUV46VYWgPrt+vd
	 KhI4TzhzyKr1t2kn4SsYIniSpkwF7TrynzwK829KRKl8QN460icIi47JFgp05mSpdi
	 SqDw8wexVMm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960ABEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057143359.8736.14006744555537880785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250bedbd583c3e8d409cfb07bf505f8ece30a80dc358123b7d3bc914c0aaea1e
Date: Sun, 08 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770571433
