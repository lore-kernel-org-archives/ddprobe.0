Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9FC299A90
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757762394; cv=none; b=d+qAGUmbeAa25FjLrQeQuM5QjoXIzwBpgrhVU/3A7qoWJY1W5QsaAhjwE9AIlxzXOPcd5RzhmaQFHXUxeorMuh2GOkSOFX174HU3SkktcGj3QaQ6PaGIKUlCZ65FtrsWMxiSOiuyM5BTELshwSvZNDvUKtBPZoU4NV6zosHEQX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757762394; c=relaxed/simple;
	bh=SwWLhU5nIWfTHOHdhfYmzUsG7y+hN2Sd1ArAL7Od6OE=;
	h=To:Subject:From:Message-Id:Date; b=T/4xZex4zt/SOBaEicOyyk6NML1SuCIAMRyi/58qRrR5RubSZ38SnFmxMaBlS3PoHlKxoSGkU51ivq/4aBZNqQvOqZnD086kSW43l3zu8cCjCUhMbTZP21uMrSnO2o5hm5NV9Xf5JAMU1CFRjjGjyOqqjVDMRNu6WlATS/SBkWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f802Hubr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f802Hubr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7130C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757762393;
	bh=SwWLhU5nIWfTHOHdhfYmzUsG7y+hN2Sd1ArAL7Od6OE=;
	h=To:Subject:From:Date:From;
	b=f802HubrfzFtTtLi7OtMqc9C81E9pvHuMG/5W21wtuCrEfhoLGdBb7C2sE4/LOtRr
	 6Cntsc15EwKhXaFT9qRGCw9Fx76E5FjxKxXkqrsQhFcV3BXnNWsbVsm3Tm+g/jgbQl
	 q94o/DKpljyClT5aFUXNtwMf76R3xduSn/ebXf0/tFsQXyMquONmJUZ+locZ3IVeh1
	 exgw9LHwM1B+VVKiFRb9t+wMYrHLXkSE+IB49R14CwCKgyDabW5lhxpDHABzPzKOcJ
	 fD/lumtpvgvK/AqIH4FJLCxDmEMRQLsrSALTTxcPiUaeajiuLWCfs1A2qkBTy9aa6q
	 /gbkx2XpLNv9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A9CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776239358.1400.1352712952467221286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d10beac84b7a2ed29f2980e1b44fcf07ec91f39b92cf3b63b6883a4304a4db
Date: Sat, 13 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757762393
