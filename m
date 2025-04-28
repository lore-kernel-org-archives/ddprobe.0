Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8B927A13A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745866194; cv=none; b=c+5WJBpLQD6ae8cOIQGtKhGtxrQniWkpXsf5KwkTGkwgQqr3a0MRJhn2682OsoAU4gDelQIpKRaaKhgZJIeh5Y1m2EG5ytqx6JH+Nm/u8AQOQw9R7KukITPm1rd1f/MoYJGCT4bjx7oFIocOXab78jIMTcINJ4cf+A+QBRvA8I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745866194; c=relaxed/simple;
	bh=KOfvqjPi/Q4XjAx3dI3vJZ0qDeo1Dzarw2PBJys1WdY=;
	h=To:Subject:From:Message-Id:Date; b=SNEQEFfyKzJ4rhEocMUwCZhdUMlhdbV7Eks98VRQuUb4WH9rvSaTZo8aEUX7/qUIU7Fktil2N3MfnlDeq7fp7B5KBHIfg7glM//pFPIWjFt9knrfjL4VRqyWM9sIp3qGy85jEMJvsiO2wH7d/5iwpeTQG5/MVbL/Z5VdGrKc2Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ez1IhAsZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ez1IhAsZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD01C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745866193;
	bh=KOfvqjPi/Q4XjAx3dI3vJZ0qDeo1Dzarw2PBJys1WdY=;
	h=To:Subject:From:Date:From;
	b=ez1IhAsZVYeo/5mVohSA2FHGoCWkQrP5sFD35qrfBvTRacK7eAuwQVU1qS93wcM1y
	 3s0j/XeUk/ljtYgJmhh5F+R3K4bdDjRCImaZR6LHK2IRA9tdh1Gny/sVFtiBeR1Jo/
	 al/bgOWHujXD4PVX+glvZKsLiCPl9a0bHE4SvEeTWhpV5V0Xo6wCovcwkpobGsgglT
	 3I6t+kU+4WqTiSRso+tNCbRT6bCPWy638b64QVNBPWuYkGbAMqHktUayc5830RSz9w
	 NLTDoDtwAZT9/aYCyk8V8HrPfXKPWQ0kjjijPwpyDcOkrhBqS0snkIH8eGYTjzSWIp
	 SPn+Ze6FUSeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FFC369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586619357.21995.14079447826405484616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0247d7029a766fbf0859638bae0109704134fe35f4180879a06804e00dbdbc71
Date: Mon, 28 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745866193
