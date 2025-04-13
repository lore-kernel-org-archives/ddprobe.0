Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D265C1E1DE1
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564793; cv=none; b=Qvcb/Sa0AWZo9zkbWAAmukQ8w7gSr9MHYB2EkBQxXTbgVrJamclKxAD5S87NKUiZG1MD8MeuC6KU6Cxvq2zX5wuSsCYVuzOM1Ibv6nIaL/CZw9AwWmEzERPXWNI5b/drAnUFG/70YdN37GN7Bmnr4BeSqWNlKIhAtgjT/TnkszU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564793; c=relaxed/simple;
	bh=ebGpJmGcLyJAcBM19w2tpL3+Q8TFiZ34q8CkTRM8AQM=;
	h=To:Subject:From:Message-Id:Date; b=afHLX0uUWs3UmfySfKBraZ7u1To+SUH4ORbBiFFORLlt7NgXLZKtV85dzJU67VzSBNzl4YFD/zw5yjDejwXuR8tacXxqotw/5gsDtO0MViLth1Nw4MqiRDklzB0QxhbY+yCMazPgVIoi1SIS7nOwrU+BpUnav5U+nlVuN/8MM04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmaxVmvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmaxVmvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36E3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744564793;
	bh=ebGpJmGcLyJAcBM19w2tpL3+Q8TFiZ34q8CkTRM8AQM=;
	h=To:Subject:From:Date:From;
	b=RmaxVmviLxQdighQahFDzbrylgnEBLxtKsUk18ASbXtDjV0t7CyWM3nA1XPdet05R
	 6NhhHw3QYs1q9lVGhctZSz0dmAY482eUnyqpLT+NGYOkt+l7tRhQfxeFi0BApc9zyt
	 JVjy8gjiM0nOAPLQiKxrDDyCLpsMrVE4qrTuXS2lglydNxE0AjITBOQILma7OwT8h6
	 Jo4ZJZ7xI/06b/96Vigq+kJGLd4BWkhPu9T9KsXg9cySOVOlu/9AuYIVZKbipYjHYA
	 rwq9oLujz1etDasJtKs9Cv89pPXC5hKHXHboRQcdKPkgcDq5CMWyMqtzd2HEtfAyHd
	 ciTFKiF3NJz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D12C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456479361.14172.11755872908727818194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbc3149f73f25fefae8b52af539407e0c024defbc2258cab9eac6d1e75e87bf
Date: Sun, 13 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744564793
