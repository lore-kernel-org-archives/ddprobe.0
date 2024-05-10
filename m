Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CE9165FA0
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715335343; cv=none; b=S0RqCEIF9rrQdj4tg1xj7SnEkFRNsLvw7dehEW5z3+C6ySWe1TmJVmpiKLSV3Cls/z432Mh2oLnSpxsXSHjMgE4DSrcD+i5wMwRCU1M+Sdu6DrygHvyvuVPB+EUhfnKkDv7Z04zf5nVEQjVMPhTljs/dgGLDj8lU48PtVvCZcbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715335343; c=relaxed/simple;
	bh=lsJrv7Iw6Pw/kKERIh0GfJw9kbosowBgqTyJEVnrXKE=;
	h=To:Subject:From:Message-Id:Date; b=gQPb1unK/S+QRIAS6jv2jCBbKmUf77wD/D9CevOvyX7QoSmtNH+E13lCzl/Txe5iUG/Ufj2ggiWN8Aow6vuTEZ8BKb8M6fsJNgEv/JXwIb8iY02+EgWHsuTMqpkyv5LBDROXjPmA3SMmFbwF29JAOOdRaL4j2BOn75WmgSPHUXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NdW4D07A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdW4D07A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA75C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715335342;
	bh=lsJrv7Iw6Pw/kKERIh0GfJw9kbosowBgqTyJEVnrXKE=;
	h=To:Subject:From:Date:From;
	b=NdW4D07A+36ORo4PxhAIcQGfXbEEGmrLK75FGcY3s8dorW8eY87c3gl1Da4SxM0wb
	 gj8d4fB/h4a9/ECjEo3Kejo0Awx+WcgfmhjyHjp/dvOxjzzRnrrCjEohRncz1xewOs
	 D5Io07Zr1EOnmy722vD4H7fac5l4EJ+jo5zajwmcyVuevxRUMSj/ReZ5QtwlIji57N
	 wVeTQ9llfDXzGAOnB+CSqfsnH4xvelWXMMrMg8JEsgAeLXzL6C+CNNVgINDg9m3ia+
	 23gANBvI8j8q/0ir9nYWfEJzwR/I0+k7tDNdnYuRpali0mG8FsySIXJWMnEGUVHxtz
	 iEciP5/VDL1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9365C25B75
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533534281.15309.4749420384288339394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac61b690576bdf4396b037b60fae7c66a4b332ac70696cfe9456c1750e2be54
Date: Fri, 10 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715335342
