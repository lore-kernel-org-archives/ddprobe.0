Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595D217F53
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765483374; cv=none; b=flDEjukb9BKsVJg3dBUaXquZIEt4PgxpI1l8ltoi4PNwRoyMWpLHqptaB+mpmkMi8WMdm1CHIl1pnLaGmhGPRn675AjNyy30I/YmKGooL0dNOFDLFeGLEenze3Th/Memhxgki0vQWIkhTz5IhpG8c4DDDp4LqQquYYZ1j3RAT40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765483374; c=relaxed/simple;
	bh=ynR1WYdrSxyqOsh3r3Renlzw/5J9vr30qRpyeeuuixo=;
	h=To:Subject:From:Message-Id:Date; b=hBaMGheG2/Sc/S9vNjJkwRpN2UKJtNcWvzc/QSr90Aq3FaBt3KxtEQZoy+j2kt2R+JN+2PZp7e4W5xqOBDaKR+8KS/eYhl7ZiTX2bP8G1vLI4ktTtiG7UQp/sbwaP8vEU9468J4W6KixJwoSUcAfcfygDgazh2wiGb0GFTn/57c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmndnZSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmndnZSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21F3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765483373;
	bh=ynR1WYdrSxyqOsh3r3Renlzw/5J9vr30qRpyeeuuixo=;
	h=To:Subject:From:Date:From;
	b=dmndnZSgvX3ejHiyqUW5UlZgG9t+QYVGNqYig6JFngQHYDbdRtaUduUK3X9PXN46l
	 cJImodFF/0eYnHy8lAiO6TXiu4vxM+NjnCy202I8LiVYsVecp68K4RZSDBfBgQzK9a
	 BGifL2QFauIKjmKIykox9OBJWwFsgOC5DC6qiOnT6L2ReHSrD4jlyGlq1hVUPFuHie
	 pOhIw0JSPBMHORrUCMIHRjBQnZoFEH2S1BEm1JwSXqZ4TozIVPAYwNxJh4l42dGNa6
	 JTNJgf/b5Ltk8s9pxAlN3kZLbHzEdtwEvdAExSKTMa3BFMh+xFCjma3tvjscywUjna
	 xiKNvVvUTuRdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A335ED41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548337362.693.5694442322951855046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c698e3a451d713f275f35c5c4f5955b5826a798e30eb094403ddd25fcebd1d
Date: Thu, 11 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765483373
