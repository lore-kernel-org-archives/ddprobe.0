Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F58C347B6
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714214543; cv=none; b=ONpFZdcLtLXNIOdpL3/q9km9VrpL8GHdnZWiTdr/mSPlXXo2RLxJGmH9EE9URrG3hb4st/aGte/dS8w0QagihivpBhCorRqzVejMIU5aBV1vxu5sDXQZv0IQGPoBxQwVYmKOVYZaeGTDHv9X1YQoVuIfMB3pyQfWGC+DZGL61Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714214543; c=relaxed/simple;
	bh=6rztHs2A9ozur+G1ata43NWPLIVPi3w4lisU7oa09I0=;
	h=To:Subject:From:Message-Id:Date; b=nXRWp/Br8rfQU9/j5sEZat1EeOStzPc4Rgxw25omnluxGG0r3VRuOyVoTJ2laTGXJT1ptheiNE0huHzY3VjxYF/UhWJon7Ep47iWLcoY1qOFkhMKfhJHhntdvQPkFW9XwirCon1ODfumBJ6OGAdsXgDKCjiSBfExoAVtKEJJsT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkJLLNCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkJLLNCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1A8C116B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714214542;
	bh=6rztHs2A9ozur+G1ata43NWPLIVPi3w4lisU7oa09I0=;
	h=To:Subject:From:Date:From;
	b=VkJLLNCoaXmfJh57RapbQZjY1FRWs7ok/lhXbZzByu0Ztg5XP26hZ13XU4gCnoWlU
	 Pi/zv8oPinUsFSMdYW99abzw9LBJlA7CWsX3241vowQlul7TQp/c6/wKFFox2wH2o3
	 1402UyH+EgSu2jIOmfxNhW3aaikJS2SiIWXpbXjbUDIsSLga/vHtI0pzZBkkSE7ufM
	 oYKPI7thhw8Mvsc397USo/8Ze5YHKLYssofbFDRCHukkNtUz1vnL4qAFAGBuQyhD5O
	 taYChGsi4XkRabeS9rreeuej5/4xb3z/Kfwf4TGI8WYGszIj00/ea3Cc5/R8TR68+Z
	 I0PWoEon32byQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD10AC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171421454280.1632.10712189795450479026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2ef37680d99114b297c18052c00fb8e77e7932b427dececed5d2f59e19f61e
Date: Sat, 27 Apr 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714214542
