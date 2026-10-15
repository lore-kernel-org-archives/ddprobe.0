Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF993A59BA
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792104034; cv=none; b=p0nZcykB7w4XxS8LBUOvoA9ybCfpfRhHXzYiseSh5UPkF/Zd/xKLs+SdDClBnnl1pTFSMMruaZXN3zCNcYJtC8xQpDmQtEigUGoEZQ21XaSzQg6D88uqlsVGPbpCNLS5l0RoFBIB82ltDQE6rt5iFkW1Wdt+I7X8YxpYBJ37f2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792104034; c=relaxed/simple;
	bh=NT25oq2Yrc+Zf4AQ1lxH/4PqhIrbOucjZGcm6r3G1ss=;
	h=To:Subject:From:Message-Id:Date; b=dtO7Fu2IhtL9HPxdvXvdezWtKQQhXOmh5jPwdQrQIpzGrxf9PL3fk4erQs0ttJBuQfNjYxRDcMY0m6CKUWIbPsVSllpEYTGSKw0oiZGvdh7zY9CxhJsZQ+TfRUvBhG/rc5ogGfUGYVuNltOltYV8rHO2xmeRGBeI8V/2GOVeWM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Butm/x9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Butm/x9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCBDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792104033;
	bh=NT25oq2Yrc+Zf4AQ1lxH/4PqhIrbOucjZGcm6r3G1ss=;
	h=To:Subject:From:Date:From;
	b=Butm/x9L5cD9DvrQPjMCgTsHlCSNAdcf64Z2e2U5AGAISYEsmv57lO5qGx8ciTgAr
	 ik0gHdGfv8KCKU8gVb8LXSRMhV9KC7hVTXMmn4LCS4A+ciX6jy6zqzDd7UFq9mu1za
	 DoniXqzIn7t/nDzE0Y6aC4pHPjrKqdgw91zybt0gYBW9Ny7Qiihcz6bVDJ6lJzWk9M
	 4VGGCGKAGoTrkA1tBZGKWzS3txxWujJz8TWmFQ9gmNEExnP8Yb07GqX5ELcuoRJld0
	 aP4K6zJ+NjWKwzSdDNujPK3JdO5JwIa17zGsS0TMwphj1Q7I3IibLauLXJ95kKtZKn
	 rDESCaOyAh+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F56CC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210403368.1900.8094682243919505487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2f13192c6655bd7ba158bebccebc1bd1480a5601680fa2a96a69ecd116754f
Date: Thu, 15 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792104033
