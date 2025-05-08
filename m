Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9BD1946A0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746734994; cv=none; b=MhtVEIWqCi7UaAyqjWbMarN/qmbtxjhtt6NVFFSDzTVEjEBGPlod0InLWiTvRFi0sA0hTdFeyYit6TxFDTKle5l7gInslTKDXKiZQpcJVbpgkxqoxoceEFb2v0OF5HizoH2vdLoAgZ3276zGOLaS/psy58n8dfdi6yNldtd9S4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746734994; c=relaxed/simple;
	bh=LeP+wrNNH/x1l2JSoTZVG3Rg1yLOvqER1GKZfyW9eBQ=;
	h=To:Subject:From:Message-Id:Date; b=cHLcXYkRTYwa0ybvblKis/GrOAu6uQPdAD/SrmMQ+3HSyJB3vlglMsrusPdBWhCrOYcp1nhFJuVrLgOb5/zCA2+3mf/ZLSeYCrCUxU7VSEqcHvR/qnguFCM/5Hnof4Hi3/qdNJvnp6rKoyeHvGWzA63rhN++rUqoqJ5XxRFU8tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXFKv2Fk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXFKv2Fk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6380C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746734993;
	bh=LeP+wrNNH/x1l2JSoTZVG3Rg1yLOvqER1GKZfyW9eBQ=;
	h=To:Subject:From:Date:From;
	b=KXFKv2FkyBR4s5Vg2lJWauF/a+9ajy7RK9LS58fAgmxbrH4m758imfzcuw6M+h1qX
	 EA3tY0ZotkL0bh3tzvYV/1PNA2vkrzH28TSRKcfDvUNKX5fN5qW79FSQ7ob4y/Znf3
	 cshxIIzsk0TK8aGdixjTh68LFFlnzdR192qfCNn6J6kCt1O79yV+jJtGQC8BY4TymK
	 S2t6JhZgJk/K9a2/Y9UO4wCiUxxVncxKu72kO5AwQkXy+kIgRiXmM2tib1XrZlB9p2
	 52u811GtlFO6Zt2LbClQZKPGeVJm2f4s4NH5uKj/U/bwGljFEsxZ8NDb7MoPKRe7IP
	 8H96gU18cyNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91064C3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673499358.2205.13381057036719715686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e6a21e3b999b45b432804e6fa84cac5415de3442a56f1cf46af5c279c66ca7
Date: Thu, 08 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746734993
