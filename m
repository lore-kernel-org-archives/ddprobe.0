Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21730219A86
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758386994; cv=none; b=CPbIHXO7wh+axH//OzQOJVKeKaK4vrolWklCS+t72y7Zsw7MRapyKx1ekw+e3XgSJsoxBlNCgMr/J9eSURafTzJekO8BBc0PPP5kTIiSPl1ENBH2+Z2izGINkUKghwi5DCREcdHBmK1hJhd7Je86cZ4Uz1hNtDDxgStVZXjamZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758386994; c=relaxed/simple;
	bh=SObPO9PNmIMmvJNqdgwimeHyINB1efjHHhISQUZzfRA=;
	h=To:Subject:From:Message-Id:Date; b=phuSaELvriFqmGS91JphYoAuglaydbyZ9mG+Fya4JYk3VOOoxjFK+22psGCxW12l2erZ4FnnX7k8CYPrHdE8q6toWqBOHCKgq9zrfAIxqPf3UJe7ckJDwEgcc2EZRBCatkkmQ+c6TvVdm5Ok70nX+GwJUalBtATCxRv/cSLWnBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4ApwkQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4ApwkQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A181CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758386993;
	bh=SObPO9PNmIMmvJNqdgwimeHyINB1efjHHhISQUZzfRA=;
	h=To:Subject:From:Date:From;
	b=F4ApwkQa1UC2MzkvEq9fJKQReDAE4SAfb0ZHMRf+nHwZbYFoMigdb/vqosorbAM6v
	 vF4MJg7+upMJE0WIYCF8RP6QwfVuTcmFRHPD7cx6MxToB0zHZuV0x90M/akKA7lHNk
	 I3g3IopMEBY09cRwy2mA55N98MiZdldlSXIKw0gJNxegzui2e7q3F3h0k903VukIPL
	 akcs7Ajg6LhUmp3C/uZliWPkKX3GdArRyyVPfp1BQ67Tx2K7W0REaCdG9Td1k3Mmv9
	 7pnpCqyi/X0IkV/2+Q2MPU3xB2a+Pxi6FyE3aYcZCMQgVxMr5gE54XV/dj0dtaQvI4
	 0XxJjavK6Y1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FECAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838699357.26686.9015191168777625866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b9b02192e5e0486abfc4eaed80b187fba360f20a2416177947f1de7306d941
Date: Sat, 20 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758386993
