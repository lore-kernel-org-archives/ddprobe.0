Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9C41C5D61
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749893994; cv=none; b=GtiFPyxUt91gNSn/VVbB7vo/6OWdXPGZQMY576xlsDGfaJKao+I8X+VPehTKOAHLP3QKSDa10sVk4pZBDQynoiRH7k4bO/WCSRXuwunpGcTbNzULmtAq/cZZ1bVBKDaTXk9a2DgoirINjv1uW4ARld0tJgkk2xnwvzEQDYQ8UTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749893994; c=relaxed/simple;
	bh=UMqJZ98ncy0DMR8N5SgPV2H668TK7dda5DuDzj5PocM=;
	h=To:Subject:From:Message-Id:Date; b=GQStOeHFdle8pVO8iqMIoZEXOhPsVvZlqRhci1J1xj/+FYTisX3HfEV3KFK6KsDPU7UH99Gk4piJrU6BMBeJ0WL9YEMYsuC1p8JkQ55UtEU3hrROZ1taUy1P27JldNKGCkktCH0/byJI8g0tqyNbPbTYO/ChHab40rmPajKOboY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpjnwePP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpjnwePP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749893993;
	bh=UMqJZ98ncy0DMR8N5SgPV2H668TK7dda5DuDzj5PocM=;
	h=To:Subject:From:Date:From;
	b=EpjnwePPnXjm4T9y1XdowUnj4J/2DoD6uzURYjYH+H157wiHakPsElESzxTMJB5t0
	 0Fzt9/vEHYNH7oJ1C2bkrkR31hEPH+LqL2oPp3Z9WyeUsqKeBSgiSkdAwuTPbaRNj1
	 5/LBPxSl+kK/SRSLbbipGPcQqbqwBoQ8gUXkf1l6pF2em6zr0QJNKBZA3dNHILB3wP
	 4tTok3N72BA17Frc9X2RfwLeCjLFQ64tmXCW3zqPrYqu6+m6NCmebUVICGKdbYafSJ
	 +F7YVync8JpzqlKqIse4lr2QcgL28QziH4++Ta1yGHrlpLBmfWdUdYN+snfxh3NPq/
	 IcAmVxx2T/ZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BCC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989399358.28044.9494552910382154858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af1d0668db83b0e0adadd9c1ec0c003d303f70f892c2ae76e56359012240aee
Date: Sat, 14 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749893993
