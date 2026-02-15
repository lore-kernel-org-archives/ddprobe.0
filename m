Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DCA21420B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771124094; cv=none; b=pnC4F9IBPnkbUp9gc8TR3GsZoCXGb8myB2kgjXAJ7lUhR7GDA+txHXnyZGfTyUHpY/3P7uGQoHDk83bBO9AVgDiZWvyfndA1XdCfgR5d7nXPugw3CXtT1FHp3sw6zbTIBB9iCLzE+xWrVBwteUsaOjzUbBGYfQn0MyCqQXdyMuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771124094; c=relaxed/simple;
	bh=ZctZweN45reESomyMsmq8k9IaXlbj+r3mpWjrF8qHz4=;
	h=To:Subject:From:Message-Id:Date; b=fLDnDBEFYFk4r2cE4Af6Z6n4Wc/ZC9bLgE5sAm7+KEIOBCsohThcY7QaP6DKp82B+v4yklZe7YpL1rgD5fHRpcArHg760gjNWY9PbDhCFRHBPDerWEEVXSk1tY/3nXBnW8B2fu9zXD/QkLNvufxYKMksUhABU+vcpcxs1aM9Lg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIRXnB8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIRXnB8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4DFC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771124093;
	bh=ZctZweN45reESomyMsmq8k9IaXlbj+r3mpWjrF8qHz4=;
	h=To:Subject:From:Date:From;
	b=fIRXnB8EOZatckzM6G1ZmA7DN6Hn1GelqZ5uWwYI4pygxEtLP9BEKuuOV8aRztzjm
	 mUgkK8McXLjqKVmwJpLzqGFLm8N85v/FkRfxmzM6RVhEyJ97RmGaeNUdMnbAH28uid
	 /yylWKHLdvgsSJyPuHV0nZvk4rm5ClEp2GnWC2RtdCuN5XFtpED5gB7ezLOdxYSNYb
	 sjB6/9gHl3e2tBLoGQ5qgRQ09CnPhdsUgnU5iHOy5xMUJ/kSyBKVSrNw/6TqxxkS/V
	 Cgsy6CCutzE683WRvOW6mywRsYeB1qnmR6v4szL7+2eSC8zDHuzzfc3phjWmp9Atqr
	 OTug9IGWHfxqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC878EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112409366.20213.4590620660270134189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d23b251d59447c3dd7166faccbd3f255990d2a7776f54fea8201964ffa74b20
Date: Sun, 15 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771124093
