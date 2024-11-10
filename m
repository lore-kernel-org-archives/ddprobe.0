Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A221FAA
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731208554; cv=none; b=H9QdIkrCpVGGpyb5FMGsD4vB/V5xe423Mc0Kv6MnV2ZNUmzuCU9yezJtcFPolwwQdPiT144Wgo1gdCZxiOiVAwGQCfrIdjS754VzcAVnXkw0qCDPFLRhB5wrYE6s38QOsFvrVFFpp1Lq84QM3mr5Ce/vFNZC7O+H8jM2OoBW6cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731208554; c=relaxed/simple;
	bh=ZvFEhjWLh8iyTjPGHdhNkTbvjN/tGc5Ofs8YsDrEcwg=;
	h=To:Subject:From:Message-Id:Date; b=EI4vif+AjNR8CjKeI8B9uFZE1l6R/kHXROX8VVCGTITj3QXWxPbMd0AfjNgOKOQarEC1vo3Kluk+cTnc4z+laxM9Re5pnJ7+PCStDnItp/Zoca8mqurJke6XgOkMhSlYzRaGBcjUvRmc276Jkx1WZjF6du7rIjlSfm14Drv5tYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvLcVAYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvLcVAYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD74DC4CED4
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731208553;
	bh=ZvFEhjWLh8iyTjPGHdhNkTbvjN/tGc5Ofs8YsDrEcwg=;
	h=To:Subject:From:Date:From;
	b=LvLcVAYQEk6KsXZ4XLoFkpQ14K+1aXtoNsGe+rgi9r8doyXj6DPjQ9hHhfRpd5OPC
	 lck1vdcooY5IRPessnGGwHva+fhumUROQdrVGw1a/Ub06wJFi5XHqXFKkm25crX58m
	 zOhigN89HVW15jToaBI5OIQ9A0iTX7iTyywARqVrVca4fQ3BIX4OvA90oFiP2N49AN
	 y6ePS2gmOIzTibgInjQLd3oERMJmnksNX/9ITyzIf8lWpF2FGtYS3/KQXpgkCyOpcw
	 fQbmKiTc1vDOfKDUdMmM1164fF1uRLbYBZiJBvrO6lfw1EPSg03vfcIM/sikiJss1R
	 t2FgiS6JNGsdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89ABD5E390
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173120855362.25446.11191147121429339411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837aff64b6c8342137cea1469e7b432ddddf399070193f8638387eef3cc198e1
Date: Sun, 10 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731208553
