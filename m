Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98583659EB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767722033; cv=none; b=gko5YcFeCMOeLXsRB9cOxbYKW1BcDQTLnZFj7vCUOX3Qa9GsAS78xj174eQLI2J7NcYtTzBTl8RR7dcY/fib7RXb6ILLbi3BSObuNeIRaYkfOuQjUtgDLCXAYbhEIYBpwDCW0VNI3X7KcigLHLlpMlbad2QoWY772MriD7K56KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767722033; c=relaxed/simple;
	bh=Q6YOWsoX2JXdO34dzOqrm1uPiY1ZF+++rY/IkFU9syA=;
	h=To:Subject:From:Message-Id:Date; b=K9CXA7BFTgj2HUzpT41rs4c2Pz4V/G8SAwpp4NoIqsBmtTgLZ9KnOpp+gVoOTnFiAWJkb+6zjl1aHgvmaMY0n3Ka8U/UiEH0ppxpNnp5+/vvoTSRYJWEjMDIOWM93tuqmn318z5GTaM/0WLXixlo/t6gI35Jz1OM6IJUTHfpzYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNskO74k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNskO74k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D157C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767722033;
	bh=Q6YOWsoX2JXdO34dzOqrm1uPiY1ZF+++rY/IkFU9syA=;
	h=To:Subject:From:Date:From;
	b=cNskO74kGMSNw+oiKncrEEVgYjzBVQNGS6O3P3Y46dS5WuAEzmlQEfV/WpXXW4zpP
	 aB15QQ7/YpgUJwVoZ+D5h8PhN+06fYjtTKzwMRK05w4pESdcf7HsYIWAmRRqvU575w
	 X4c6oZAFBAkGriPFkIpwf7oFulpygHBzjKSDbEI1K/r3xETC6/9FQnma/xrcqB3o2U
	 sf8K8+9S4L4pWejR/YiOFLonKkf3f6gcxhRFg/qeVTuWo1NBQNz3FtwXwuWgY2aHqc
	 tiwu+XmOoShqDgGoQhwF4ECNDtk6/9/Ay9GoFrhcqnzoxZYWMLxvmJ96LocdIAKYH7
	 RI31MPdFqXamQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39DCEFCE2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772203357.20841.17470745841488586212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb8c5807036b269fbcaec96b41a85ebcf0de57a195a57cd093654b631cc533a
Date: Tue, 06 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767722033
