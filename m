Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF61A4F2F
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777081054; cv=none; b=CqR/h4MbZxgndFKSF+MXudlDoTNu+YdIcP5o4z0p9z+wNeDal8Yr8OaFZobeM5FFbSxyIbF+mKvmFu4KoAO3EvP7/p7wDh8tmvegCeiLPfAE3IohhLV2RWCdzll/bvwMxg9GChXES216LQAsPJ/vuctLLGc4XomYFJWmZErIlq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777081054; c=relaxed/simple;
	bh=CF/LlB7hD5ukgMKt103V7eykHNdXWTq8xIESn/NsUE0=;
	h=To:Subject:From:Message-Id:Date; b=REACiB83OLmAst8IC+0GRMl0rLLEVn4+RGowadGKR3RUE8qyGk2iwo5lc0pxy4LvzKANYoh+y6x9E1FmQja3RkMJdljBQXjtcSoeonBUWRUswxslA59FS95SqNLCoHgPkaWGxh8ATrx3pxHNvkAYJ4RO0/Npz4vrPQoaLQB3LuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Goo3X7qZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Goo3X7qZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEC2C19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777081053;
	bh=CF/LlB7hD5ukgMKt103V7eykHNdXWTq8xIESn/NsUE0=;
	h=To:Subject:From:Date:From;
	b=Goo3X7qZeOsDHg1JKkNMSq8Z1dxZ8PZwNwQTvgLwsqI1D/5nKUH4APdJKpsAFjANE
	 Wp6Sp+Xuknsq+1PdvvdU9J88y1k1BaQpNnU0nn3HZTVNdh7TB4GDDRTyL9593zNH+p
	 E99o3fGygRtJ9kIy+v31u5q1Ac32Ii6PTgeULOQCH7w2H35DpjskhrTWZkVqfy0B3m
	 RD4mMr2FowJGCWz46Q5Sn/oWHBrEjC6tXTW5tDYtTPJFlucK0fFRBeq8IDL89eAhn9
	 E/AJZG7IFOs0B89Ik1SYI2OWC+WWIL+lGTsqzpTlcjGqHAceY5XGmHfoimv6DJyCEF
	 xJ0vEeEeucBKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC298FF8850
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708105369.18204.2320766320026895370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fca83861329ba7fae496bdd60434ac8bcb89ef3ea4611c53366253351937c0
Date: Sat, 25 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777081053
