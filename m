Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC4F1FAA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747355394; cv=none; b=GRv/lRgAWW6zeQQN/vEOu/uQgjp06ETyQgpfFuWBepopkXeEkApU5YGRvjFoxay2GrnKz43oFYWMGhGmKwP93ma2g/sQKiXRI5j9N0JQkhBUmRL2hOIoaeR9kTEfztv+RO1XeyRKB2j/nptbo026KyGuK+t3Q/Qbf/csIdmT2OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747355394; c=relaxed/simple;
	bh=rRifzac4dgXtsrKOfJbzzeMqx8r7oZWLA1Vrxd7DEX8=;
	h=To:Subject:From:Message-Id:Date; b=r1rfTe6U+DvPvhRdoj0HGdSLnR8N7LnC1A696ux8GgoD1t17eUzlivi6hLXrLdBZmoSZiXYryWTD9A1Nu/0bBuDXY9Go2mrOtmjg6TfT15f9RTS7vTOVzKNWbx9ZcV5aLarbO+gue+7VTzxtBuwj94rVpbjp50PCIXeZDJL3hZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwtEZrrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwtEZrrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C8CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747355393;
	bh=rRifzac4dgXtsrKOfJbzzeMqx8r7oZWLA1Vrxd7DEX8=;
	h=To:Subject:From:Date:From;
	b=hwtEZrrgAH2iv84Uqp9ELqY+gjGUvckXJ5VJyttYnHfTX4ExnPFsVPI/dyJ97AmTg
	 2TMoScAzVfxj+4AmbFYsg1S3h5hAgEvw+95m0B77S3eHxbDZssFXqsEjo78YglCpk7
	 ewKBCDCsgwyT1R3hb334w8xq/nIEwag76gJcNyAx1Ytyri65BZt4ycEyDm6gu6Zmhd
	 Bhh8OycYxMKGrY7/pcjSt7/8T9Ow8PJhY7C72MTpzFyDuphsF+LB9+wVMLfo3PJPF9
	 bdIaoXpAKzc/h3MzJPfVxf9eg0vBPxKfqtBm0tQse4TtTDCZ60cWQw5ZiNsf/VTA0M
	 U3zvZnz7jI+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C65C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735539357.31370.5754624070514253187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79403f9821fc40bcbf705ea2f6f7e66858498a0ddb7368bd1f48fdeb674855c5
Date: Fri, 16 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747355393
