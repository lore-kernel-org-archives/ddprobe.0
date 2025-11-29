Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B33D531
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764377574; cv=none; b=lHRW/rZ0OxIBvVGmvRlXhIUyFrbyhrh2/vESPCMGEkiobl0kNEKYzBXxB4X7aoKuLeI3bgwmtGqcsWcAiMQpXq8VyMUMYT+Pfxe3x5y7XsVXAg7q9hKckEksuGysLKQowAIuA8vJDZeU0ksuC4RTkjrTB7dyYnoQcV9HlyV2kiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764377574; c=relaxed/simple;
	bh=Z4If5joHPl+l0Bgl3InCkUfdzjUsn96nOYxlMYz6zWU=;
	h=To:Subject:From:Message-Id:Date; b=Tg1er7JqIZ2Uw19ZGgmVlne/2OFel9EgVSvP8WyfyrNZrH93YKU5M3IM6+qv7SwrKpITs8Sc9AtiHkHP4+MZFHU7geEHsbyv/jv6gTUTkZLQnF/8l22/wV9BFS56lorB41Dn9vYoJeWvI/M7bsGH/lz5kOOOjel0lVFN5SYnP90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXUVBadO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXUVBadO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764377573;
	bh=Z4If5joHPl+l0Bgl3InCkUfdzjUsn96nOYxlMYz6zWU=;
	h=To:Subject:From:Date:From;
	b=DXUVBadOLAwPw13PQmYRocMTo5XnJemq/fYHMQ21Wt5EkLdxyR7YXpH9QD/BRf2Il
	 8th5GwuRx4RDmsPIaVZfKB61eqboMcpI/38kd8fr9CMx18Sx6CQLh9oJEdXJYgpIL0
	 /yMw4QMJgJ/22tw5ONpxDbFBkjKp3Un++xY3Dy+vN7MORiAbcYTINCrbp0BOe95Jwa
	 2N0hrUuwQThvssYa8971l7EmI0piHUr+1boRqTnymYUDuIp2Af/hBo31gPekTP8cbF
	 2RR1PbJAgRmpgkKyXuj4uvtoszFJf7uqoOTFqh9715CWWa54r+FSUcR9McWg+50mX7
	 /UyAa2FoDo9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96970D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437757358.1215.2249718932648177538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d3bcfd1542be6ea5f118cb1e510d01348496032cccdb04e625acb87bed1261
Date: Sat, 29 Nov 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764377573
