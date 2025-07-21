Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8391ACEDE
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753077594; cv=none; b=rpL7kjMi+v/+VpkaVMWV7j0cH4zmhbP966y1LjjBYIc+dhZ/KUwrJcHJMF+c60FMDNI5Uvb6qlZs5bKOcvO/tEiHXpXoD5t4yPIqq2Z49UmIib2xTwFBvLsblB+FhDdgtbGG+UHtASMr41K/AEnz3m8qBiCwvd+CpMi7snoK1Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753077594; c=relaxed/simple;
	bh=pja8qM/xWfnhLzIAWl1jHcpJaD/JUovJFoLk90Gsoaw=;
	h=To:Subject:From:Message-Id:Date; b=BnHr41Yqn5deXojfVdWrgqZmg9XHURIg9qIovf3x7yUXAdw/lqjIJPll8GIywJ8DleWvuOXEypIM0wF42Xa9zU8J4SUgacL9cEcRlgi/OWGiiR/HBUA329Zyg3nU1CdjtoGZQ383GKCY/wBj8iY5ez6w/Ic3mxcZjr8f76lIsho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdt18iGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdt18iGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D4CC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753077593;
	bh=pja8qM/xWfnhLzIAWl1jHcpJaD/JUovJFoLk90Gsoaw=;
	h=To:Subject:From:Date:From;
	b=bdt18iGBDVKTAWG3UCNX0PAy3ANEfpJk4NRzFodEuqUpLaB3W56KJZjFqoUsAJb8d
	 VWjpVQ0B2CrR5PqLcmqMpzFI90Ggl3kH2lCLL5SRZl/ELNQ3O51XGoYH1OXV9BT+gz
	 VoDN5gIh3vz5mABRDeMW+/25PSVctXPTWBjcfVHS+fHskudCViq9EcJG0TGsFSvpu3
	 WZydL/tbHDL4v3APpahyUfUR52V1H1FTeVbSaYIe70St9AYkZeFpszmDS6HB+Rtwjj
	 dDHM/bsNf0iFVPGeIMFrIbMkuEbgCKASyQDvkXllEqgtwDSdR8MveFrQbugVKW9JMd
	 RKYiZSQktTeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E12C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307759358.19524.8862582086747453497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc337f37eb252b71769cb4053edeff921c9e55698a1adc358b9ee54960db904
Date: Mon, 21 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753077593
