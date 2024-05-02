Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C0611718
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714612943; cv=none; b=WLiE7XY8urwbdB4iJhiMQ79fSPMYD6SjovW1Fc4GCmZRsmcFuwWzkrECSke4MGEB3RHv+3JwdLu5wwkwb1CfzEuSelQ4oxoftnZfNVhtNSCgd2IQNf5aiIAXg9hIgYl1oiCPhAMO/EI+y//KTc4nbcfGSjl2GXtbGJ3X0tzLmBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714612943; c=relaxed/simple;
	bh=1SjYac4Z8Yr2l8X6cjI7rYZRHIcBE0Tvn0qNapb7xpc=;
	h=To:Subject:From:Message-Id:Date; b=cyOaNWoUqTEUFXUMYvUgGh1OPFj/CflgjIpQAYCe1I2QapUh3wjSWCPrHtPgePnMBmR3tjgvhDRFsrjg2hF60IwOBe1EuA776BsOQZAgvl7LeCHujt80PNR4mzjUuET6EpngL1DBMxSYiAGqkWiKJm3jjlRfIHaiirwm8qodDYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPZW3hrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPZW3hrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00849C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714612943;
	bh=1SjYac4Z8Yr2l8X6cjI7rYZRHIcBE0Tvn0qNapb7xpc=;
	h=To:Subject:From:Date:From;
	b=VPZW3hrORuj8x8rz0jMeNzTgfwBGJjTx1VAt84KIc9+PEP8EYu/IP277578VGSCdU
	 a0QximxtnW/cpJKJAM+2mGKb6YdB9kFNcs5G4hvSkosMlKEbbpV0+cPDxPysdLzMZK
	 /1UooJb8bwpK2gmIzwefx8HbIZFfjqSg2HdQt84+X15EzrWxeqLHvcsWzZdYrChARs
	 r6Hu5P0KVR6R5usUj4m4qzlP9njE8IKDL5ehBun4gaD3maeStnUyE4aZo5WkhuxPxs
	 GALeH4BYACMenrD8s7ZmikQXiEsImIUu5q9EZIsdS8FHgRC4BtggI+t/XUxmw+BCc6
	 2HaxsiNmaS7YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53CDC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461294284.21653.3562516306316638622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5317ef802ad793eeff1ef3a1542d07df4b72881b0449a68b8d3bc7b3805faa84
Date: Thu, 02 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714612942
