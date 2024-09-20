Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CE41BC49
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726827354; cv=none; b=eqCKteDxVf3VYBjCIk01IjBb0eEPzCZzouMWuwsF3rkEFqhC8yZsEOOZICVKKOB3r8Mxg7ErGPmJzn9Paw1SLYSWOcv9tXBJwI0AFybkhhPft6Xk2pCwRoUwN0yemKxrmJBnNnU6JU0K0yT+OrLJNpHI0aCAWES5523ImvQv6rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726827354; c=relaxed/simple;
	bh=goyCQkBaQJresV/IwBx3O/YBO+RFlTh432HpzgRYWGM=;
	h=To:Subject:From:Message-Id:Date; b=AcRgLJ1Ap71hxzyu0vvAsE+ijRzVZUiTxv3Y/5F8mS9THOA66SsBMbU5rQpc4gkqWm7Nn5vpAKKi8P+UMajon7YHhz3O7OOD8WPlP+L2KffAQhZ2b4PxaGcxFfipPceKebUOm5e0RnYQ2IV4t5MrlaboSQD07J1/WztucSEAupE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gck2+IMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gck2+IMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA124C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726827353;
	bh=goyCQkBaQJresV/IwBx3O/YBO+RFlTh432HpzgRYWGM=;
	h=To:Subject:From:Date:From;
	b=gck2+IMnp59r9ytgZSOrR4nP++c61MT16o7ozZYaNVRXmCv5gRZ2MXk+TmdtXE11b
	 ms7VyI03Sljgbfo8i7RbkCEhvfYD4fG1cWMmzXf0kNjuZ4nZnnf5lOqVCf6QPUaICI
	 eVkPujHdUdT1ReiuGFCA6YgfEvFyBLa6VZJCnU+fnaGutd+UlYqiqhwtQ3FFZl6gYX
	 HaxfLUU+6fVL3q2hT3fzMdAgUDoyP8Lu03q0UgVxi2M945NKqxo69BH6EdMpRFGo1V
	 PYFSru9i2sHc4XIlu+Mwn8qB90ILGbs/iEDxkGH539ysqPp4t31nrGJLi9P9WKs55m
	 Flti2UTOeAaVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B90CE8D75
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682735359.31118.3438544201123044564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3bab4ac836d633ac723c68f7f36b2a41b2d49098f439833b0e36c470057aae
Date: Fri, 20 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726827353
