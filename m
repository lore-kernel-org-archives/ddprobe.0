Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410231C2437
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747003194; cv=none; b=C8qDUX1VWO/uIE2nhMeqQ2pKte2QRBoxI+3BaL5tmT/wpqpuyk/FvRSX7HqGu27Rm8QMsXsd34kW3gf/80T5bXrDbknRK7BzxAkx1xg0tGcv8tKIibJ+Q+ePE1VykpP7E2VNFTyPZ6+IcrqMOghh3+1vvOSM2TCBgqQlMIp+GtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747003194; c=relaxed/simple;
	bh=a6J49Fd8NlrwUx21Sra1d4csVYmo6cGNGWMiW/bOyRk=;
	h=To:Subject:From:Message-Id:Date; b=lhL2TQmEFQZgVo9VrK4r4KvltSWu8bUOO2MwOoLDPHYl5B8HeOMkQfhrtvlDCaf5s+ZS8bYhd+dWKQCL0eVziR6OVrE9FTQfw94MNrtTsU0Sak606GpqEamyvNaTERmpjKiz6BK7aJ405pk4Yw56I9UtdZHIS4FPMrh0tjckQSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aA+5lgyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aA+5lgyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CDC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747003193;
	bh=a6J49Fd8NlrwUx21Sra1d4csVYmo6cGNGWMiW/bOyRk=;
	h=To:Subject:From:Date:From;
	b=aA+5lgyCtn3ruKHdtjH+HrHwtXtjVa6CdZ1fM47gOTO1sy2sa1bhwU/bVhDWc70qO
	 IzLNV8N2Pm2dzBJGWjPXbmo10PnhJ/5xldn1YYn95a2KI7GfxLLsMh1oIniVsvsgnL
	 7e0yeKUJ99plCGL7HERuYW7W1lpQAsk/+uq3rGROvjMICDzKqD9uql7b4LOeDRAo3r
	 tZ7OTwul/RaTJYpIYX8Kx+E7to6wLAZlW00UfVizszyazzJK3U0R0K2G093Rne35Gf
	 UpoPiZpz0P+sqJCr+3Q55/+HDi6wBJJ7uO6DvnHzw3lN/UbGCU1eRJzY7DqZ3/zyHi
	 bkTX7R3XX5A+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02DC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700319357.1007.13539236824731286477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f7fdceaccd3e4fbbaf607461383dad46eb4b9b366a106504cd5d628d9bd73a
Date: Sun, 11 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747003193
