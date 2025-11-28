Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F621D011
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764338574; cv=none; b=IHpNCjaNudw2vhPajttjWHqfGPP432ZB7fnXwC45qNltzm64O13bPVULUpWIMOiREasa0qvblL5LyWyEL8IX0FgYUQ30SiHUieacJlxOtGkUQlsil4SgMD8Ig3VTdfMnvlKvpBQkFpakraNs+4FgUM5gl6HSZSr8c5gM2vVm5gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764338574; c=relaxed/simple;
	bh=j+M/nNE6BjjYCICG0XyzprPxRp9CwbGqgVje4HWbon0=;
	h=To:Subject:From:Message-Id:Date; b=Dj5NDAapb3V8NW7S14/4qI08LJZUYToFtY4BxEYsmAgi+2vuVjgpHgl217t87EgMPnJtSpi7iAVle0sv6x0Xo5RtK8Ur9fizohm0ueACxLhZIelJLaGLQIyW9SLKafkzE/c2RMGai/cx94fvBxDJmQoH6Fsc8EvDiPbaqV/rOHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ekklar1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ekklar1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3316C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764338573;
	bh=j+M/nNE6BjjYCICG0XyzprPxRp9CwbGqgVje4HWbon0=;
	h=To:Subject:From:Date:From;
	b=Ekklar1mWELOvhfX/g011R3JMHhEai7AmB7BL3XslZQskd9gKXN9HqCrY7ak3znY9
	 3xO+vfCAZ/wGMVIEi2cmPRBWgRNeqqbI87F96DRKP1A8YLn4LFFTqVf1iQ6+sUFXce
	 zJLQlmAzKcET4SHDsQs9tiLW/F7/iyxzjMu1gURw5bVQe24S/mbnpbNK22oq+Is2Bc
	 waPnJPBZ3HDmUJvIEh7KW39mo1jbxl514GTR2tPFX8NEJ1TOGI6iyc2hHPqf4nUpVV
	 sj/zEzZud8V1Rt3VeUK252VBRLwXU6yFl4PJKVJJwyc/nVCXyHsoWxNW79qxFkbuos
	 jVPfllVf2zapw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE7D116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433857358.14420.603896381312196737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2807d66c5cea5ee743f0d3f8dc7d0a2c634462f5111090379d89e09881f1f654
Date: Fri, 28 Nov 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764338573
