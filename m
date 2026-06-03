Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444944921BB
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780529074; cv=none; b=XOT1qOJkzDUUOQ/h1/tjKJoqUmqXPGnGEFgt/RYcxyaA/22SmkXARudHyejX3dX2BCx0jpK2zuLbBWP03y78hMPYw1shnmKFjUFzd9tXDZ6hqjZnKY2ShRZrQ56Npp+qSDPRbLm+AUSDiwCo1Ah10uchSMENGoFCxDtf2PS/eF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780529074; c=relaxed/simple;
	bh=Zpml8KLs2vRVdvsg16v06fV8kDkiQ7BbTxZhRi6+h80=;
	h=To:Subject:From:Message-Id:Date; b=s2zaEplaDouz392D10iYsQFruc1PWPA6eWlGimi9mMde11vmH7xEwkKtiR9jcJFZS5SBBwCMt1461Z+sHH0pMwkitb1nqBHAtqJOtA5E7SPhrAodWxk5txXsVrUaSRSeD6ZSgEy1naakRSGHLicadrr+RaRR6h/llgw3WRBT9X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbBN7QQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbBN7QQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F03C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780529073;
	bh=Zpml8KLs2vRVdvsg16v06fV8kDkiQ7BbTxZhRi6+h80=;
	h=To:Subject:From:Date:From;
	b=hbBN7QQ4zAh95B0JGD+CnSRELYW/n3F9C2om9C4sNbT7Upc9vZzo61tcDuP41MRK/
	 FdBhpb0UZci6xRUlcAuRh3SJ7k7tyz/0F9kOiYrhnli8oZ/+2TYaQGF41SsXtHK436
	 xpuL9bo3jJMWWug8J9vElco0PFaWBNjV9/xxegmR8cNcZyProWjo3qLZ9eB0cUUOW5
	 KGMDP3TcdhshYkubBPHHGFSBJjPXEYdz7c4xAR/4ecXvPwmyBf65igpxYTdSNJPEGZ
	 85npSFZz68n8JSIVV0iwla8HW+Of4cN9ph8usfYw0kzJ7x0KN+U1zf64r2jQ0/ABbq
	 1k0+xkwE0zSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68F8CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 23:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052907373.2243.10781381359714083919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b087b87f7b09247731cc137acc8c3a0575649388e2d6439f5f7c16cfd0ab84
Date: Wed, 03 Jun 2026 23:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780529073
