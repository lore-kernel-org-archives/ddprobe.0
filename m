Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5696E339395
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792366234; cv=none; b=gbqPGmGHZCxBdskwp+TI6XwrDOb/Ligk0Pg+JlEC2vHQUWL5eKWCSXNCu9knMGOq5jrqwZF37Xl7+MC7FYFPwjCvPXQ/ZD5mxoH6KP6/zys46sfolHMyVr2DcsrnKvY8yndwunW5ubvJjuFr2MLKxSys46D5PO3c3elu/TRUQpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792366234; c=relaxed/simple;
	bh=RD/vsgdM7Cw2UuhoyIfo91/8mhAHtK+VFwkhQoXg+XE=;
	h=To:Subject:From:Message-Id:Date; b=EhjP1FrTMfyQsmyCh1z2y/H1uvVQVUAqpzfkE3Fm0IHkTpjJUTx396YXWXbjOizBPzXG5omtMnp1M8qOajlGU5FqQG23+pryZY0fKe2nblZvU2EePa8grGk/Fo2jPDaZKw7j784YBXgezwRkR/Hj1XBPzkYTqk8iohNKXuJCV6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyJzC26E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyJzC26E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF663C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792366233;
	bh=RD/vsgdM7Cw2UuhoyIfo91/8mhAHtK+VFwkhQoXg+XE=;
	h=To:Subject:From:Date:From;
	b=UyJzC26EB9L7lPrghWqhPgYHXViqPLC4nhzv5ZdHrGO/+TbMdgdajvua0W/JWjxQj
	 vrYv4nuSjzEUZdl1Cb852BWA8lN8f3VmqXRPt+4Xy7u2AGZx2I0kWqOgU5I8y1nwaM
	 2hXsbwcn9V9DLYPbkikBDAPdm4jgBnza+IXnwbR5x2bBZTZomZBRMP93rXJww/om0K
	 7B17Ri1hSEnOuHUFngIVn7/0ouLErFETtBLPF0tsO1e+/H7Fl+UUMutMKAVuSCG9pv
	 s2RT1dzQdIO9n4C/r/4G2q9E+Sn8enm+T0yRWOgtscu+BhAMF4/VeflZO60mO8jT7F
	 wgeJ7gv9vX70Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC10ACCF2D4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236623369.2058.11464057977065665115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54995f7b3532d26d9fc74c50fda56f89b201af6b4292ef03cee996654ee3b390
Date: Sun, 18 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792366233
