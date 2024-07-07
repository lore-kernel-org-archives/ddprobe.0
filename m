Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B5FAD48
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720349183; cv=none; b=GYucosBmN2HezwSw2ouRQyvbpU8Q+hekaB0B1Rw9SYQpOIXGvWnRrmHdHt5wDoj2mN1dTBhGhnSGUzzW6udB2gUsD1ENWEu6Ri7lGIIqdP/fM0FMcMpoDiCQcuohijHbP/v6Gb+Kl+3Ou1c4PY/ryRqO4NJtQFEaJ+DweVkogt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720349183; c=relaxed/simple;
	bh=0CxWgq/bihB229rivbPa39dwQqo4CbJX1nEZfEUuLsg=;
	h=To:Subject:From:Message-Id:Date; b=sLehEYNwDmUaegBrYV9uavKxk+/Dosfmkq3UvZGZIhXRZdtq6yH0kje52FqbxtvF67S7vAGIhalfDK1yTgKnfXuq2wSC7iDl8orO4XYRA/gErhLI4scwlzJzDqp+K7YUFMDW/s0yT3m1sf753fxyZhuu9E4R8+9rRi4bPRhrs/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG6eih10; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG6eih10"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9E2C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720349182;
	bh=0CxWgq/bihB229rivbPa39dwQqo4CbJX1nEZfEUuLsg=;
	h=To:Subject:From:Date:From;
	b=uG6eih10Ad2hmAB68NAxaqZIb4ULT4q6QXs383MkQhSTWT6lOeFjVNMoJkNtKwqWt
	 V7hjyaWcK1MagfPxJtZyPF8UUv7lOSwhEzjF73viQV9Ie2aAySHDG+mQa5oIIuejej
	 +pZ5dql4clrsT6JNzngtSdGFwU/aCr8C0iKptbjwUbNLOgFByvhgzhokeaELRZ6MdX
	 4wigMhDrtuH2nWqR8MUbpgkZxUoAtkor5aT2mt+Ob8lPq/bx5Qm55muGs7H6XF58dP
	 C1KuH8iMIdcKWCxvI3q3eVtlFoPs6ukm6WkJIMerLA9Gp5/NkpJj2Sd75fhHGa3GhP
	 ves3ymEI1wEOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3046C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034918276.23822.9032132330166177515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b236a863b352c869f2e3504098ae0f63cf9dee8632e2e6d4ab9c62333737c4
Date: Sun, 07 Jul 2024 10:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720349182
