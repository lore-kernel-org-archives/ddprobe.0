Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0478A223DFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757006394; cv=none; b=kKRECxUg0yfQ/z1O6Z4FbVaPW+/KJpZnKQc5Z43XUPA0oPp6ZXIE2SfvPgM+v02shjOFp67AvWOFHrR3ORPt9DPjDzLFd2xTVBR40tFk/QQIyqaI20ClnWgGQdl7GGkPI8qFVYEbgFYuj6fvITyjSoGETPMBt9kogVBHTKn1rg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757006394; c=relaxed/simple;
	bh=KnW49+E5LyHvfhTPdjKai5IPp4J+ii57+QjHAqnuh2g=;
	h=To:Subject:From:Message-Id:Date; b=Vl/y/VM1EaBWMJHEw0R8XrANuHSt/kf1Ini+QlBTGElZxzT+DyqxHTJLnQngyBzEYw2rXn9iBrTnLZfWivFPE11hpI/OZtdLKDAsXxmqXQrcsrrKeNNK1sVNs42RXDm2RMbkTXkOjPg7fxszk8xyXXU0iYKUy6Nx8hEIAQvTpCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUUVSll1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUUVSll1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C7FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757006393;
	bh=KnW49+E5LyHvfhTPdjKai5IPp4J+ii57+QjHAqnuh2g=;
	h=To:Subject:From:Date:From;
	b=nUUVSll1gvDAfkDIKyA3xRt7JWb0+FBzsr5z3rOSWK3x3moD+tDlDiz3IEKG+t/s/
	 +dgLvjPC0bM5JRCQEE1xkp5AZHgZxoU/Xyf9q0dA43s2N5xea3TqDaVVXVxgyR9h5A
	 PE58LR+jNwUyGUpEiYaN40eWO5nxzu0uloWCQx1CepYxJx2j6UjSwH4vwoJA8n/IO7
	 tkY8DFZAHRvjoXjulOiMBfnpkUmfjHVe1zbyNOHIPZM13olzLecYAcTQItZnJTt+Um
	 tzHMoVjvnHQX5XQMHFa4wI0/BPJkpNgRMITebldZMKQwMFjfq++MPKF6AMCeh8lINM
	 5k/3SE/GHd82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1ECA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700639357.611.2965056323902657830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a08908899e567c22264c0fa72cbb7ae5145b38960ee768dc83f166d1b221ebb
Date: Thu, 04 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757006393
