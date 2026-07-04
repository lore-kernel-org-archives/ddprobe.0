Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A6B20DD51
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783163314; cv=none; b=usg9n6weUCGElIbg7HYJ3cmVrb99nKusHmELym9JcLitVZ1ELLAdYDX8oT1H5loLxiClJ8IcywqoShEYWs32cV31uQbZXZUA9EhiAbBONZ/q0KzUwpnAy1bzESYcGphWSP5Vo5q8cKaubm5ccWePGAetLMPd2FocXpNdB8mVpEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783163314; c=relaxed/simple;
	bh=KFfq7TtBwZbkH3TB41igM/dmdNHIuXrCEpIcuF7xX+4=;
	h=To:Subject:From:Message-Id:Date; b=mnrwUhcZUZ3tVutSYpFpbTTClh6LVOQWmnPPPNXJbuH+rjm6rrNKsjnyCfihXXMIHYnRExshGGf57WJGaoyjOKarJIsfWaPTqkz4ak1q5XV73+7TRWgRqdggRAovVWudDwM6ARoNL4xtUbmqww7BfQwcfGV55CRmMej4l7k7kFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETIB3yo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETIB3yo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D465AC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783163313;
	bh=KFfq7TtBwZbkH3TB41igM/dmdNHIuXrCEpIcuF7xX+4=;
	h=To:Subject:From:Date:From;
	b=ETIB3yo6/Mu/vdwhmjVG1S5U51dPOdhvPY6STIk7grdi2hnOOwDSMlM9exLpCiLf+
	 s/AOgYOUQThQXcYWCiMThRr4OplU5RcppavXUwRT3Je8WamoMI9LChbjrEaUf6Sqgc
	 pecF7brMSSpPAtZAhcVdANz2Zj1hmcwd15UlaUWDd9Ly/xMXPz+oc2dvSG1ns9HWbH
	 gHCRpr51/SKGez08p3ITDNBqcJ9FCd0zJI89s4wCUIfZM0fxF0rIOSLPVXzA7GNzXY
	 IgLqbySasxhatA3Avv9K3kx1haxldgzIQ7Fz9StNsAKVglfYNtcBfpdsBksohvhg0C
	 +8JuWu5NrUYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD849C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316331368.15711.4132689828916343439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c2d2f1631ae7147e07e9525be1b769489dee43af7579593980af0eb306e1ee
Date: Sat, 04 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783163313
