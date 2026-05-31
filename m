Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE0E34BA20
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780265074; cv=none; b=ZSp/b+3AVe0SQOCYBJPu/0ONBUgQ+rLkeCGLvAamzFW11rM0zKX28cCPU1hDjLmkl1ErvzfWmnsqkoxJzOacOPUZ6Q6k0h4HmLv6+wtvMTxrppOvAFpbGtMGVWB6+NQfovTAl3mAtg8j4dN3KX+u/7Jhu72sHf9bfZaz4TbmrgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780265074; c=relaxed/simple;
	bh=nqXOVHSBH6aCTL+Isz57b7fbUTr9Uq+s/YWSrwSwKnU=;
	h=To:Subject:From:Message-Id:Date; b=C8OuVL/W5cW3Lebt3E7fy7JxeNTv7/64HB5bdlcdS1wmTNIw14U3gAPWfQQ0SjnHqwt+DO19vIr9Q2F7bca12rQgg/MjoBnX2muPtZY+Eb3dpO9sFivfZvppYYz1fIjpTzNx2jGI9yluEuIS0iYyG2KUx4bkRcHblSfHlHhDt6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOvKhkMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOvKhkMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52D8C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780265073;
	bh=nqXOVHSBH6aCTL+Isz57b7fbUTr9Uq+s/YWSrwSwKnU=;
	h=To:Subject:From:Date:From;
	b=VOvKhkMM6SY7QihplfNK9VH6CKJzEzfTXPlmwK2Bb7+ljiJKdKSxj5sZQi4+IXWcg
	 Albgh0BFqtb4qoBJxBtmh85eDv1cWyR+2988+9WLN4J7XbqMKxhM2xs3Q9DX6Dxjv/
	 UXj6LJln/nJj2Y/sXzGQNt674WtTRkH08kma65LP8kDY9luKv6J4MrL5kBxHb2InQU
	 9TOr3gXmr/l4HIBi4vceh8yGd0GPW8sANeooFYBBMIpRU0WSOvKrESUCnp3VlH22YH
	 bfzdWz3gTl56wCwZW5rf6RTTexY/flgitXN/2Ocwnz+H4oRivKgn2f7wS5+v8aBEJE
	 2efqRS+2FF6Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A25CD6E55
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026507370.7410.15443579312518906031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757129df4e2ae414558885411332cffaead11f39c7309803e58bad3c9d24f32b
Date: Sun, 31 May 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780265073
