Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC063A7846
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773864294; cv=none; b=HjGL4P5za4jmuvXt1tuIGFKodyaMXo5eOjvV0j3Io1KSXfVoxgrv7yWhH0Y17llzuOg+LcX0cXv+4Qdc71i5oTqiOd9SFM5euUgjmQIXfT5SYKXXf+rze9IGrbcCS0RsRo2/pdkk4qZb1qeyHB1CX9TafP+GIp8mGJN0/QxSNSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773864294; c=relaxed/simple;
	bh=8R0VzhItZJ+eGv5vHffqSP7SVyCZ8bo2EnYShk/6WH0=;
	h=To:Subject:From:Message-Id:Date; b=it+8h8dLIQRkCsbejm2OVgxqOx6eFslNp6slifg2cLrZoKdy4oFnpwrCPyISH8CfOvXRumBipJv4KNhINF8m5P2Ly9qgQku7MTMtKFFTW5x2vrdHS9GgTTnqHuTBKd2FQM2nwAm9qulTprlrlnVBY5mikHyIZrfvNGhgBi92X/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnD+rDa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnD+rDa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF72DC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773864293;
	bh=8R0VzhItZJ+eGv5vHffqSP7SVyCZ8bo2EnYShk/6WH0=;
	h=To:Subject:From:Date:From;
	b=TnD+rDa5SCeHTnVtJrAEHJ3YE+C+Hsxh/CV1TdcKUFBwj9IVGzkBY1kyVyLc3JMNa
	 sbcTx7MQ02W7lj9c4oL0aswO4stXUZUbqcpxsDh8WKh1lu6MR9LEG00/bStLRuHSd+
	 B9MDZoZ1RPAjkSBhtqWYwc3EBVpI6s1uznTOh8RExVSCLeJryr9aZYKoqHeCE10oqQ
	 rN1AGtblyeMi+6NKhd31i+swimoFWnPTGrL4vkXLRjO0yxoYT8I6QMvez/f27p4BoV
	 cjUWmq5Ev1Y8S0Uwo8IB8r61ZbUv97xahF2iPWS8oLvXXOqJAT1F8BeneoL4pTjUEy
	 7p7UMt/6Tovug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0B21077612
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386429363.20437.14821398746103215337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb90708a2251d9d210b83bd7658caaca9778c2c10833ff49503ced3cb22dd15
Date: Wed, 18 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773864293
