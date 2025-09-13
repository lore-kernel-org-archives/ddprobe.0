Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0782E8DE6
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757756394; cv=none; b=GtSaKm7MR3juk/HlHd3M/hc78AQV2wknfECJwHxT+B0OgyZMVaGNbUOj+58H6aojXDXevChd/SkKe19BtHCFokPfjsO4NLCNoausFt80orHwRSJxb3bRJgS0qLW5VkshC8Oo10OtFLFvOPtszJD4wO2PTksH6P+c9Rf4O9e5HdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757756394; c=relaxed/simple;
	bh=PAcVFGTauOPAoKZq6Wv2okeZdpHlJtH7qFBsoKKWB5w=;
	h=To:Subject:From:Message-Id:Date; b=cnMDAT/b6+p9tHKq5ao7aZM/eVylj3XId84DpQTRcSgTMlO2b/SVJluFTrdQCLtP03rfuWgxXm8uuKbRdUISstiZ8d8A5ChleIKL2K6nLzlygWFeddGLAsK4PHB6LU7rfqrCGkbwo7AGK+00aAVrGJmJDb2BU/TUYuNZtWGg+Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQVB15Vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQVB15Vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD7C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757756393;
	bh=PAcVFGTauOPAoKZq6Wv2okeZdpHlJtH7qFBsoKKWB5w=;
	h=To:Subject:From:Date:From;
	b=dQVB15VyLn7P9VzdGaltx68SKLwybjDOuPfjS1jVv0FkPpf9162vk5ICxTOxB9RIo
	 gyISb9eaawEmop//v4277zhSYRWbYlMmua9n6Hji5WRGaXFWd31LU3tflKQdvj2eW2
	 kH55NuJsj9djTkNB4JnVQBtD5S4dAh8KgdG+JQOQZfQYaxGVKUkm8QDGQbcT9tu3vT
	 PGaJ0DnGC1hAqfalal6gx8T2CNoHQJwqdTCkWJ99Qz/tWNbFZUlw+RfcE1O+J/gNb6
	 rq8MPCB7LMqSddSqBmhZgoAuNawT8c2iJeav6UQkAk4goBRDSf95WUWLN3espp04hP
	 WgBdz6m8RpNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054ECAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775639358.23599.2259144816906093399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83652ae55a55f3708c92eab99d886dc8c9afa0643f627afe74660d0ac37d316
Date: Sat, 13 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757756393
