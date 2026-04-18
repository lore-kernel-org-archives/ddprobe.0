Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0768E2628D
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776491254; cv=none; b=XNAqx92jKLuoR6R1mBQCpe4QMlZCgp0Ps78t6HIWdilkcgl+BWiKIMUSE4SBNqLkSUR0G7smVbWKDwy23BHiUMkZ7XgA+2mrA2DVBKBzCfuNU2vOcWB6wktZ8zvfZ+m6794OL0GvqSq70AUpwEKjRoRp67R+QqHEzfa4p0vf5kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776491254; c=relaxed/simple;
	bh=GaM/UU1mBRtTQvqJ5/abM9Uh/MJICtEpK54REWIgWL4=;
	h=To:Subject:From:Message-Id:Date; b=VSpD20n9U3/Y8WFY/bP7IbUX6oERAuOPTaG4h+590uahoQf0dg9qH8hEUNBczT+okzFyUzYMMqDaTeq6YSNDN5aKnSI1QdhIX+nNoWbasU61I/niHDjBSJ2sYE+LIIoiFZQ8i89W0kr/8z3MhvP9iGQMKFTR7isB6HVhibtl6Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUyNHYhH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUyNHYhH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B290AC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776491253;
	bh=GaM/UU1mBRtTQvqJ5/abM9Uh/MJICtEpK54REWIgWL4=;
	h=To:Subject:From:Date:From;
	b=VUyNHYhH20cwTgHcYkC7hpQ6Qp79Y8FwC/C5p5Aw7Z68nF+ReVR2ydCdWwE92+QUw
	 5QRI4jKxkdLK4nzh0g1dX9EdO+RwrkL8A4ksLQHU+UcKsWqVT3oLTtv4m6Cq6VEBu9
	 /CKyiykxaQeoHL9jDuWL+kayISHVndRycDPshD0TUwznyX1ob0buBWEbl2QOvTMxuM
	 BSOOoesOZ8AzxtiEo0Ew/ZzN2F+W8aTrvcgyqqerKyqnTM5TEq0xHtc0IDqjln1z2e
	 s3w+XICdbJadBnSgScQ9dCCSgLOwwILzdXjy+PZPCndBmzjQLPVxKRAvGw3vaqW6tV
	 3ToERmatNR4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C4F436B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649125368.8737.442287854385668131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee185cc243034227eee8d068150f72ef22820e118e4206737a305f29a2466480
Date: Sat, 18 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776491253
