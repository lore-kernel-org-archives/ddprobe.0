Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8B120EB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749496194; cv=none; b=bucRI5QpH1sBSGWPh0Qy3WhoDrY3EpGoRDhp5K9Kk6hVqr2TBjQcSdfWIu0yVEdJTK/mrgGl+RPRwJaZViU+qjTa49jJe5aPPQ1lklah4kPpa/CutbMln6VxyAgTKUYXGzQElD51N4q0ZAfqet3NSKVuOwlN9ammhBOqu03lD7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749496194; c=relaxed/simple;
	bh=Eun5ay8Uvudo1WwPjvaPEtXovYoHCTo22zcoGatU1GQ=;
	h=To:Subject:From:Message-Id:Date; b=YhqUTIZrdg3cVFHGd2i/T/+M0QoxH7EJPTSqA8BHM/6FEryl+jlt7gIDpgu89FPuRFUQHDK2ug3m925gUUTY1YXGbaJJ4ddKwtlrB2HbKuJr3K9CtBvxHR/pGU3VTy6Hed5FbMJaQUYSOhQ8+dxF2xVfjc33lydCy4yJ3QhNjj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2Z152vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2Z152vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F9EC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749496193;
	bh=Eun5ay8Uvudo1WwPjvaPEtXovYoHCTo22zcoGatU1GQ=;
	h=To:Subject:From:Date:From;
	b=p2Z152vs048xQ709/5/vnrZ4b6V+KPPGakrdCErraMBsCI6lx7u7a69H/WSBmlOpF
	 dL09CN5U4sJSekH/MEaRLE1U2xcofL41W+u5zN9AxMEvi898Mj3cWNybyCDRhuDIeH
	 BlJNArj/4ae8OXERocyPYVaQ1bTY+GnewZbELVLWNWGU7C0xhHf6d3i8JnHE03zfQR
	 T2ytLD5U4ssqoxHOIlIp9yseS3MGXSrSYvHKVrX5qIzAw0jTyvbDv4Ub1wdOEK+uUO
	 Si301LwjJeGijGp3VfSRZOR3K86aml6R1NZXpvYUOsAHgZiCiukWOsilVxOPy5al1/
	 +cj3x9bh9fyuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD02C61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949619357.18567.1123119287104005532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e78af498caec828e24f1303f689ce9f7ff0f5ba9167135e4540dada450bad30
Date: Mon, 09 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749496193
