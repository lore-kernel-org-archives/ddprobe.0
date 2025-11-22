Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C2314A91
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763796714; cv=none; b=LB+Gc565zewJx2zlgh1bPrj6qTBoCHxTGvC+xLDMZWFnsoTexLb10aRhk4T3qmKBAA73spTVtkGb7ig2SFXmZ3ewdOVdbaG2qr7cHhUJDpBqxHxuxt+fiwzpnTPZtHW006GGPP4BFkKT+fe7pfPzT9u1klObwAeBQ5lFoMDk6Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763796714; c=relaxed/simple;
	bh=Vh4kwpj+ERzqXIjuCQynskEl/dqPUApwgXpK91YUdms=;
	h=To:Subject:From:Message-Id:Date; b=aMC9U1HSQfenXdGEyCkaewbJ1UBnMPkBWpA6kLc8VZ2Q048nYWzn8D/I6mV1In/BbYqP9JNR+0KCvj6n9gFVZnCM6gctHUuc5r622L7eV3TFP7zPNkID6leV6hpTtGLhhk6UrHzXI4YTKNNtF8N/2shsQnCt2la4nCJ9ccCs+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIhBY83w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIhBY83w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A756FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763796713;
	bh=Vh4kwpj+ERzqXIjuCQynskEl/dqPUApwgXpK91YUdms=;
	h=To:Subject:From:Date:From;
	b=MIhBY83w73+GKEiBkvh+/QNya85f7QC2yawwNAbalirv4hBYvoJeyGBJK4RDVYBhm
	 T0o4v591NOzSHwChJw3nfcs+8voEbmog/EdfNiNQkp87zO36R0HWXDPWLrW4D7pbgA
	 OUtXWmneo2G5vxoNV6+g7gcBwevqQ2dYscSwc1pxh203TFNUh+GZ9jBVi2eqYqb944
	 HP96ZBOy9Ye9DA8JOMi6zutfNiReUD+FMT9qnL7REp5ttjOnBlnfAv+gVHjGNJyTso
	 3bDFsqnxLp5PDYRdK6a4VIRjOMbEFbm3OeJks1I7ji1slwug5kmPV7u+hT0WUsVy9N
	 H/p3rd1hjTCeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9475DCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379671358.14046.11294865252929238885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e68246cb3f4da11043b874ae537deacf061b0c8516063fa966a8b95859784b
Date: Sat, 22 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763796713
