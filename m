Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F60E3B1B4
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784496514; cv=none; b=JTRdG31g4Dlsw5ksvuLermQeK/5mC3fjCMvo5+a+itciJMVNSCBUk8CsVBIA6HvTICUyDRsFYFGAHqLB8ftoy50VqRiHF/RFdQqS4Xo7H9MKuhejLM61TjP5Gksgm5fP/OwwxQkOnUQuwf1KdU2cn6wQh1uWY5ifWbpqtPWXgpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784496514; c=relaxed/simple;
	bh=olWR828sh5v6miIK1YXWeRtUcnxRn0x7tgXyFaitHVo=;
	h=To:Subject:From:Message-Id:Date; b=AakS8in6g6oeLHxV8TaJA3/vmT52+1byt1duC9P6PB8SC0+EwQ4fCvyi1KrTNYd/4Owy1TG5g/inTI20ku248X2N3zp6imjCZY6QQRjC64q4ylelb1B9/YZHLHuLZsOnM/d7yqOVYxJQ0Ycf8556z6rgGhQBo75C+s2BkxTtmxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuHuVAVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuHuVAVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0D0C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784496513;
	bh=olWR828sh5v6miIK1YXWeRtUcnxRn0x7tgXyFaitHVo=;
	h=To:Subject:From:Date:From;
	b=PuHuVAVYfysVdsCVp513rOR4qkzoIMpG9bwQHxC/aWdVtj7X3aDKY0lEkZUEyOktx
	 GeN6Yw9kWIDGH5nGf9LOTJeWKqqQ/Y4b2TOixbzNuTeTnYWp6ur6b1x0wyEy+AMA0h
	 T9/Ujkaf43SP0eTXr3PebqNS0jnZtpJ9SlfxQOd0jgJNsi8hrrH9Q02NmlQ2kMQBzQ
	 RnJcfanPf4FIIerEnaEKouN21fnRdLB8cnSEeAkEIoqMdL3tlfF/woQ6ZDBGOawxMA
	 Mnma/8MzOYBXbbOCk49jLEAfbKD6NN1ASyWXDVs3bAUOedqMwsBEbshm3Z5J0V9nUk
	 pPZ81PbaVHjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B97C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449651371.8333.16408810075663617951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d40d84b72c5293a9d648a6dcb99e509c7cc9f1ca9989bbe0bce3890710d10cb
Date: Sun, 19 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784496513
