Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477BA27FD49
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783271914; cv=none; b=eYYwnHtDjtFxr2dmRaaYHhVVoYGOf1mQbqvyVk6TAy0HilMmIYzvu1VLUauFl8K8OjVVdLDFBrtPpYtPocQk4s7j0uvnJf1VNACdPCWxdqm1UYwz0xB2VzO4lgwHhdn2h1rDzCa3WLjN7LZ5PUVpH9KUf1sizURAGjsATjG7xK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783271914; c=relaxed/simple;
	bh=FkolSfHWmLPgOSEbNttneWN0U8tEVUFWiHsr3xfndnM=;
	h=To:Subject:From:Message-Id:Date; b=aY8S3mMYB44/6cn5FzawydW7HZeysuzqEhGTibR19FEl0arFD5HWfKXqT5vvcpLXttQ4gNqIHgoaHYISDbnJfltfro96155QJqvJLAqfowac9jAaeKQ7mBVHxcpBerJiTbDB0tnb6K8RGqZsucjre+A/4oyNd9c77zJXjegdZIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO7GTUti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO7GTUti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC34C2BCC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783271913;
	bh=FkolSfHWmLPgOSEbNttneWN0U8tEVUFWiHsr3xfndnM=;
	h=To:Subject:From:Date:From;
	b=eO7GTUti8kRMMt74xF4yNfYDZBfOIjx6BUYCoCR687N+1JNAstyozQy/6NzK1OpVa
	 ogr8CHz0GSLhyFbDSZ6lrereTbNBDsOHvio0hBJwl5oedzBC72VxqGwIOawjF68RF2
	 OR2o0exf4ol9ij+iZssW7rz+apoXDbpMvPuUakE/1qhSKtaqS4TG55Ap3SyNBYwKeK
	 MSFELrOWyNYwusXOmzR7Uo1BrugljUP7geUyop53wbbVXC0uwsXnjlbsgTPXN56YZ1
	 ufk8JiGpIqeQSjoM6MrkLpQf1G5Jaa67YzxVCWxGBy7YPJqzvYPneB1/yj2zPA/lsw
	 ChBC/fAbLALSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB11C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327191368.32213.16555354403570069137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffa931a868bbaca6fb960b0784d407af95ef74a114e9f011f04411e20db240d
Date: Sun, 05 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783271913
