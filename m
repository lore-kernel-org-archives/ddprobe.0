Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440B04A3F03
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792328434; cv=none; b=tVd1Z1JMNOkz3fVZs9dhKbBoo62Ae2x+p3lwbvtbufS97dPp6h6RDsm9h5PJAilgQq51JBBkRZekhXKHKfIlw8v7rxrCv9QIlvLvrt8896tVc+rm3ec5ptMC0G+ipKBGGgYXC0Ago5fuAGq2PghtvHrmr8YezekgbTCWqm1F7FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792328434; c=relaxed/simple;
	bh=v7V17EEsKCacK/TSq4j9tf3jSWVk4jJEAySBtbPY9WI=;
	h=To:Subject:From:Message-Id:Date; b=DSU3yczGKY3u3AfEbt/RoJwGgLAPYchvPumjmy2ycquGnrnLzBnXtqAxev1aSTnrP8kbvDprCeqiWDVb9z7ZhRWhqS9oStw0ZOO9cVDujNlC0uWNElCO7vD0uFYFBuh4tV67dAxcq/8fTvpXFFd9/D+ujJ65jix+GSZurMoEIt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HueQzLrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HueQzLrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADADC2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792328433;
	bh=v7V17EEsKCacK/TSq4j9tf3jSWVk4jJEAySBtbPY9WI=;
	h=To:Subject:From:Date:From;
	b=HueQzLrX6gtqpGP6zxeAeh8T/vVR3QP3PcYqfohi869njeyxhasqfzGfVSkyVnxrP
	 Xeu03mrdQ5A3zH2t4hci4/eEIi9lsdcm2Yo8TRdZ2p2aV+lx6xLHTPASOMNVtusRl3
	 fSAs3Uhwsaz2oD+NRm40G4lTKBewLwPBCC5ELlFNiPG9hbn2PH+NS6VXyHx2aOdFDV
	 BjDYtb69csS6To7EqBnKMcTl+3WMAa3js8ieLdZZdsqDETOJfZhGNFHFiIgkEz/5vx
	 zIJN/C0+y4nlfGGb1eW8/ScUujBR336R39K9uEwDklwx7NZGSSMDqG/5rFw8wleE0G
	 /TvoaFz0yD0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9506CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232843368.18787.7373550328060775249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6608c2203502b3ec4d0ce4046e4e060427d8b48f36ba634c23fc887b2e699d97
Date: Sun, 18 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792328433
