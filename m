Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC5A3C345C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784153314; cv=none; b=moAmE0MGiPBN4rjX6vw7cZjPP3B1gUn/xdFSihtOzYmE70GuX9luq+dXJEvuYY71ZbNOLlxS9VgyJ/LOTORZG8QoVKm22zrFV9VRmLdgd0wKNbGVtAzwTzH0q8Qz+jDcu5bG0KdxAe2eBrO42Remc+fW0GtbDOyJH30H0H3DBa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784153314; c=relaxed/simple;
	bh=cm2sW0HFF4MDUTndaYn6u1/4fzkn35M7Up8NOIPojRo=;
	h=To:Subject:From:Message-Id:Date; b=ssANQpRKAs1Btd8cq1ntENxFuAbQwvgOjjw1lOZ9ngth1nxdAeK3CWMht+21zFqBoGk89Pftypec+YewIjtFFbKEDQkHStZn7Fde7ytQKdHsAQ6k9XVR7ofuJFyIDlPWnZlu3E8ZJBJFJBhZeW1o0VjeS4zSfQ+cjhp+gaKOMKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvK0rSV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvK0rSV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0917C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784153313;
	bh=cm2sW0HFF4MDUTndaYn6u1/4fzkn35M7Up8NOIPojRo=;
	h=To:Subject:From:Date:From;
	b=QvK0rSV4+gk+887FoE/ThHTcC2MqZWJnZ4RQHOVKi9hEsremdRnxwAiEGcGuw/LVN
	 yR5mhMIb805/sBNMWFpYpRHh5GT5xVZ6aZT5PFiQHlc+wGZnP87j3mL5j23nFbiFTE
	 FggNl2u9pd5T8zmxbi3oDjsJRLARcY35bCaGJpUVjtvVU9B4sVBPfD+CLtBhhBvqXn
	 7mhQ3vl0xBijRkRatgvIVuDVnoVUozZLKE5wjKJhSm/cHIKqbhojks1F6FvcK91hfJ
	 gn0Te7ZCfdujLHrT/utbE5Atv7b3TY2IXvbtQqhpKtR5Jrfql0gCEc1TTzeQ/73uyC
	 sjg5danLedWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF5FC44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415331369.29264.11680402160819394692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252ea11ff77077cb1506dbe600b3fbca956074ea9364d842f3a68cc61b682d88
Date: Wed, 15 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784153313
