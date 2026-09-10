Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD253DCD95
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789033234; cv=none; b=d1DvHQFtef4aQRY6RiigVbJxpCpbm4JH0hcm3bQH0C5ipf0jiIGFg4skbkJ3TBmVqGDBx4Kb5NEVRuO+St7rO2jfO22FhU3z6i1CXjZzDSdbXUgl7Css2pWLnnx4LeDIjtgn4HKEMTY8ckS4sPDjKo3a/GB+RmXY6CjVSM+LgCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789033234; c=relaxed/simple;
	bh=Mp970rmsN/yJoSq/IeApfvh/OUn9Kqn9vWVhnZcw9aM=;
	h=To:Subject:From:Message-Id:Date; b=rVns5IZ8h+objiyf5KMPco0Ojl6YRWJ4fbOYo4poEA2vyu/hxFl6FkEaZPWBvKWUAxPTz9VMWhzW8rVrixr5jGc9kX9R8FWW+VHlEimlu/Z1ZZ7w7/3ber/mypgBoCfn5nY+OfhyaR5mdsY4InPIWJQDZ8T4DefbNG0TR1HKZHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9O6Z9Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9O6Z9Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E083BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789033233;
	bh=Mp970rmsN/yJoSq/IeApfvh/OUn9Kqn9vWVhnZcw9aM=;
	h=To:Subject:From:Date:From;
	b=M9O6Z9Qdb1L7kSPce2aUXJJBuRxaV7RlgaNWyoZtewkwTVkJD7QWGnGLSbBvu1UyH
	 orCPpoVNutEdHJDyNn7ReFV/ZqeiTs60/nD0cGIZ2RrPddFjZzafsiGpt54qVV/o+i
	 uovjqTnmrEA+eQ+ST45xSTOrnTfCDmZeO4YkKfSYx6F7Lrlq6V51Q55OAniy0XYxNi
	 o4kUrhEhkMqBGKCixf71MmpEp2S54ApGPxiRGNnCY+03vedywoHwkzat7s2WBm664x
	 Gqy7xrRcapajjqWo7Jt52RqtO+R35N4KZi5UklgTtbnAXHjs8r8JZoJYKtSDdOJSGe
	 nqJsNQK9Q7vZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F6DC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903323374.29477.12993362300932130271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa2cb90aebbc003a4dba423821af7d004019550b8e2379bea01f31a2a9f08ba
Date: Thu, 10 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789033233
