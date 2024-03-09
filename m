Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F339A208A8
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709986097; cv=none; b=PRPmnaktvpYTujfEKXHM07KBrGRbSaEAouCeXe038881qu3ygv2VJ2VzPEW0/gQc58Jwgouehv25mLLPdE7fPK1kdytGxIsi/2kbamS9RzGwjynFNqFs99BxpaIZvm/w3sCV93g4iE1uUHmcp6AX2ooVOgAMmBj6Xb9HgUdbiFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709986097; c=relaxed/simple;
	bh=OdF3oX1GHg4x1uHYgrtp7lHgmPKbcb84LyMJUpBrIXE=;
	h=To:Subject:From:Message-Id:Date; b=kXW0dscd1fqbQ5VaCazKIguyeI+JVb759KVAETA4ccD6ALrej7DMrPwf4IbB6LQOWyIUKAVUdQtcXs35O9GxdfbSkeWB8RQ3EsudY9Gm+D1hKDAfFevrV1t+VVnKTcyo8cO3S2ls1AyaqzQ2yRUwqQtMVC22kF9NZ4+GxwLkHLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCsgg/ZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCsgg/ZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800C5C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709986096;
	bh=OdF3oX1GHg4x1uHYgrtp7lHgmPKbcb84LyMJUpBrIXE=;
	h=To:Subject:From:Date:From;
	b=sCsgg/ZIo+Et6gbSsfqXOdm59hMIqyLTRduLJPdOG9/JbuwhabTrhitzrzHoQiKv7
	 g9loAyqUr47SKN5nJVWqbzKOD6C7iNdOYxG7KnrniHZVqbSJd0EctonwtOuoMGdeoq
	 0ahFZg4lR9bCPEcykBN+a5+KBj1lq/4C4QaTVI62RgNy5o+hmr93JJRcniX8XD47Vb
	 nJ+dHaRXJhstAv36VJwsGIzia1DHrtzq42uG4FW55O+mZYczdf+3spBnUg7nbsDwUW
	 QJ2xrDIydlM/FACfNzov4GRoSng3VRuBOWWh/0XdcebQCRi8J+XpXoaWdvLLu45ERe
	 cHcC8NuJ2UtbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64383C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170998609638.13170.11042428101654210461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e446b5da8cb1f127934c466b8ac7465cb1dfbe4c5401dd2754f48eec849caf1
Date: Sat, 09 Mar 2024 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709986096
