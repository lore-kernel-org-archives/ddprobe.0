Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4D21E573B
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742693994; cv=none; b=bgWbOVjAfi4WwRsn9dlNe+22m6N5lE8BybBdKnlOTvcsTmzE0AAT/m/vrgmg7QoQpred74uXLZdwJIkxAdUgTfpagw6YaWgZuD8nNEJZTcC9AVGx+qW7UtRKYxnTBzHoS5VPKdpVZUnU37fbAA8HWAE8bm6mE6ZDdAortz0M5ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742693994; c=relaxed/simple;
	bh=HYMCMhHJG5bI8J4xr3t0wXqreqKns70kzsvizvF3Y5w=;
	h=To:Subject:From:Message-Id:Date; b=LBrulM5AfOEyUGrkHYZsSHD5M0E0KHXyPSfB8rxKP4vFrWiZKNxfPt8ZiDNaxVrGJjMrTPFmbjbLBBB9ur6AmIlyrIIFQ98tZA6OPhY5H7v7fNyL/gTw2WxHkEcAUy7ta1QTd9mmhm3ANNIxmjEQj0zUrUccZ09m/MKZ6k1/I7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRD4yNf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRD4yNf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1CFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742693993;
	bh=HYMCMhHJG5bI8J4xr3t0wXqreqKns70kzsvizvF3Y5w=;
	h=To:Subject:From:Date:From;
	b=jRD4yNf0y0TVxbmbwoT8BjkGMFGZpAU3xIWNe835SefrDdxkvQYTV1j8m+0qc4+a7
	 BS6mX5utEm3ukAeLQ4wBiisr81g+rAVrtXdTslrIaxwDNtQymfZQQzxN2hOl5+6qgM
	 qxzAp5uSBmZXxV34ZWuidjqugljKq7bdncuKSCwNGUM53pZfKQsFbR7+XVQcbJq9Wn
	 cvRItEf3EcwrnPGEGpxUJQYiLkSpjLc8/gRqD9vRx7GnMhXhjIMaMMLMc6PiZ5nzCu
	 oLJ3sMwW///cG9fqYSzdW/OEg8XNOJP6UjU9jkyg/yGU6zUK+tOIJcs/bT3DQK1Dq7
	 r6RWLVnTskDuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7DFC35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269399358.7720.17083260456319394539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a42c009ea3f3782f8fd3c9da2bd43379497e96c3af2f091e3a2e1b7b4cc3df
Date: Sun, 23 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742693993
