Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F304225D4
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715520743; cv=none; b=mRRIRHcyDGrAH5G02R3CTGgZYq4ABsv4Ksdr9fbs//vWVPB5zV5K6lEmh+ytOUCeehV70F25zEuYtkDvZFC9hRCj921N1umryelFETc78Hfn3mR0pXWgJHHRzB5e94Hkgo9PznIVdgL/pNzBKy02wiXMlSxDYj5kgQbrMLM/2UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715520743; c=relaxed/simple;
	bh=Li/2862e/OIvfhwwP19xUeOHyAA3aqlYWhg8Xqqc+yg=;
	h=To:Subject:From:Message-Id:Date; b=in9Jo7zcvcVmGlEfw3QHfZmSDpnMWKJwStWa5YNg64Z4wDCVNCqIj4J9AfwHH1nU/SFNpS0rlrPI90siNQuu4FwoZ5+0G5r9AubyLZbow0XkLj2/HOpSVWpP+Hyaw9sqQjumfqC7LvWSluDSevhhOxEZMqaRRxYnlhg0q/58C6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHhBA/eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHhBA/eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AAEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715520742;
	bh=Li/2862e/OIvfhwwP19xUeOHyAA3aqlYWhg8Xqqc+yg=;
	h=To:Subject:From:Date:From;
	b=aHhBA/ePTgRI82TNSyuc55Dyu3DdWW8reL9edUWmICZ8ETrlYYSAI8T4EcX1Wttuu
	 kB1yHg+L9IKD0Tibu0c5MoJoi4zextMAvp30f6j+GT7AZLzuKqbEZesvpIDGfSG/jP
	 gui0+/6RlEGr2rB0mRi0xH/BtPQ8ScRr0SELUWhaQDOyJplo1Fx8uboJLYu+XZ2DR2
	 79Zg2qhCO6URKAtS1b/fkBpuEsk4a1cH6jhdBgRaS/znqZmphgrsXJPD1smDAg+NrC
	 jG84dsmxpOnkqcRpHc6OUpmnDgS/krV8EnjUkYZx6cUa17aj/54RkO6eJK+LmH2P8q
	 JDmMVZ6173d3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A88C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552074278.2734.7509471603879985400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e352e3a5f022a8c812a5adc583ce9b5ed22631ce705b9ce3fdb12823854f3d
Date: Sun, 12 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715520742
