Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264A81459FA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766774034; cv=none; b=YAJzZMKlCYv2WSho22iebl/R1/kTUxeO3cE16RxWh6Jnlqm3dexts/W4yoxyFdUzDktcI02BDPoTz36ymV98aez0gEfPdaEQBaP3ebWPD/YE/fsdMr1OzNI7ovaNosr7MWQJcxPyPFW/ucY1Q7CaoVr9EJn8Xx0eSkMZwHh30KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766774034; c=relaxed/simple;
	bh=RuviO0EuZKuGxEr+cebnYzHB6JxAEdXyLVP+Soo+v08=;
	h=To:Subject:From:Message-Id:Date; b=LLR59RZyBo6CY5ENT0InCnCX5PkPKTPCI/w4o5p6Qrl29YWeNMOLWdcn56bIYk8cVUX9sPN/YEJITLq9qhPpAcIoVw/zV+woSHlGALdlL48dsixlBtd2LdUV0x2O9IB8C+20VNnWBe3y7a1JRgaBON0Db3jarecbKlM6wUlWq3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJLnEYX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJLnEYX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BA0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766774033;
	bh=RuviO0EuZKuGxEr+cebnYzHB6JxAEdXyLVP+Soo+v08=;
	h=To:Subject:From:Date:From;
	b=uJLnEYX+N0YjOieVRU1fsf4jKSMBl4OZ7TRwbHwAobezmchnygVFTx9kN0pFiKu6v
	 VmSJ+1GEL8enYwW4aHLKUJAtor7jrh6dF20mAELFtqakkEX/Em5TW0ACg28B8dwz1G
	 QXjAahN8hX8b81KyHdwcifNn7m1/WYauRKQvHOZBdvmAWzoGi6PgjIMEhhYctq0GDK
	 VG+Yh4lOviY9aDt97EUpXTv5DcTZ5VW95k6SUU9HzJhxksWnxVxerpzmIto5/cTuda
	 2XnfN9pcGhrL3NckiX5RmhTkB+ZRvWk8FtLKcoSxiVDIiLrlgGBuulqxMNqvp6sN27
	 xA8DOSQv0algQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A51E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677403358.20572.5092548634679327255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3454fcc9d4ea98185db86af4a34c721daa41a1b448d737d4f63345fc372b5e8c
Date: Fri, 26 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766774033
