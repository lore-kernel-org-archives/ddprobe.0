Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB2C1411DE
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748664594; cv=none; b=fcJJdwc8eU6+Q1mUOXradXzmmu5OjR5PaEO+yvG0rNsIh7KO3c2gWncxVbOLKhgEnul4WYccRUOpiNPGu4dSC9rl9jRPK6GpiUynh4uzBcNpmm+/SfMEi02fyehfa5JSGoCkF2IWzz3OhEewW4AcyssJYSNkbFEvxINFwcFBykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748664594; c=relaxed/simple;
	bh=RySBSEf1P060icpGLtMy3qQl2VaGnja4WYy+3sjNqy4=;
	h=To:Subject:From:Message-Id:Date; b=k22ra7ylJiO8qilZQj079MumUnmFomStot85VtrMExc+0iBGu3uqBojAV8YeJAHnI0b3C9fhRsIBzdaZEZtniEw3nYDBK0JBvmlmt9dYWmURlSDDX4HE6qcDiPnmR/E2o3dmmpdRTeF4Go5r/Gf667FmV786dvt1VBfoBvcydHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfDdE+nA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfDdE+nA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA51CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748664593;
	bh=RySBSEf1P060icpGLtMy3qQl2VaGnja4WYy+3sjNqy4=;
	h=To:Subject:From:Date:From;
	b=MfDdE+nAx3nG0GAynekHWBq8BLf3TWj+nRvknK+hgKpxuex9X4rUyv6ecmomr6Cme
	 XhmjdmUW29FfBIsrldv2IVMNvEVHsOnuYNPO+WJ3S+qtf4Mblgec2ZfgEDGbXvs9iH
	 jdo8EFDR+an6wp/g8kl4632Gc5KnQm7PLhCA9RpWKz+Bz0rMuNbj3aeXPK50hMCzhO
	 D8llmqKQrYQqbYRohJoHPAykB/max3f33oXYsWnO287n6B8U5Aw12ZsGQf8Iw6Q22R
	 U+OvjSwgxpUuk8fyWL+FcEFyEI5w8keUAy7Il8zKJiyaKHXXMx4GaOVpJ8TTsiS6zm
	 W9673jCPyQTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DAC5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866459358.22312.18045554281210051322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d308d792b483ac8ae6f0650c7803646abd0ebabdd4053f63a452f6ab2c78ecb
Date: Sat, 31 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748664593
