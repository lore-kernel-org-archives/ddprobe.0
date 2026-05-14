Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301D531E853
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778774434; cv=none; b=kaozoMnqBt5ajVhs9Zpl7uE2awa/SNlBeDgQ/Fk2Tx030f3/lRboVDmveh4lJxghSLklaB1noQ7gd3R9Z8ySD6mbffqylNPBi6ptzc4ocPV16r2u4gDy+XaXV409fBbJ8+YsNY6POzubRSG0FGcKGnNHJ2Ck+DMTnP/9IqmT/68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778774434; c=relaxed/simple;
	bh=dtU3RvN0Y3D+aofdcNCEXTJ1+bnHRiEjs2XOm8PwG4U=;
	h=To:Subject:From:Message-Id:Date; b=OhryOuBvzJtOIWCPfCRCNAvC81KicDtF44Bs/Kp0g0rMULM2f5B2ECwROT3C+eg/ox02O+w5TEpTO1Uy2fxFEOyj4GDlropu0QsgU+ggpF9Is641Ft7jNS5zDyPpDjhoMyNQWjEVx9MecYAw1FsXss1UvU2KBB4JCopHkfdd2N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL769t5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL769t5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB840C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778774433;
	bh=dtU3RvN0Y3D+aofdcNCEXTJ1+bnHRiEjs2XOm8PwG4U=;
	h=To:Subject:From:Date:From;
	b=fL769t5CRXOT5ER4lg+YHU4eKy6NPO6+3vVIe/OrMj0r/5j+Gw/tTP8a83iu48HZo
	 JPCvnGnUM5VdqF+8RNLubB9K9qIxYraQ5EP+u6GuGpob/1rsOsJ5V0jch/S6Zdo/tv
	 NLVFjnpLzDzwYFoZPs+94hWeV0bvhjpQ6MHHheomB7fHGqePDDWcTZMICVT2snZoTt
	 ZZKxqM1QRDbUjkhIQ+mWJz3z2ml5yXP8AXmUIaHDXmOAV/P6Y+39KiSYasPU865WAZ
	 1OCT90WoRAETUYmR1BoFWKaGrY1oCxF1UIjtw4b2f3fIH1//Qt/rpH2p6faxGbIru9
	 2dwGGC8YkIkdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB099CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877443369.22316.13340129944215879975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e5da421bb91b3bfb36b37254be900dc54e5301367894aa92a093db8ede971f
Date: Thu, 14 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778774433
