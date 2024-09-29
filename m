Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2678D18EB0
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727642754; cv=none; b=feSZLnHdk5EGP+ru4cjv+r0WrUQ0JMnPj10EDLHvP5x/LIcc0uitNWIBqYA9ayE89E8kCYTC1CmrmRI5AWAEsc441g/LpulOU5OX3BQqoWepYozIBzinTsxHpk4GbkugBoyD3p3SSaKYGdlHEO4uJ9Mw+pDnpISpCR/Fv68bm0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727642754; c=relaxed/simple;
	bh=BZREGilr8uP7q1MV7hMJR5pOxu/pKSAr5x2PFhCUNZI=;
	h=To:Subject:From:Message-Id:Date; b=jOBLqYI0kVTJWxLCxcfDjCYHRp9Q9e051IoAzIHXP90vgfAlvf6TEDOvFZezFgCxuKZggEz728XKTwkadTWc2Dk31DUxyLtdXEReIIPPDR5WQWb1rzRmPrGGyzIspo/Ix9aQn1c6WOEaIcqGwjVAg/RSP68wElrdm1vW1jOvTbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsMNiKi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsMNiKi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2CFC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727642753;
	bh=BZREGilr8uP7q1MV7hMJR5pOxu/pKSAr5x2PFhCUNZI=;
	h=To:Subject:From:Date:From;
	b=RsMNiKi2qrhAiXr+ESd1Svbip3REBs0VMxGbs3YAZZxU8TIWzz8QiayO6TrBOybxP
	 NM1B+D/0QGtYAR6Ixk49T3RB7u9dNoceSI/y4jUVL6UFjbbaVR8/Hu8MpAWlv/zvkK
	 Z3u4ZfeEI6b2exiZL1jsrgg1g+faGvju55e/EANSebsXM/48XSc+bWq6JJPywHxjij
	 H2J3Sl9dY5QixNOMRscbL3qtnUx3lO/fs4m8P68/8mymJsQurNx5mr5vUgdMI4XM8L
	 zKJJYJmsccgdFjAfC7kLhZ/Rg6v2f3lIjZm+uQ1fwKrlfjZJ3voNGT30egi+MfXa1Y
	 jDkU9kG4bU7uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B971CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764275360.11962.12163521872925011474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e24aa2b6cff29ce46c36ed3be19c95767a59de05f59fd02892309a223979d0
Date: Sun, 29 Sep 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727642753
