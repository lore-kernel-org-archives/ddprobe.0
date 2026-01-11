Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA221DFDE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768134834; cv=none; b=RnLaFwMJ98bLIQCt1lZRiyi8Qy0Ihr4raToKERJWmmGYqwQ65w7N40TGXmXp2HAZNa36lVZwaxfk0oK2CbQ4lYd8E+V0smY2+sGKU8FYqbiG9YHrDe/AS6we5wOcFJec3yThWjpOzwXvfpKGeHTEv1m+JMVoF0W6khGAzdAehxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768134834; c=relaxed/simple;
	bh=oM6C5tXj+BZMi0paTQo3ADHK62APHfqaeE8MnLWhlAM=;
	h=To:Subject:From:Message-Id:Date; b=HFJQfRPg0bJ+yFd2f398poctRA801l8qLxEkazdKa7FH+Ah3LvbsECFimekpNju5/5F2ilyfMlDA5WH3yc7gckzqVvSYfuzeeRvivKYZFTqXgzN8uO+Aji9P/mrHpS4cmxjsBrGwRyEySr8B2JN8SBzFEb108WSnBOSXcFxgpvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWAywJdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWAywJdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6946C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768134833;
	bh=oM6C5tXj+BZMi0paTQo3ADHK62APHfqaeE8MnLWhlAM=;
	h=To:Subject:From:Date:From;
	b=OWAywJdkcs2FrWfy+wzPlEXAUteMoTA8gaCTAg5nIGHRE6tXTbiEFeZptE9fqrgEb
	 dgHfkN0Y6GTX8OERB1hBSDD/Q17Du5hQdQ4av35ea8DwrzlyU8uRgixkAaCi10+EPi
	 oWRfp/y1j4IdaIMZcn7eK4JjV/Vs+328/ZZ2Z+5eYyrRFUdIqpmhWcnQegGrNCmqa6
	 sn/BxP2v9nXj0TnWyu3K7ekJsZ/Qr/bLaPtkc6YpulC+F+EUVzRuXVlKDabyKgNNkg
	 TKeqzz6HQmOqXoa/W8mo3CaueFth4zdjtq+ZLUv9nKbpV0UpVj9JfUla041SQPE+S1
	 UiadHzKKdRo2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951A6D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176813483357.3305.15632548439355682314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aad6fed54908e19cfe565fbce45681b7dfe5de6e4a9cbd67b0b8e9eed27fba8
Date: Sun, 11 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768134833
