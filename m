Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1851C6B9
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713163163; cv=none; b=UtFeJAHQWQSjNBBuB/jg9KA6EvflJkVOQu1tFmu1J1s1SPhcCMF0Y9bcM5vVvNg5nfsPLNOe09GSt7QFI+5sS1qq/nxYDQ6NOCUHymGeAReGzyBspjRb4nN4vr+ioJZG4Ji0+FzZI48zR+v6huRBC9p1x5LiJtwWDJFNNjFsWyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713163163; c=relaxed/simple;
	bh=n5O+YYMISNu3TWiEPMC2RqR65ftbjR+Tp+O48ymr+FY=;
	h=To:Subject:From:Message-Id:Date; b=HNNhNwSUnBhgjerx8m0G0ciVG+A+zL5e1Q4J8QztFQfhcJJc5ykeiGMCsdMpO9WFkvUzXCW2EXwswNjhxGUYPCStyTBpMGcjOSNvyCVm6W7yU3PH5sDEywxQQGNCGr2uoDLe+VaumEFFLw3xnpy8nsseBYYJrL9TPvKBuZKUIeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQu+DjL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQu+DjL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9CFC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 06:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713163162;
	bh=n5O+YYMISNu3TWiEPMC2RqR65ftbjR+Tp+O48ymr+FY=;
	h=To:Subject:From:Date:From;
	b=OQu+DjL1LmH9Z+ZT0VDbzvo0qOJTYogZsCAXYWPDbLK2aLHyrwOdfyMm9uM94A13F
	 7zbXjFfdyN23+Ix9yWvft0ZvVrvtCFdp/ywZFJjEcMv9vdehNx38LkKJ+6tU8SG6ce
	 VkxeiLvOlFxTN+PsMbxt1VfqklL1hVHGwA4aW/9hsB0gPIF9jH8iFSkyBdFLjCLjzo
	 e64k/gRR3CktHdmwy8pP1TTO+QVUDPSwX8w0IjI7cTyemCL3B7lO1nPWvFsDkCPi1E
	 SSmSuuQ7Qn5GrziuF7uVaOkj80IUR5c2OA2EDl6AgpQFbD7mIaCwBExd6iuQNqEnPe
	 uDCuEv1YwttKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD911C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 06:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171316316276.30883.14933881467977285737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae7b577fe7ae9457a911bea233455c87e438ed4c8054b2f7888067fcc5ee237
Date: Mon, 15 Apr 2024 06:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713163162
