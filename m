Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C6B3563D6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027834; cv=none; b=DS7wOMJA+kIMunY5MmM29gxPe7bZCLcQzxfmsTJyzXCn38jbaBAzFm4/1aEZx2FKZK/S6/2LDL29OYGgQVeAMFaJ68IsaMi4ekwrU1wsLoXBkkNKTejs4JKdlHzwKn91GdLZtId+fbpaoc6+aIqHK2OP8+Is6b8SXZ/tRFyLXa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027834; c=relaxed/simple;
	bh=tOrU3L4SoCjRQYYRQVbC/v0RL5x34llQajgXOgxfTu8=;
	h=To:Subject:From:Message-Id:Date; b=eMKQVXL9Dt/eUx0ksjaTg+DLXQaG8n5Rk8GxS28bGKX2FqP8Difed3oPoKB4xNSMLPbUdNqwdAVMrtO9G1Ji3D6sYmkqHm/khyFC+KabAnqJnuOaYOXJA7D+cz/XtZuWsDXm/LaYphUG6p0BH27xRJYVPpBxLLS1epP605erIoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FWK5n7Fu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FWK5n7Fu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3362C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770027833;
	bh=tOrU3L4SoCjRQYYRQVbC/v0RL5x34llQajgXOgxfTu8=;
	h=To:Subject:From:Date:From;
	b=FWK5n7FuYpEtwwiWLjOAG+vtekXTYQTvttfq7d3Nf+JE7Ly3q/59Oja8UEvj0Ck7t
	 w5quR4yzH4jbXSDQzoqJ/ZRVXVE2jj/CAD1zo8ZFm3G6taDNaFx+FJmlp2w/SLdAAi
	 Ue4qA09CM8zsXiDra8mtRItUFdb/jFeBX1P3CDRuhpMmcG0HnKLBaFh9NO8C5F34k8
	 uoM4c56QxS7T/NyWuJQt6DteoqiSwPsbSQXSOvSJGRvs426sEjz1/WrZ6s7+r2jNN1
	 9FuAH1Fg9pwiCO4wqEMgeJEQke910AxZSRckpKbEG9ijRaC0AlJgpP+2257XmuRCnC
	 m+jnLRdKHYbwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D94AE73153
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002783363.24149.1254120610170872486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf5b59a2058cfd2de40b3a52f2fb06c1bb1f058d3ee78c63bd9382c7c0344a4
Date: Mon, 02 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770027833
