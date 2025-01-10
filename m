Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2DE20E330
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736516754; cv=none; b=YVraKp+JUtM8qELXArC6QlzILPcuthuUyFuHzaA8QnyJRwpcmg75lcOVR+APuP+iQRbPrd0DS/0gDL+BG/9EDBtOD2qJoegYJzI07oSHAZsXWfGZgYjHORF+6avubSGE2EFTqV4q696LRqvHMedoKOWwD34ZzhaJsgxgzGA5Bgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736516754; c=relaxed/simple;
	bh=QoWTqc+L0RLDwJqGv0KmeU3GPf4Y3g8eHGwbHbUClPw=;
	h=To:Subject:From:Message-Id:Date; b=KQaJK0udqfMHZ7eUW0j96mXv9blqRzdKkDqJ5iJl9QTWteCZyXtQSOP5pVC1ZFg8evoJCeB8WYjsER79wwRSz/pOQPwtOTatQp+uHFAHOay772GzZjb//cNhNeoFCx/NFVYlqGHe54b7gU6CYZI5PtccVLgLcV7jhTtU+sLypp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSY/jDzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSY/jDzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B6AC4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736516753;
	bh=QoWTqc+L0RLDwJqGv0KmeU3GPf4Y3g8eHGwbHbUClPw=;
	h=To:Subject:From:Date:From;
	b=CSY/jDzPhmIdroMwdclnh8L8TNeNf+NwJs7zS8Xf1RD3jN9eRXdsfJuW/mS9FXusI
	 ISM338vxVZIVVFtzk40lPA+TKwWQDU1DE9TaEzcEtoAlh0/vy4cuvHL43n/VkSujBj
	 4JrpxRQYWw1g1wB8vqqyzjP1rAudGuDw8mS6zA2OJUiapdbUXnR1qlbsRf9Iiekqsp
	 BgEr1U/nUJ35wb8HkW6SvAW+zC2sHOyzzKxB4/r7ELTuy1rhqZ9KGL+/C83hOFDftd
	 EGahSfKP1oay/EVcHSKNSVXi2YLq8pvcZI0AAko2+dw/ezcK8FE0SyQdmIV27NSrdQ
	 B0MTekHh5Dp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6A6E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173651675370.17472.13507778155114358359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beac15b6298fd1fb0d5f3d5f320c057a763d9a0f7d9c3387ac7c7c06a325d877
Date: Fri, 10 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736516753
