Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271951CF298
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725443754; cv=none; b=Yi4lHx6tJKok+iBVNRF3gaUZYyd47VdnSXUAe6UQN6tgCVlC9n/8mxh+aoIZ4LNEjXieaK90ThEoFJxHyXYKLGrpdYgwyKWTz6ADlPmnJX1X6EV8Kxlz/DAHW3tpwdqOT2EWAfA84M/Nn0aXXCEKdQnMLrEoQzWnJXQ1XRWLxs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725443754; c=relaxed/simple;
	bh=IYykr9H+vgxjuPKWK2dPf5Elu95KkRJf4BqgJ2k+44I=;
	h=To:Subject:From:Message-Id:Date; b=Mi+RiiLq199MzXbVfO/uMPySobvspoSch+wVP0pIvwExHuJD0cF/+Qt3nNHa9AfNLcDJ8ECOs9MXUeJAXjsKACMjyc6Ei8DaHfocuK6gJh22HZhzodKM49CT52F4laFMg57WszIwWQuU/5qjladLa13fg/MqZXbzqB1VnTy+4as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ksao5w4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ksao5w4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F6C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725443753;
	bh=IYykr9H+vgxjuPKWK2dPf5Elu95KkRJf4BqgJ2k+44I=;
	h=To:Subject:From:Date:From;
	b=Ksao5w4VJowCSgPaMY2B5sEJY2vOI/XA9NlN9lGcjireeO0aS67xe6N1dOve33eIT
	 ZeVQOsZBJs6HVq51ORG0gw1QLTlFVXQTMfq2uKLSqmpPPXvBjUwkjwpL0wQs8huT4M
	 IxcE3hHRE6ml/kaLjWbWvf9LRUU66jsgopVWPxfJklx2kM1GGwGTAl7V51DHviBx5+
	 eIjp1Tmt0Gp3J5AVmeXMm8wLU2RDn0EleEbI9P1GDEfIZZttnqOSFW6NoSoqMYyi4Y
	 /LGypBrBayP/UK9TtpukD8v8mo3RSWKE3BAe78BehqWFSsrL80kZmmpxXfnnP/PYSz
	 r0qIrDxfTgRRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981FACA0ED3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172544375361.25748.11895647686207459213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09e936e2e26c56600efb85c6b67ac60c664a9469dc00c6599e9d24518b3f979
Date: Wed, 04 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725443753
