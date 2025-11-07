Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1D22FB99E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762497594; cv=none; b=GsaLF/oXt+9f05jWJffxjk16VWrjlPHjlFJvXOFSafLQmkrrlWor2RSVbhWz+OK7rJTBChi+bnNNMGLFmbyNQHUfyxW4KsPLdcaivdwuFkTIMMPSN+Kl8CNDMYS29NKBYfY5trb4/n1l7TrsFQceIdlmoEa2bpvhgDaRZSDiwG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762497594; c=relaxed/simple;
	bh=GoDNXwDrkuFdPuz+gyV2dMMf5tOMcGBuGpK2zK9eY3E=;
	h=To:Subject:From:Message-Id:Date; b=UvS6GQkHVmhy6wcregMLQZvYnBsPwGkLB8pQpg2uroUWhNwMjXKxqXJyC/O25FmLJ92ci6bmJ98/Dr7kgYC63WtiFePx7Q1dhMxNW3JUSZ+JzY6gFc4ay9F4rwpQRxhVgygDpl0x4msBb51c8Y8awtL2OMQ+xbTj4Zj7UZVcG8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsyS953D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsyS953D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26C6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762497593;
	bh=GoDNXwDrkuFdPuz+gyV2dMMf5tOMcGBuGpK2zK9eY3E=;
	h=To:Subject:From:Date:From;
	b=HsyS953DkUxOVcZFDJ8GKfPoldgcbqh4FKDo7pv1bqe/CLqv8EYdma+zAeaLVS5t3
	 DoQfMKuTESrStUg7RXzB3v90w5roO6wO7qqiZ71/C5XbEyHs6kGNBxTY0NxO69ODFK
	 gZSOX7d+PehqpAEFCYuPdbkYuZoR0ZEaFIuicT62xzCRNEehnrJznRCpv/KFP4a6KC
	 /3f0zGJW/lG1wJvgCWXYHL4Hu1a++7uihv0ipK/CM+O4vGRaL8ShmFsqFResUrKiEl
	 FwDVKWAPKlmgzPDBMO07vKdz2elgM+Z85W5oOvpyPTbqrganlD3YTFvYHZZ2Ik1NVw
	 7weF+qaH1AkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40A6CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249759366.21154.9301105365120847061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653f831b9e95d7971ded41e51a5fbf6b907d03e1d7ca39b23e4ff4d60693f5e5
Date: Fri, 07 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762497593
