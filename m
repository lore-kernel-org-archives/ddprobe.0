Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7629101C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741759133; cv=none; b=KCUynLPORG0Xra2SgLo3hMpPDTf4pqX4cTAwgpcs1k1mKUh+NuGPC3TINuzkmosSBBAMgW667HYOdPRjKj87prZKirUXkm//jdCjZ1S4dtLY6LINPXAgcEYWMzzIlCsL0aOAAoxrux7HD5RNtVtHmirWcCBjHPLf5Fm6RLq3G8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741759133; c=relaxed/simple;
	bh=7JQBMClx0Wu8FOCRsBBVPgHbaBHPBohFXkcK9QtaCoc=;
	h=To:Subject:From:Message-Id:Date; b=eXC1/W2MQS2a8Z2PZ6Ax/TQONh2aCDkW/ubHd9wOX7qARv0i2NCnhrEMPo4HWrF7Eg5gD/DQfsADR/ldPLIBF9amBEzduEgs47JnDsb88xenwY7pVYl/vurDd90R47RWstf+yWf8tOmIxsp3Wz9123VZjvKv9ItlcouuXzWsNYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeoocODK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeoocODK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD29CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741759133;
	bh=7JQBMClx0Wu8FOCRsBBVPgHbaBHPBohFXkcK9QtaCoc=;
	h=To:Subject:From:Date:From;
	b=DeoocODKo4oGaUv302INUdnO2Do9vyjXhUi7b7njC2mcfmdmOtMdEIDmjIgGxPJ9w
	 L5M7ktvBnJ9HXdFNFvpeSADXiE8cn2AP1yfaFWgQ/0ppbu8Grx1vzwizvpK0Fw+OED
	 Ho8No5TThf8kfFuk2AsRLJsZtG9vU66yAMDeNnstAC/8YLQ+eX2SEyJyfxAr57jZ5I
	 Z+2IFeClXuYBwoKSBMLMn2FvPPxcx6FeHhXLq+EvpIZ8ZPu72aiix4EOo0APRCQJoP
	 Q6q7xpVj+XVjGbOshlOS9wNEO8ORcubPvfQ+t9q0q/d/Z0eeixKVv0zX2uE9e35o9T
	 8cQsnMDPbitAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C10C28B2E
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175913361.7518.14481527904761547254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04659eb530b6c5c611f8846c6e72b0171020210298407374ba77ef7d74df7fbf
Date: Wed, 12 Mar 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741759133
