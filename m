Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8B83EF66B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790809234; cv=none; b=lpfu/G9K/QII1MdSmC84JWGr0qSSKeBgC/f/fdvefYTwCf8VRPMxlpu8ljL/JZN9KcAVU/hzUD4zWoxpGTcA1w0RaX4JvWFyZwY/w7UY7kp+wide+w9wryV6ugos7aS81hb0Xb8flpx0kmgr/wcQdWUpngC2BXpps74eLtv3lH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790809234; c=relaxed/simple;
	bh=jISWMmsRq9X2il0A15lgc5X7QWNCykt0mG73aJNfRi4=;
	h=To:Subject:From:Message-Id:Date; b=T0noC8YzEcPyJfHMUshlTieIJwYsS6Rxz++Rnt4Wcwln/Q5ZWYcGI5gzcXG/2Oaac8fQy1BwK744TyfcNAmk82Ly5jbMwPrKCpA9ooA6BBL8BYNZSgd2WuxvSzpBFzVgc2Yz9hOnqGfbfAecjggUUWj2b2UU9LDGOnvmfi3EShM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWTfdGHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWTfdGHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58C7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790809233;
	bh=jISWMmsRq9X2il0A15lgc5X7QWNCykt0mG73aJNfRi4=;
	h=To:Subject:From:Date:From;
	b=qWTfdGHyl6opluZfeF2AK21bIZuegeIxS+whsiyfpJVGl84huQCZoW65HJEwbE1F/
	 Yv5XlTcfLdV5u2Evp3aQPdpsVLrpXy8KPzeF4xw2YjKdbS/nGcFoXqu8EONHzAxarI
	 ifuTsaNCqjEeVIcR3sjgAJUL5XxTHWywr4cPmC7WIRLDyuc1FTG4RMkzhjKg5Cu7oP
	 AUYetKBmDagP0uv7FtXZdoAjvOgt0JhNow4GtDCDTgimdcIYejN+dIr5iR+cAVamJn
	 oKR/HzERlYsZgGusrZClL2gUcacthFGtYX/Lix6zKlj0SfOuDW1Wp8qHf4F/bM3Jyz
	 tH857aWVAfNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AA3CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080923368.1363.14990716297283594995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1fdcd5c3f6ee09a0641910e4ceca64fd663adcfa3422c81e71239bc8efef69
Date: Wed, 30 Sep 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790809233
