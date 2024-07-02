Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312E919DF47
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719927923; cv=none; b=HxwXu5oC+FoPI6CzF09KxjOkjBzwm/CIu7w4RLRahjTCkJ2561NUQeKPl5Vl/xmi1PBDrrLUy+70JrMcmReAPHD1u711zw/jszF3hAndtr4VFSAE6jkkWkINSFcmR0avAyVQNhdsfvHEpjl5uGd5samjb0CdrKw6Z+OZZKrRT78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719927923; c=relaxed/simple;
	bh=PX6in1OtuCZJzOmiPSnw4fDnv+jys1qlR0UOYB8Sx8o=;
	h=To:Subject:From:Message-Id:Date; b=L6R81f0mFjLLwRSYWLfR3ODtIgkAgUMlqlhnbvtvxO1m0cjEN+fqzmZ6dEbFkLW5y/qXTTJc93xeLOsnp2BBYRiRLE0BbcXxg+0Zx3wRNxkXrIDew2lVfwwBdCDkyre9npC9vhFkcERQinSrCBC7tloIV8cgwsb+cf/d5KOQ8sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4ayKpff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4ayKpff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07D1C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927922;
	bh=PX6in1OtuCZJzOmiPSnw4fDnv+jys1qlR0UOYB8Sx8o=;
	h=To:Subject:From:Date:From;
	b=p4ayKpffuGV4g9MXu9wFz88+8gLIjVom39glad8gJZS82pO+btYQqICqTbp+Pyqii
	 nTfgByfmlwnrfA75faQ7g9Mvk0p4Cc7tUwPZDxkKZlsSpG2aYh+aKa3R6waOOL+lxV
	 vmBK/blp/zMtZ0EO6P2GGxw7T6QhwP/vyNq+kc9mZyi5dPhvzfNKOqSyLaV/NdnWEv
	 E8w5UgYaWtTBrXtkdJppFdFuPOQ7hiua2u5MZjty66OsmwB6kPX4kGotqWfcaDItd1
	 wIzskmNN60KdPoNFAUAh/Oha4drzKzQWKYKBEpEq9/A0RejQWTn2jQOHqwdr3P5dtd
	 0VenXF2zNTv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD96AC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992792276.13735.7793879705532284357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a49ccd18be1a7862b390b598c9104c3c1dff71735e738629cd3ffc4368e1210
Date: Tue, 02 Jul 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719927922
