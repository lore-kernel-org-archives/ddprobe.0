Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F39288D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758419394; cv=none; b=GpsGHhpH8dNAJ4JgElPDjBlumSk5MhJot4IRv+MeRbXfa0t7wcs6o/SwbGuI+1lc7732LY7HEptQBo2VHquVg+XiYnY/fv6Oq8psuID5J/DTG8TmoMjfjY3VZppeUN0VD1YKfdnCgSxOdrJOOsQG5S+RObq6n6bJwNUpmABUY2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758419394; c=relaxed/simple;
	bh=biUDresRmtLF2xhjOpeiZApLXYMoZeInQ7NkCcUSN+8=;
	h=To:Subject:From:Message-Id:Date; b=dCz3XmFAq4wcu3DKA7p4ZxQ5WdoLkVQjRdDM3iFbPhxdduUjwjWOHpTHZUom2eADNynG1iK6ZetRv/iA2nHo+7BgBqMPadKH0ULgfDyTPv1pME3CG5Ig/IIp9aNPXuUsIaaM5hGNR/ybOD/ShKP5Lr6xeDvwYXm252JAghHVYqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrOMzv+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrOMzv+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A21C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758419393;
	bh=biUDresRmtLF2xhjOpeiZApLXYMoZeInQ7NkCcUSN+8=;
	h=To:Subject:From:Date:From;
	b=LrOMzv+4GWrPa/L60+hI3g6zBO4W0+ZOK092I3cts3ZLHJIhM6T3MWyXGSqRAGFE3
	 bQEBEyfTBS7KCGcHD+VHnA/XtztrYhnjSMpx3PFo4eI7dIM1mdx6leaWWjndol8QwK
	 1YViJO9/FZebXEqEBKrMoXZDz3Z4Juiy7DHn5Wxj48XyLxSindB7/HDtqlZHxMhwSF
	 vOO2DVk0TXrS8g1phi5rM0Whsu15URbWYZ/7evfaXz0pCk6n1y8s9Tjeb/A8qkXrRF
	 SFKxl5fwUU88weX9dAOi1Mst7jn4bop8IYUcoAe0qEjqFK7memfBjmFVPQ7NXiSYsE
	 UiKlkiG/aFkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E24CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841939357.6267.5102537295157995241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9d314954fc608fee4c89ff4c0558b74f2ffb6987758d80c41cfbbf4ab45cc6
Date: Sun, 21 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758419393
