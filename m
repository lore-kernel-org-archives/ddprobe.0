Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED5036EA8B
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789135834; cv=none; b=LIwtU8kdb9eMLaS+FNKd2bTEvqUnOHm1IxdXe9sM8w4zYqnAPub/5k5cKmJ4FDa7zLqYv2yqV19S0WzONQ+JjrDo/41925lYq7UigDSlGvZCdiExhK4w3BaxVwuFGTyrS7TS/zsk0Lj9N8uDUmnVB9elq+AanBVZVDNAXe84ZBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789135834; c=relaxed/simple;
	bh=Hgqv/2XzeMxveJqFCwlu5S9JMHDZ0dnnUQp2XM7QnA4=;
	h=To:Subject:From:Message-Id:Date; b=m9RRMetweEWJcxa91C3YyTn32juKTBWaTKABQuERC5V/nJFn5InJ3MTS8+2inBeZW33tXMb7DK3fsFbUV3HKN24hGkAFzsK+p5Zr8RCyRPS13W2PAdoJBmmGLCoJqbJkTpYdG/Mkak1afXphlSwp2iyBfssUVvhD4KlQT4od2VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjpDSPy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjpDSPy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFF1C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789135833;
	bh=Hgqv/2XzeMxveJqFCwlu5S9JMHDZ0dnnUQp2XM7QnA4=;
	h=To:Subject:From:Date:From;
	b=HjpDSPy/S633NEX/Ne7XiZaKvIy2uTXrbg7lANDi5zoK39dvc5cP37LqWM2O1N3i2
	 /iopghtmCfHcFrp3auKPR9TKAuO9IOY6QLLZXsb6G1emGLH/se8e4OnA6MCJ3dXY+L
	 uZQTdbv7j/XFIAki7OGmETTouC0e+FWL1v5ZBPXahFNLfdkzr2TatXFW+kghHv8bL1
	 nWBCtV2jU6MxWll63gsH3eswpUGtXVmbt06RroPen9CjMey+6CZzqkJHdotFAHaGd+
	 PidyUejmZfr+y9NC5IRChtGJIL5CY+xJ3poqZLSzd7lZChlpVDld9Por5bBc7li05z
	 kUdhGL0CjOKfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4FCC88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913583370.5440.8800245340434203407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c377814292776803cc566bd6bf41ec62f012995e34d9029261d487e3cbadff
Date: Fri, 11 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789135833
