Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A37C4CB5B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750811394; cv=none; b=O35XkeDNUcSpkzFSxc7fAdKNgAmM0UuaDZ0eTjtfRjwKCfvE+1no+clYfumMJ/977QzxFQL2c4WRhdgCrqhSB28aRz94BrzbH6s1BcmnY5Qn7mln0WTHXTFf0jryo1Q6a4j0wN7/Ctb4Hbv9pI3lZ2h7XbcuPk0rZvtYEr00bV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750811394; c=relaxed/simple;
	bh=RZBVvFv0RjaHun7yEWmJ9AuHHVCrfF2qxRL/uWD8aJo=;
	h=To:Subject:From:Message-Id:Date; b=Sz+mDMFditk5v3Ywl+/rSWWbYUrtmlD79XiA5vZEnmglecTNCDYY/b3rVS6j3C3ROwaY3gBwmiHtmVBjxdnXls1F0dSyJQBk65+YjlQjrfuRkadGRwYOvQyss5qNYfEVd+cLOKUl9zn8zAIXYqjQluBC/p3h1B9e15N3zmbkCLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5lcVG9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5lcVG9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A130FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750811393;
	bh=RZBVvFv0RjaHun7yEWmJ9AuHHVCrfF2qxRL/uWD8aJo=;
	h=To:Subject:From:Date:From;
	b=i5lcVG9lFpZc/wyqWaASBUVa1+1VLLI7yfD3fugM4OTxHElkglr0QiJuD3iaihw4s
	 wG3WZYT7SdznLKMCMNn2LkEjCa47EVH/Toplt2A11ZfEfQtSgqOxd4egyKYh70RfHw
	 P4zRsGoIM4OjkEv5e19yRgUPKtdzgB7tobx5tPNbJp74Nh+BhrANx1G1tmJIuS06WA
	 WqBWdicMhWEuX3bwP9/koKN08RuvHYfd5AKk8zHpT+kbIQhgov+f4GlB7nPvXcrzku
	 tQX4l6wTw0sJbkfboVkIoejx2Zi8mUaEJ6LbNIoOLmRO/Q3XgCqbiP9yxsjNSFXJuv
	 KL1uky2jJY0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92491C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081139357.27122.10158882348086944770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce0e01289731031ccebd8f8dd98732a38555a3c5e5ace75a8f280634d38e7a5
Date: Wed, 25 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750811393
