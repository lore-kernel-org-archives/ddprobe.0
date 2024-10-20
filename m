Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF59322E
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729400154; cv=none; b=mh21c9sj1D85W2R31g+PW348gKLfHXuB3AAd/3xG6sjQJcUax7A/KqOPJcSO0xgyAWV4SzMRKAveYjmVt/+NEBFxNNMXwaBV9yQSrs+6WZHgb4Iq8aYmGlmRHwMpn06i9gvg7WLXHJbrW3sNkUH8EjyeLoa9ejzk0ZLJRQOTO7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729400154; c=relaxed/simple;
	bh=rXvFUEmBp6WqwgukHk16loljbd+Ru3zA6UQt2jw3KEY=;
	h=To:Subject:From:Message-Id:Date; b=OT0FcrmE4QO/MHtSyxZi6AtCwC+t7SUERnbfNHAMhZ+GAroGeWlKlirs2RPDuo2kf1MbALV69IkQy4LbLtjJWhsUianmStyELn7X1J5Qh0MDJAP4b7PX5LHX+XAft4Hev2JljnKdrPpngSf9usc1WERo43idR++whvxRTXKiclo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lr4lIsX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lr4lIsX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE925C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729400153;
	bh=rXvFUEmBp6WqwgukHk16loljbd+Ru3zA6UQt2jw3KEY=;
	h=To:Subject:From:Date:From;
	b=Lr4lIsX3+WVvVjTW6uxrS1IPMLuckitX7KSAshGQEex3y8s7FL7ysxcVyPWsRdO6B
	 rNVlVTrubGO1iqLrRcsnGt3+g1+4H5QCPf6jYy+aLRNJQMJ45B3RaA2YG4ncx+50ux
	 +fH19AePZZycv9b6n1Tqoo4lWlA7cLWO/WiZX3bsGLHwUA4+/WjIuM0zAGOXfa+2MA
	 DhZTTRy5oR7gEGkq5f3LSDV3CZnu9E1xzWJHfLEqFvbbpnMSv0osTL+cPVdBhQOML2
	 hNIJD+hZhGIXLoxHgFwIVRDA6j0NPkSTCW2U3Hi1/AbL4zMu7V9Fl1qhBxpp479etk
	 q5cCdjpJGCjiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697AD3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940015359.21575.438952788446531291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0d45d9c2a602a124128c73c4563355a7e458c4865957840300914f42c5d017
Date: Sun, 20 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729400153
