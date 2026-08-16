Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6174B04B6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786883434; cv=none; b=p2rFF197/K5q79gmOX4l+PZwMOAQ9YjEu3FQRjCPSJ7tLSf+w4d2IqOMFyzR8rFSkmSdZPxNsu9wfc40xpCH2HaOuqtOJuWtuXF8w8zaFGmNytvBfosl/CMMMv/nwzZ9hJFSssHUqYNqhUtBMBMb5wtXMNcvWmnkgrgnzISTD3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786883434; c=relaxed/simple;
	bh=upaZVMM+lVHzoqIGOy2MmKSJyXF+EUXGZ295kBIjwVA=;
	h=To:Subject:From:Message-Id:Date; b=nwK8/p2bneVYCch0qtflvB+b/5kqmeuLJhq4+x6OO4JkcrVsNT2GxFkX0Sf67gpILQTz4s41Ar8KZ1Ag9aHPokuAIBEPaNY+AaUiLuJXxNSkodwlGCUncDLj1kB9PteyVXrXEQgl5BpEB2DQmVJe2B5ZJeX0gKWyQoQ6/8NBRqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZd9T2c1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZd9T2c1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D510FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786883433;
	bh=upaZVMM+lVHzoqIGOy2MmKSJyXF+EUXGZ295kBIjwVA=;
	h=To:Subject:From:Date:From;
	b=VZd9T2c1b/JA0Ze4jcnCfOpicIvQb8eb8zWlJgI6I+DSl2P/5GES/n20zmsBOYXxF
	 H4OR2KYW7NzePdjjyqPuFfMPbBL3vAGRAWihrDnyjmddDXc1kGZ9+gajiNkfhZB7M/
	 PtuTexuqKU2cvyUPcKJ6vgPRRG5P8brSnQtvSot19FGvm5Tsi5SxovRWK1kibPAO9v
	 vgxSIvItIJqp2KtnBQpE8SK/GVU17KiyNpZpp6591TlEpYABOHRIg4Ew8/2QQd3XL0
	 tAMkEihURBGDc6BOaCDxDTCKI5KvaeDKxSG5nlEzl9PEdBcH4RPJWsew8tLLguvLJp
	 wtRLG0FDyk8og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D8C5DF6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178688343368.12481.7836486528523108360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be926dd06c2b4fa551931275d777b5560019edca9c20cd63cb26eeb979d0e346
Date: Sun, 16 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786883433
