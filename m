Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD17E110
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764606174; cv=none; b=YUeLDvW9WQep2rV4dmY8nM5n/kcsfhKWe2OXDBDwxJihH/rr1WYEBR0p1+HxW9AUi65Eg88eH9Ckh7GHh78EhNeeKKNEAbUBWJVmPGBKE2w/A9dsXsQJojMNZlz8uXsnAXGoPmkoEhaTIjLaGtEIF0yoRzYX4z/qZImSqK6EY7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764606174; c=relaxed/simple;
	bh=e68v8fwhQd98Q/O/o1TK+qmrv5FRohIiSIRL/nCsr1s=;
	h=To:Subject:From:Message-Id:Date; b=L9r57UlW9W0FNTNBG4tC/xJfsoHfNPXhxiYiFv4KVgfIaRpNBnxbNXzt9yBVUYk2TOG40OGoTNljgMDxbuOSlSr5+UdPJcifKdtbFWDN7pQilJHLLG5xbB1jEIbaJcYk2uJBPgL1d+XvQzxx6Dbt5zkyh4TH5uTY3LMCpdSh1As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3Vm2Z9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3Vm2Z9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB988C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764606173;
	bh=e68v8fwhQd98Q/O/o1TK+qmrv5FRohIiSIRL/nCsr1s=;
	h=To:Subject:From:Date:From;
	b=M3Vm2Z9eBz+dGTSwhne2uap67DLlAJRy9h+50cHPOJh8X2aGCdNFjhC0rYV6lo96f
	 W/9n30XgBNRAKlNcK1yhLntTwFaSt/HapJC00U599KVV0UUK38dAILMFYYyqeORJTh
	 FrM5bFaWIi3UwSa+w0xmLoKLXC/qskVzXt8Dm5ShqQlp2NIgEpOZZYHFOYsEVSJw6x
	 nMxotAPVIwGZjPcZM7w5tVPWS6827UT0vyv4wnAdZTJSk+h6pEEl8cD9gWo/bwN0uo
	 LlxoZJLNG7uzWH9fpYJr+n4ah19z45H8wonOVrqLMfWu/P7KVR/6MkXR5V1xjX0pDc
	 TsuOydNHSKVcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706DD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460617358.31662.16487876932906767453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcc1bcc9ffd28fe1b895545ff8af676e07b0afdbb8876ed92bda24f21846c6c
Date: Mon, 01 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764606173
