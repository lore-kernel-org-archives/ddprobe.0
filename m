Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85ADA30C164
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790949634; cv=none; b=TDyS2Ox3TXGWJDUB9O3uU2i3lgqPiI+Mxgp7nCGSZ3YqO7Xw32lRZXrageuBO/rbcHQwCmwC6pKsEiYt+w97CSxEIdSf5wZ+bqYO4TpVQ32fpIOoRQdedhrYNtc6lA1dfhVtR65n34Ta37E6wfu6SF64B0BqW0N8rLCfji8PeAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790949634; c=relaxed/simple;
	bh=22OItoqENfa43GDBKkHE9FxuAfAaz1/t930q+hhMes0=;
	h=To:Subject:From:Message-Id:Date; b=AMHr2ZX7y6/LJgj3Eneuh0sPXT1i57qpARKmExcfEVg8vaem164eVRAtNlG0bwVRlr2/qvXbNZ9smD2f6noOLPVmy+z8Z2i7QZG8aP8qIGLhPDQPZOXbXEZl28X1nafP7FhGh21le3jky9a0WffcMbha6npUQwhRviyIUjkpTbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcBcKnOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcBcKnOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADFCC2BCF6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790949633;
	bh=22OItoqENfa43GDBKkHE9FxuAfAaz1/t930q+hhMes0=;
	h=To:Subject:From:Date:From;
	b=fcBcKnOK34GOmyoOWDQt94KboVhVeTK7Yc1ye13UEWGLhR4jFJDRIQPfIKMpnYc+Y
	 7UFrGCyN0JH4MY1Kq4owd3uayHOb0WCpo41ElffcuKmRhIk3PBhFZty74m+b7MXnbc
	 FuAei/p6LtCHit+plEJFBEZA0IAbsGFiXf6/RgF4X02DYJkzdOdwn7gsDztE8LwjgV
	 pAhQXSqfq/dRDC2UEwVxbIDIeZDY+LisLtIgJpSLznxpaY2buLAWraqVhJ3uENQbON
	 vQZrNiCThxT73lHboQp0+EXx1MExoCLSf6aSPOzBexO2itoq6FRoCLTeQSyDgmnKuc
	 NClMYMvrVO50A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AB3CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094963368.28707.7560948371547272231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77e3f8fa961c6a1d21d8703cb717f582009f6937b359eab95c3e5bae2b35b6e
Date: Fri, 02 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790949633
