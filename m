Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675232E403
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718501303; cv=none; b=BSeRlMz/YD0q7/1wozKsz83csXDHUZNv8O9yqAYUY11MGCJ/AjurPNRh9Ee7INiW20xchY11cz+SrkG/j11jsHcB+d2S9p3s4Kg0gNv2zCZ9YbW1yKIKEnFgLCvw1YOxvoUmprMo9+hshjQ2acNWvJehwHsc+HOhnOE75Skcj8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718501303; c=relaxed/simple;
	bh=YlU763GY15kDabQ79TmDnKyfRDog9QXdpnVS4ZUeVT0=;
	h=To:Subject:From:Message-Id:Date; b=IOzZX3c1nWhh5AuF6k0I3tDl5UX+o7n2SBINE79+0fqThi2/eMAYP1R6y3sOlZBaxyBNHtJuQaG809mmDZXG+APUShZ4Ux0Ic3L61Wcd9Fm6h9oHJpDp7UswqCwUNWsETHIEy+0iQFzCnQXzrqVAzLFaGEVR0udvSkiPChxeVFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HemPkESS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HemPkESS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2EDDC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718501302;
	bh=YlU763GY15kDabQ79TmDnKyfRDog9QXdpnVS4ZUeVT0=;
	h=To:Subject:From:Date:From;
	b=HemPkESScnAKGeAF4Mm5zfNXGdclxGFbpDLiT6pR1BfMB0nzfL+F/kWRuoOK/1SUW
	 DMdD5b4a0cQR/iWfzP1ClE4fUYm8bMvkQ6eUbAH3SN6yJ8NNj+LmoRvi/RTUpe6iib
	 Y9AEsU50/fGOki3nX4IUaJ2z7/5OgXVcg32A6zSlyy76IGExXsFJhC+RYYMrfnY7uN
	 vqkAfAHTZUGRh5Jngk9Ckrz+v2uoTBeAMlCgHnMFb85UL7fkonx+cI6AtobQIoz12q
	 j9V5v42MRQoyzMt4rSxpuAnGlwWKmFbzlUOTYejBmRi5cwrWbN+E0ed5Su6tq6U+Oy
	 wOApnqOTkp4HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC144C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850130280.6107.12615307821438750903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7068e14885b07d7065741f2c3011d14ea2d1c87742c8dea9820be0a0bbb6fa1c
Date: Sun, 16 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718501302
