Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0E2EC2
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752619794; cv=none; b=HbiA5aTR6DBW7Vs+r43LnxOfLMn7muk/wXIF5jEkXXmOUAEWZk4EUlMTsuiNzfvRt2yXIM3fjT0PVIaPHewRoCdbm4fU87u+LJ9I6Xv2LMMtLDb/zWpcWTeifb/Drk9jQt0ZAtJAMGdsgSHZAZbPGz4P9ZzhYqPpwiEUbhWPApY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752619794; c=relaxed/simple;
	bh=Rtyz9QRsBoYMENhaOPhNZnSHja54ruIMikvkdNzMKFo=;
	h=To:Subject:From:Message-Id:Date; b=ZicnaCfxomqLHp6sy7LV1OaEI9PqN+e74aeegyabnBp6/0ydp8Y8dN9E90lZwGnUGoKaiQo9Bi46j18KEwtgtC5++f2c1Qx/yRpb4xVMWI7c+eP3dYMNUbz+1IPZnbzDvjFiX35F1pIpGx05b0vVkz7PlyYVH+XQ6x1ee0XXVjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2Naxm2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2Naxm2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE76C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752619793;
	bh=Rtyz9QRsBoYMENhaOPhNZnSHja54ruIMikvkdNzMKFo=;
	h=To:Subject:From:Date:From;
	b=J2Naxm2rVP+TCJvxXlDh/Gal93fz0R0cOQOy7zQP3PXImvogp7CczyeR76qZf95aP
	 q/tHKMNGnw8zRmfl0nskBdeNI4e02FoBGi8TwCkoOguaK7ZNiqFnSmmQBA0ZULyS8l
	 AYMcOrHTRmTcI9UrnGvFZKuXaNhVGsd+tff6dPSPltWBV44OluEWQoXZR67DG4TDzZ
	 jn7JeNyJtbWOJyZByXY52ErubDbBEc+uyQgWXi/7E2thQmUOQ7k+Ich9JdpqEIlXQQ
	 dhwNEgjjvXiazJbQGDMcyukzmLaFascTADecA6c/Vpk1F4D2Qi6oRx7fBqPgYd1t/4
	 iiOdNIZcZpnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6EEC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261979358.17862.9145810865519067667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a050d36ea05ca5909b653f0bd1c741475133f5357b4975c410b3ea6dc85c7f
Date: Tue, 15 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752619793
