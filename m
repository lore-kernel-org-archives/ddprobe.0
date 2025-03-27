Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D601805B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743046795; cv=none; b=NoVz8s0FKJZDgSsfUd+58JAlEEeULit38JtFVLOuXK9bNp1lh3+homXkffVbq9uzDjD8gmPuYhBcSM44zAV6DqAhgH1e5/73jFrUrm/qRxHlAzPaaUuyklHtP8gLf1bIeP3WkY4AwfhBzg9OdoAd1ge2qyMtxIEtJ1b3Oca1PQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743046795; c=relaxed/simple;
	bh=yVJUhRuuIBO125GuMUsCo+AAMkZk3BqVlkCSzlCQJS0=;
	h=To:Subject:From:Message-Id:Date; b=ZfJ2kV1vjAl5Z3lrfxg1W8O2hNU5mQGwO47D02UHG++13dIVWahyMasFiHnBKD8UmyHsXkM/wlkJ1bpvNtHLFUERRhZ0dmiorBUzaWvFXxdb27R3DBSCGdcZB2YvGeNSr3D6BS5lKFzOR4a7Juq1QI/9CpoNZZLAwU2vmsdgsrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRm3vhTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRm3vhTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E05C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743046793;
	bh=yVJUhRuuIBO125GuMUsCo+AAMkZk3BqVlkCSzlCQJS0=;
	h=To:Subject:From:Date:From;
	b=dRm3vhTS2j2gCq1x71uqOUNj5293JKUJgL0x/x+JjYuCMFRWLl/QGBKzGlj91Ly55
	 5a2NdGVAmz6FlxsKJZsTkfQl6lamDbROLPIk3UmY2tiNV9moVRsTgaeCGrzP6TNOPc
	 7XGyu5vsQvqFX8L+cqsMI6UZURX+dNwAcU9RNov0YRRBGO4le9vJJGFsJTMlSNt8ef
	 nCORQpeKrK691LzLNr3X9HaQhp1p+oeK9JgX0tM7uqlRPiKajIv2nhuCK78HG61L2h
	 vAi1+hF/u+ziJ8AKTSIUNvH0f3rv3Z+A9E5KJGCOp9hlwdmtZNxzV7XxtMG1/k0wVD
	 0bOGcywJtsxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CF1C36002
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304679371.27523.947823095245351732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e36ff210e2d20a5884155792c6d6e0503d882551f7eb83a8e12cd087de8fe5
Date: Thu, 27 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743046793
