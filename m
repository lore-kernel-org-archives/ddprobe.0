Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0772417D9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770973493; cv=none; b=gloD8GjWUXa85Vhh6ss5ElvAPz6vY3tfNbjmPIUZ/Zg8vzMI0oMQ4MnTPz+TwZ1jeddFfYPVUUkw5BXzZsTjOfM8quXRsetCOLW5xmHCT2F/D5fORWegV0VDptGO031Ui2rGA5ap2QFd/hJYp90QwzOR+UBo12KFFSyW+0NOZe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770973493; c=relaxed/simple;
	bh=reoDySSH3iTc2t4hyYpeX4H+M7iV1txRqEQlmS0hzjY=;
	h=To:Subject:From:Message-Id:Date; b=frz1lV2gJw8LfgaT/ZwcfYU7Q8H3/ceovBHxOwuXtKL57Ys/tFgZwg0HMJRvo3YXs2p5JP67zCL8bxW6/zBO9HWRvn+Pjf0cCTYluD8QkqEN9JcFimUFRI4tZ7VEjqXGO2w4l5BhOM0V3SLsOfa0MHvPPkYYTrlvxKrbpKcgj5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZy9Ss76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZy9Ss76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B9AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770973493;
	bh=reoDySSH3iTc2t4hyYpeX4H+M7iV1txRqEQlmS0hzjY=;
	h=To:Subject:From:Date:From;
	b=rZy9Ss76CImySOn5KajRPFqSd2IKj1lmwRTcF8UFF1f/j6IpRPc4awx0YHD2s5xlK
	 ufjid0Gpn6QDTRGNkYjJsSjsmLG858/R95ZF1AGPL38x5GHDJur4/NSSxuVoby8XmD
	 oQdu+mtc3TC+pu0kalBE8j9JKfY5pOtMRfeQQqNsq9c89oF1M+Nxn1tQTQGYesawQ7
	 y57fCqSKcvlj35jnx4kkK7/sJlEuqnQ/zXdhsgjSg24gT1jfQ7mknprRcM+6N3cbEp
	 eSFEbvg2whfRkdnogEg5gI0G6ni00kVMlDXwvigeKw9opxGCyWHuYoFVPEcB6MjCyY
	 3Ww5n3uGwnMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBFFEF48ED
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097349363.24304.13426664874126745791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a462fc84beb17e64723ea40c7dcbc08ea215a1e4d32287e14463d1f24740e1
Date: Fri, 13 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770973493
