Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECF62AD1C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748771394; cv=none; b=W6TtdH/YT6I0o7tlphE1ktq7nUu0KjxM4ZB+7lttzZZihY0YtXe0F0pcoyeT7yaRCmPGT+w3UYglZ0fd1Hk4j+SaReJVil12Tm7xSoLb7z/bfPLJH+uAsXhnNfZsR2LsPk0m70Ht4H/mtIAvOnSwfP/7bEiXTS5/vdASpF8/O88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748771394; c=relaxed/simple;
	bh=tNvlfVKhGR8A+PliSXfyO0Zti+dlXSCTs+eePvi7eP0=;
	h=To:Subject:From:Message-Id:Date; b=SrtX72FYH7DsK+Y3n3wjsJ4lrRsHy9uDD7t9JgEAjInNQXjCPhQvygKWzcmugzveTdqHvlcfqzY+ZPum/OWdXSBfiNkJ+33fArVZHzbvswoClv1kEFXG4FvQgcZ07aIT1uamxR94JfxJonGkCxGwGVh7s1LgjEbMEHHu3Cnkcl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAxppVbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAxppVbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A155BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748771393;
	bh=tNvlfVKhGR8A+PliSXfyO0Zti+dlXSCTs+eePvi7eP0=;
	h=To:Subject:From:Date:From;
	b=bAxppVbmzsOzM9w6x6vaosnXZfAYCIAB5gvhfsABPRo/1+dHigLvQ9L6V2lY8Sl1U
	 RWkPq+sQgig2fmXuT+yt6ESWtXOsjpRmcwwV0nF9gthkNSw8q2wwldJj9Psf281WsJ
	 XDe7xoFIv+MGaNj0IcrPQkdrAJs9Z+BusyZ+KNdvkEsluDm7p4gAxZbGcUqU+JGkF5
	 TGr3PmpS0JuN7viclipbYBeUYEqC0Pc4ETE2tNlZrdUgUetGftnpbSOaDcJWFGGCyT
	 Q1Db9tzJaJANXCcf/20sFB80PwOCmqW9E+yaBTe4xfBYWXfewev9GAaMyLyJasB4oM
	 Mz6TQ+ovDdkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F155C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877139357.28473.16901355007357142569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7137a6b85d918ad707097ecececce8fe6ff4619346ec8bee047fc09a4f23980d
Date: Sun, 01 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748771393
