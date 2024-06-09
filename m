Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EB5BE4F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717921643; cv=none; b=XvEpedWRJyEo8wB5X23TD7/IlNB4T2wWqstO7ukP9BReQF+2jADBNnxVz8Mzu6yqjra5+XRAr+CMTmbQkNLSykWH2EmdyTRzFnRWxR/S6z24fttOvAv3hVh2+uKGn1snogL1SuDX7lRGlRtmpNxP8R/gJHCfgVzhpU3gaGvlzvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717921643; c=relaxed/simple;
	bh=VcoiODoLjtPPU143Gxfz5NjIKH65GWoFqn5Idg9wWqs=;
	h=To:Subject:From:Message-Id:Date; b=AteeNXDH535q3tq/VLwa+qsVCW3/1/YvRrLP7Jmxbt3AAS9NuhPWERWkfOXSLRs8TbZRkNIiHCs2LxVfJuhK/7kNE1Oem3gHeNc6ikoEsPN5fmehklA4sk78eBYZxdjq9XPUzlEVbiZqRPYXeBgB0NheObUYFwVD+ezbHna6tDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+SLx1zS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+SLx1zS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2531C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717921642;
	bh=VcoiODoLjtPPU143Gxfz5NjIKH65GWoFqn5Idg9wWqs=;
	h=To:Subject:From:Date:From;
	b=t+SLx1zSSoz4Kd8+d22bxU1G6T7LPv9HV+mbaK4JF48C2Ei244IS4Vj7fFuH/m7cD
	 lNa0Zx6Q1gvANTntZ/qCbsAlJ9xMriHfV7ihlJ3BLfi79yRucaP5AP0T37OgBTTNWu
	 LMfbHZUAFcFpzwykSqH6RSjGVNb5+xF/YUi/kiLhDi87YR4Mr7LgOlDjzOU7FUwLrF
	 iPSJ0kySJN+pts//hS/snJ/mhsKc7RkGTSjZtjrwnxojgJfoFky+ajnif3m8LanI3t
	 nYIzoCbNw5IEiKeihSuiZtpZvlb55M3JVp43/gxhkfRzrvsAzNcKtpCNLJFLaPYksh
	 P0XG0MInalcwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C969AC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171792164279.8833.677165023676477980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55e461966689ea3ccdd27bd0156696fc36f93d78a4b242d5efa5bd2e7067cd7
Date: Sun, 09 Jun 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717921642
