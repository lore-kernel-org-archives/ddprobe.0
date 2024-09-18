Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BBD273DC
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726644954; cv=none; b=UACj44OwyKuUCwpSZpp0LCOtW6/HtF/cGqyOS2GYtWbJIlvGAL6nsDo1IxK+mJl9XEyzqBi/OderayOv2xPH6Q+oTvHXm/LeBToVq3sVMwZjwUBjEULEUFv1gcCxVi3LLQiLMtfnkkMfifvkDhYsrxIVVrV2Zky3bRI4eDs68WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726644954; c=relaxed/simple;
	bh=Ub1ipilZLYKPGQdd9FpS4e5IH+pI8XBTjDq5u7cT5Cg=;
	h=To:Subject:From:Message-Id:Date; b=b+dzlNL2Lp00wZNuG1v54WfynJ91sYQ3VuM+A6iFQT1ETqvefuBobR7AlocCz0sHM5K7IoFj/c0aasEebjXgGBisnaNROoAeSQO541Yjh5L1gFzd489bAV71Hd74gmwgQ1b8Qb0YPEBoEaJm/O4jjvnvP+66bZWrtXF4nCGzt+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2gzk/8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2gzk/8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4C1C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726644953;
	bh=Ub1ipilZLYKPGQdd9FpS4e5IH+pI8XBTjDq5u7cT5Cg=;
	h=To:Subject:From:Date:From;
	b=j2gzk/8KK9xOTCzTV6NYKtlJNYRyeynqrz5wIAF3zQUzP/HmWXAzsCCYtd0k1ObMe
	 5x9SrBME03Ln1y3LGO4FLOizVPNDcSWqSd7JIS2srgvArVT9ZEuaAi08sjMaCQMG3B
	 LWGLFoVaOroDbo2dMM+nRG6dg5z8kY5b2a3F4XWSi3LUqSfmW4NqDz5YbZO8Q3vEcF
	 GCfoT9KolPtZ5G8VIDOgAU7eWHbFbMNRhykm3bWEw5dOErphETWwIfWa7onJx+gw0n
	 gHoHHhBGkBprkBPzQYH7u7bG4FAvp/aNhXktR8LA897jo5fC7i7HigLX0uF02RX9nl
	 KOVuFSp2iSNzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97365CCD187
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664495360.32129.13976546429160563569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec1f327554bd0a4f7cdefaf3f7d3c78b6d1f7f7491754a1cb15f1b9da5d4a68
Date: Wed, 18 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726644953
