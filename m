Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3864D275115
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748425194; cv=none; b=nnNH0HRy9ZSS42TVI7fXcVQjZAAtR7PFKg1xb3d5cJ3lVg3t9Rd3zObdG5KfExO6r4N20+s9aixHqIRrokXOuvF9OmGQhNP54mIzLRRyDb0BSkZq4cs+EKcX83t07Sh0WgTkKaETwc1Gysa6JlJrys2pqt4jmSPb6mmPXwF0VEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748425194; c=relaxed/simple;
	bh=Yj4j/pB9FJzrOJaHyAFEI8ZmGHC6ZNajZdChqlu76Yc=;
	h=To:Subject:From:Message-Id:Date; b=tu3XSzbqiVAdRZ+k1hmprAZUNFEU3eHuTtaALQ2OksqJSnvTaZO/eest9zPShqljAEoJdeDHKcHQeCEQi04dN1Gt5cfTSFoYG7WTliueouz6pmGWcKMEksbgRm7InL4PlI/yH7sTugDboMHnYE/3qauJiDLNG/f+kGw1AbJE5rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GakVsg1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GakVsg1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A309FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748425193;
	bh=Yj4j/pB9FJzrOJaHyAFEI8ZmGHC6ZNajZdChqlu76Yc=;
	h=To:Subject:From:Date:From;
	b=GakVsg1uVWj5lkeJTrlD0/VMOInhV40d23ma7AGkLtdx54yMRn/AP+hDw9XUL5M9k
	 lryunFG6eCv+RDkySfVH3ZTQUnj0g3Q2XicgjCat1oONsTfQfPnBwMaT62ASW5rZ+V
	 ZRE99ZUFmEzEj33MqbCzkhd3FksHujc9HWV+PeDeXmx5UuhU9Pn2P4BqzR0Y+Jfw7D
	 Ex+UzfF5YDwaEUA2g7yPKF70dZbQDMkrKAXcEMzTNUubreeTMAf7sa8Aqr8H9bRlSK
	 U3Zx/bGPVUArU4wRCmyiGNkj/CjpV7TOnUl5SLCtiDWSWsMr2H9jXyanJNK6FLjYzs
	 JoegLZ08yAAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAEC3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842519357.20638.8347293725574027080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28888de46824bfddead94d5ad164a04766de1a6f2b26185d3cd3332873a49121
Date: Wed, 28 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748425193
