Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD842E2665
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790253634; cv=none; b=m5Hn5crz8yd+4HMQDg0h8CGnFOQ4IKcq3VpVTgZFDINHrBSN4xFD+XdCpmjWy4NTnRgeINYDAu81PAQn8WdX4IUgb8blDnQHZbpJ+ujQcL2Cg/bmf68+cezNSch/KfKtyOCALYaVaxnsFqrR5fWrbezHyeFUNN/kySO8xnrZ1yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790253634; c=relaxed/simple;
	bh=ewV3MI8TFY972bzbeB8HCPbKW3MujpwbOU8UDVeQX4M=;
	h=To:Subject:From:Message-Id:Date; b=VZ7y8hIfY98Ao2W5Do0EV4aNFdAwN2FOxb0gCfZckKuX+P1C0TdcUiRdUHHcNeAEg9r3q/6J0Z0yt62BSY4Fa5JJLLIanE/MXrI39+h0LXmF1yTlHuWQCsBFzQTt1W0TceL7zVMn3zk3qMqllfBhU+SDXBCOXhM4GQ4W50FOvAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVQVjaRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVQVjaRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5077C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790253633;
	bh=ewV3MI8TFY972bzbeB8HCPbKW3MujpwbOU8UDVeQX4M=;
	h=To:Subject:From:Date:From;
	b=bVQVjaRTkuQSBE0GbS1U1TuRgrNRP4aqfj7PkSUXiPzEzw5m0xBk7S3xonVppnVMC
	 RJfBBWY9vw6HeD6nes+0olgTzmoWPDcqjeSn7sFhaAc1Vt3ZQSEOni36TD6mqXFg7a
	 Z1t0Ny1u7bvWH6wtX+nb+ZVMkJwwVSLuqWvY78QZU0T2sA3scuDyGGoJ5cMO2iqKXs
	 5015w/CdleT5l1n8bNa6VbrlstQn+uwVdisiIRiv8QmKEknwlsR9GlN2LM/TrOY9Na
	 EaA+m4C5qFAo18q5NrkjEuWs96OgBqHgQgOyEZlPQgPka2tk2rPczrGiEy4kkcrUvS
	 1TzViOoDcGx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD46FC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025363370.9659.326524091005387936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a1fdd37d09b2be21acec58fdadc32d2178b60907b2b23da1e453bd9c8714c1
Date: Thu, 24 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790253633
