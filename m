Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD9116D318
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712327896; cv=none; b=nyMy6HG9W3kP2Yj2vrvVOgqvhJjzkBHqHan5d+P8MVDMrQTWJxk/py+KaBAbJJismh7Bloxm1UbVlG5XpzMkhmJa9qRGOgufJ0wMclTXXCxzv9059v7rl2PxOkwKCB50Pp485fpxwB1cisuHWZfGp5+1qoxk9D42DyKWkybFixo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712327896; c=relaxed/simple;
	bh=U15xfbnNymO+UNClFHmRcUu4VpOEGHjp9HE16gOB0xs=;
	h=To:Subject:From:Message-Id:Date; b=GHKRJ4ViMCl6XSbHKalHvn1PkBe10RRrBPs2ZzDLkf7ZqyIBDEZT3fUIj3S+Ov8ztV2j0u4GzEupQNxmq5andi0cNi494Njxn03O4HiCUYv/g9aha/ObZ5uWbJxXRRPIF//ktW8FlFE/5BK2AWC7+ld0V4XhGZvg640V2PBqb3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t52C22TD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t52C22TD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BDAC433F1
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712327896;
	bh=U15xfbnNymO+UNClFHmRcUu4VpOEGHjp9HE16gOB0xs=;
	h=To:Subject:From:Date:From;
	b=t52C22TDVOJMux+ubI2hgrM4C6SXjYaP+4wK7teEglmHBgrGibUq0GCwVPBPBWHJk
	 4duomz94UW9aea0tskjF77q4Q05FZ/ltB+dEeeGPf0xzILkVOYUKrxAr47IK5kvtQC
	 HNVZuRFivgtL7W6Cs5p98FXYyS65X2mWA1EeCNzIVY67JUNI6KuA1Q6BI/p3xZn6AL
	 cdXI7vaT0Dgdap47EpV0SY6TP7zcs60FfRzd93LC+mtUjy2BH6/LW1jG3m6Reufpvr
	 gajS+zLdjH0jil+penTIY6IQzRpVuB9ZA21RlkAxoWbaKIp+4j2WYsHH90bzgFIDa9
	 b6bgpSRWXHL7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CC2C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232789640.24101.2864990077300442900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb52fe97e4d1544d8a1060a469cf376414b11a69c3202140a6d3c43ce0004216
Date: Fri, 05 Apr 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712327896
