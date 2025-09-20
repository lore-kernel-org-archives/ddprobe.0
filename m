Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138B419995E
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758362994; cv=none; b=pSaAMXmabh5nkyNyVTaQLlDxaWKXengRHUuTxFL5hRox0PQHDo7dXrW8e4y4L7zWjdBleRw56N657VPYuozXUdcMZSYZo39lk8ppXfV9+MQp4TsoKuDudhwGvfj0Lb87pE3YBSAi3I0S8h31re2jKKIFLaknNapoTQ4v0nl7+SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758362994; c=relaxed/simple;
	bh=5TC5X4YnzFZMJ/E+uT9KmoBvuaBnkfNRybKcPXReArM=;
	h=To:Subject:From:Message-Id:Date; b=jDoKX6iwuvJDjPcN1Jw0QLcmhsrzHLFzzEdMOF36fjY99Fah1yhlYR79DtdfbVn36yVcNvGNSjo5E12ForMiaEl5euyt+2B86OUy8+PtWBfz6G2/KleDM6sORebYqxsC92RRNbwj5yKHtKGWbLfoHRsy7kNgtGt4mcJL7yQCHmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwGsAWVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwGsAWVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DDCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758362993;
	bh=5TC5X4YnzFZMJ/E+uT9KmoBvuaBnkfNRybKcPXReArM=;
	h=To:Subject:From:Date:From;
	b=LwGsAWVHxh0xG/fl+Av2aF5N4A9TiVwFdoomc+j9MEhzX6WmBmimd+e80iD6cjkMm
	 rue1P08Zu/V8YEJMYB/1xmZ9qzsr0r50louj0rjVOvjzkbWrCAMzojzTKZfTpm07GK
	 Kb88XusGAT1LjBBPhmvi5BJI3RxxPYbc4aqs5N3WkSHivlRPSs9ApPUNpH/MxtKSAP
	 ywTIKdzYmYYpoyYzrGK0eunf1kx/bY/+TK2TuxSNDq75P+AbDRNg0gFy67kIQr17wS
	 5glgolx5KxZjS8hLqs2aKMWD4QdcSuojLuGv2bQ2VnpZjosobdUQFnkpyMQf5s5YKR
	 V+CCsPuZkCxdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937ECCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836299359.21519.2891905005326817747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12dfd051c0491b353fe2b2953582a218beb42e6cd3233e33cb2459d5589be8a
Date: Sat, 20 Sep 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758362993
