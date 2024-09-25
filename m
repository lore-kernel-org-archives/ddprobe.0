Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202D24A00
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727307954; cv=none; b=G32zB6l94E5e5NwVcyw8ebrle/3NONacmM2HKoRwappVFtczpCZUu2nhtLgro7WUrV3D4oD+wgPgsALSHgYSHoHPQCCCL6aHnUz6o4UlppBe9/YrjJUGLr7+4L62QbuhOpfc8bNv5no/oAtf1YlSeKVn1eZCv2midHxEjTdex1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727307954; c=relaxed/simple;
	bh=lC9Ibs4US0FdJjWi9kPoObymaDSQTnLB5hh43mhAw+Q=;
	h=To:Subject:From:Message-Id:Date; b=tcsqlR49jt3yA/IyEfITEqDr3cMbUP1L5iUxCFQJs/G5iocgi37WJ7rGUHoXjEsds1IZ/TnzkHtiSUqDsr1V+rmDBiXu1BJuRhQJymwUgI4XKrKOTGKM+1BRsXSFZMgJQtZkyiyxHTMGgKY0EYauR1eConrB0wvwybRwIgiB4g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN8HxrwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN8HxrwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B4CC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727307953;
	bh=lC9Ibs4US0FdJjWi9kPoObymaDSQTnLB5hh43mhAw+Q=;
	h=To:Subject:From:Date:From;
	b=sN8HxrwRhJTPCNyo96/S3oaRcswA3M9dISdZMmjnzuiSGJRjkfmo6Q53//0hw+GXL
	 BjV2YgrpCt99ez1LsYfIZyf+E97mUiYzPTyjDwdT4DZlLFi44JIf5DtaeO5JgIt/fH
	 J0LrePPaaDNnp0weOJQjdfLkDIsEcaSLJvhxTx1XfVA3h7LI0mXxqHWlfr1koGuDCp
	 efRWHTaVeDAFjAzfQBzL4sR9oPouxOcjzwA0CBCuP1a1AHLMaszHt/OpT9b2YrDLar
	 4V6fR0O/9CDEWF+7i8y5k8o8vwPqDbmCUc81HQ/YaiwGaMcag6o1gWURtceXypmcYI
	 RUaHlWksTdLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C5CCFA0A
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172730795359.9795.14184368539548055426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2548aa8870b2878cf44e65754febe07b2990172f0bb45e75c0f5764e47c16b
Date: Wed, 25 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727307953
