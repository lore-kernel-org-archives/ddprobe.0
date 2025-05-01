Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35708194124
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746110394; cv=none; b=os58RWoDBC2HNSOFogK99HZ3mb/oHdIGurr7UdygjwyXbi0UMNXqaJojC+6LHDrWrkxsmIwyxqzDJ7AKLxDv8jYaXRE+tsrnraMf0cEGTPDOJ+d+7EakrmjRf87YJ9hE2mLM6FNMlEINZ08nxi9lLsQVwnzUYRYJ8SJvzgx5wxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746110394; c=relaxed/simple;
	bh=QAfaHckrmBSFSW7DRItn0f2ydkFIPHNM7xeF5VPBCNg=;
	h=To:Subject:From:Message-Id:Date; b=dg+ihfsMvETGyIm4wNKa93ZtWTy/SzXnzJYEV5oC++sn90AlKeYp/Mv90BYcUqyjVYQYfOqpWrlhG/2dyHHkF84AeZxBQj4tenTMLpdSIATR3wwPcGEHPg2nm1/KayzXgIR0j1Q7IDMSQ0Ax9z9ftn/9nFsxu7d5N8O5IBa3k7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGVS3BqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGVS3BqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFCBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746110393;
	bh=QAfaHckrmBSFSW7DRItn0f2ydkFIPHNM7xeF5VPBCNg=;
	h=To:Subject:From:Date:From;
	b=EGVS3BqF+BFhWRXDZTkseqyQGco54kQNpkJ/ManfQoLxzGKMIhFKWTJjDXFd1CtI2
	 MsZWf4bVkOshhZBokJ/IFMIBoBZ59GULmUxWgFSuVy7Ul6tig17DvSmaYR7K8jCXRx
	 HaT+SGihPm9/8ptKBmhpBQgd/60OHfKspo76ZKC0O9Cge+b5VC6qYQ+qy4nwpRn3LN
	 Yu2knQJkztxcTSag98MCSszENVvmJtHdyBnMAiaIpWx7v0GVIjv8t57kdgpiMatCVX
	 h/4SzMBqIfNXy3PQwIgSu4r20DEXvi3KeYYGbqkK+QxR5cpP/5+X6Dg3+P7GB5XmOs
	 uffX35OOss7eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA21C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611039357.16926.12414021294668383338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ae6c590efbdb10293f3598e7df053ff51f6601fc1544290c2ce652f98f9e03
Date: Thu, 01 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746110393
