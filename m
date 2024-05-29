Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671191667DE
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716964463; cv=none; b=Hg83uF9yIC0/PJt35vNtO0yQeSx3OpmNxtQyQgEfmjFyUny2QNZcBTWWbaHxgCrS9T1GCMz4obYpwchxRpon7zEGd84QSacRZFsaNJ0d3w7M/+UfqpmscH/GIrvmxHFAVtnznxZF8ew3x0kSTlOutntWr0o4vABdKb67pt725bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716964463; c=relaxed/simple;
	bh=xFgbBzbr10HqJ6KDEs7jbRHmuKm6aaZWCC5if2dKUHo=;
	h=To:Subject:From:Message-Id:Date; b=BxbdWcLvXFMfbpuKzmpFiosy2ooiZFf9wyZE40tnGomY5OCpndG+Wm/N3VMCOaPnXDSktUDhwDfAkwBwwbbxZnv8OiNVd4kDxHir43I11aswrPhTzcIcuq3GkboI5I+ahyGNPNlc6s2gyeTcktyuJGD1Aoa86LoTe0GM5/cGppU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0BqnZ0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0BqnZ0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC300C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716964462;
	bh=xFgbBzbr10HqJ6KDEs7jbRHmuKm6aaZWCC5if2dKUHo=;
	h=To:Subject:From:Date:From;
	b=f0BqnZ0aARAPTP9cW8qoVCCXU0i3FcQn2BS3Z3jGraSxZ5l8y6U+/OxCaRdk76zBm
	 1WAp55ywLABtRcPlLQ5ZYN9IHMo7HORPvAcl8mOWtHdjeA3oEMd7TUuYl8Ps2B3/xY
	 HLtpt1KM4jTCYnKCmAgrMjDQz9X9mSmx8rKmiKeKbyFs4/Gh1pAyLFTXdMIlCcbP1b
	 M0sI0tAu1LF+XXEyrfb/zE7V/jjXL1ksj1ite7iEelsgefibwo6mA9GOlnwTBHeFOp
	 MI64+NnRcPWKv0H97GCqxBL5BaECEvnjypCLbuYzBSBJE/PVfdG6XrKpkzzTFc0ESG
	 vHtTJDw8+G2AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7571C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696446280.27475.739639464251246429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1a0d484416df2fe3ed4397a7792dd07ad5f1a3f8a15ae0fe83549b01c812e5
Date: Wed, 29 May 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716964462
