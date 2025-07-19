Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3190811CA0
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752889194; cv=none; b=oUeCZykTysYn1Qq24xG95/Lc6yz3I+R7YTU+A1dUFzS3k6jK2lxioQq13GV2UghDBQeUkQoI+EqxQNUfeHfr9ccRF8VkuKZlMK4m2vuuC0GYYoy/GdCMke6MSbt7EXxRGzbsSc36qmLuc9xMiPdCQoZIbv55xZu3KIBBdsMov6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752889194; c=relaxed/simple;
	bh=JlE4sE/VgXzpFtXgEdlnnEu6NjFGXEfbMuF3YN4NeOY=;
	h=To:Subject:From:Message-Id:Date; b=P7cqSe6Wrh1VlVYeTuHIMCVu9wY9MtcG4Dg0D9uBsptSf/+NRs19Drus9LBCdvU9fg50+aScPclURk/K41BxOzBYXGG14iDeZt+3+nj97gf95oJ6iFQNrFYFOuopcJNIYcsWjkexkEybCVa+dgxPa970DsLdNgjlpKRPTMr01W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ng+vb7Rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ng+vb7Rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8327C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752889193;
	bh=JlE4sE/VgXzpFtXgEdlnnEu6NjFGXEfbMuF3YN4NeOY=;
	h=To:Subject:From:Date:From;
	b=Ng+vb7RnJnUpUuURpv3SKxS6AS2KAabTUiaY9m/1n0cGwDOqJZ7Uw5HUWQpc8/Ydk
	 e4CMANN7mlyHp0stQbQ/6cDG04sWMZUtHq5g8XpmPfgaXvsYjahj9vYdj/E10mQG2a
	 nX9QIBY9WV2EGWhtq0ui5HbWfVcZ0GJi9wL9w7BoI4RYMrev0766qsqIpJfDX/9PI3
	 nxPlBLeCM6kLN7R4MMEm+tFxEeoCj7ZbcB0xdjGNSSS+1tbV561aP0X62siZsEki8z
	 nHpn+l/6tY09w3XjeLFGZXYuEEVVe9GErQWl8BtqO0aeE3Iwjp/sQegLhvQD08iNeh
	 LSDPqQQ1MMSyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931EFC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288919358.5055.15554401479198071800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0469d9cbeb4aedb76d8b6ce8ec2e6540de2f895698e47f74360c613d6eb1af22
Date: Sat, 19 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752889193
