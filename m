Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35ACB21420B
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762069794; cv=none; b=WEmU4M48wcXSAEbEpxQ2VRSVf6ZAIOTgJJP7nLKSOC4dphGVtDysjCS73GTP87ocybeo4cAYUeGFZf6156E7xETHmZ+5WvLe+IZhJs/GRxPonjHILizoS1LMVsZN82L9BV7Fem4y6RF1hXeBLt9Q6nAWPHMkcyG1dNJXnMwyXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762069794; c=relaxed/simple;
	bh=we44RkCPpYiBkMThmFLe0fLakx5dCur7+Rdp0oH9phU=;
	h=To:Subject:From:Message-Id:Date; b=IWB1wb6IbBJmj8Yq3DFNhPm+3JMKpeo70TFxSvPo37sqJKRI7BR0y/ZQCRY99qm2iQRj9qnY0GOWEVtqdHH2grJOcLDPsX3KzqvJ4TBodHY8KinXaUu4rQYmzMdFTPnCiy66ehDt2Ogc0TOITcTb9RnKS8Eb8gcpArS9WK/zIrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/hbG10m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/hbG10m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F7EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762069793;
	bh=we44RkCPpYiBkMThmFLe0fLakx5dCur7+Rdp0oH9phU=;
	h=To:Subject:From:Date:From;
	b=q/hbG10m1vB1od2q037YhOQiJ1hGCEpN51ReZyjH45C4CDmN8XkJpd7TBLsBrwf/m
	 2ep2qSK4Bh7YtCs0zS4S6Nnyij7DNZ9UkH+hNVsD6j32nuu2lbVEnJpEy+x9Uh0/ym
	 7hhfffGXy/hBGj/JAVQnwVSgocYnbQ0sRSIxJW4EonjsaM2HOUJBvJGyputiw8jSPs
	 ySzH5ftfOc/dD4AK21yG7tUKZGAvRnuFvesUSxbQPXcgQwG0tclEovOOAj6KO7QHzA
	 70ceF0tyO8+SyJb467y8s4LEFJi3zpo663Kgp7HKVW6rf3SbBMZEMDOTuB/sOJK/Ua
	 YBNobYIknSfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4FCCCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206979360.15309.14065091412839772105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e5b6e7b8b4d0a7ed7c68735209427e136d037a4d0c6596b9c57c24568457e5
Date: Sun, 02 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762069793
