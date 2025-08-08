Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8FA18DB27
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754627394; cv=none; b=BSDKbEWIV97+Z6+KHosuI8sbDd85HhuViXyeosUy/WPRhvdyaBu/FJw378Jd3U9FrUewdPN/ailaOBpDJY/XSJcj8TyhqZMtmWCElk/PWJUgtmBhs9c4FtCAdjQF45tnWmykgiukJjxQY/eE4NzMD2O9tF0paKIKlj1LJ4PgORg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754627394; c=relaxed/simple;
	bh=9yAhqExBiBNK3LUzyDePpTMRfnPgq6JG766QURLCEZM=;
	h=To:Subject:From:Message-Id:Date; b=YruaFjx8tJPzo6m6U5sdeoQoKiDBjc2BvOnrmG6mSUUonsbaQNkmoyyGZ0L1eyYLe9M8zXsgngPGgv1OOJPaYcW0yVhVGVfh5Gtnw+cissW1CP/f/zbjjD93wrTfet8ivHZl3sEbc7YvEKAWUb90GJgfnFzVzKyf07S/c5afN5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmDruZXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmDruZXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A289BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754627393;
	bh=9yAhqExBiBNK3LUzyDePpTMRfnPgq6JG766QURLCEZM=;
	h=To:Subject:From:Date:From;
	b=PmDruZXYlYn0bYY/wSB7Wy9wEBktMNEWZQN0zEJVsIBHr4ZsGZuY/tMCUQ72Fbayf
	 QFt2FOGuWjo/v6sS9HiHpQ6JMHyQYoDwQm08woPE8eHEngnv4G8o7I1/iYTFE1NTFQ
	 i7aGG/5SWDuFmexZDaRZmVciJFVRDSoycW/LbpADlvDC91obuoY9rRa8nkKNAONZib
	 IZSYiOCyP3J7y7qAySHfhWYkwZ2OgOf7uIe5d95aiZhbt1zOwpMKCVyvfv0Tbsk/YG
	 WIgpT3lHgsqQSSFRJk2HA09Y+bPZXIoaBBx2h/hdbjCdhbIUbgHmSL2QM2uxinqFf/
	 qpP2Ws/1q/01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F842C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462739358.18765.14590923107762171472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4767763a18d44212ba6a899746abbd7548f4c801d4ff5c7634093a90b1007d71
Date: Fri, 08 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754627393
