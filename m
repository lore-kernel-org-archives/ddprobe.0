Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2245B13A416
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718278103; cv=none; b=LSU4QL+5HLEGcariHcjo6fEFC4E3P4ezZJSYjG7iitAaTEcqooRimH9eH4ks3DFPod9JskuBpiyDJhDK2MQg1LBSXrptKKG1cnjLh7vjqFQ4rVsnlyIjd9HXyvdGj+/2X5LfdEzY0qytLoxyIqn4QNVmnyct1/UVYj0t+y/MZR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718278103; c=relaxed/simple;
	bh=pmyhfPssaom9Gek6JmWwxInCj67cRf4YnnOsMy82UoQ=;
	h=To:Subject:From:Message-Id:Date; b=XPp8Bthn91ts0ZE+k4j0qrvbUeOcmyGiqrKb7DNthtW07P3AY0r2fQL2ThD0AKrbJwD0IxuFyO31IFyvE3TbMPvRHOQ6ZrYTA8ogk9J34GHupQfWr956/ii/wqmhFkDgom7L9puco8b02OFKcoHfHucL5br1eZ3x5dzWrUdqNYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEV3Cqsk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEV3Cqsk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DB2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718278102;
	bh=pmyhfPssaom9Gek6JmWwxInCj67cRf4YnnOsMy82UoQ=;
	h=To:Subject:From:Date:From;
	b=YEV3CqskKoC2QrhEflfgNx5YkiK6MkLQZrwgls4W770bcZaG645bf6O0Uoe3baYaC
	 yZBzSRdx65sz6DnQ8cjB9on5nOiJ7BUgminUPj25FuPVpgut5Mzfnsh4S7832+Tydj
	 wXnY4BW058vTb0jH8nbhogtdV/kZL19oon0vlLxsZAKDBH+w7IALPdp8atBQ4o+v0t
	 Di86roZri9FKRf4MVH0u3gGcdOoAYDKH/wwQlXkSn2xLByShvA4FpgL5OQn3jTmLfe
	 jxSeyNn85wOWe5SbcT2xSH4tSpNORlh21Dmfrri5+AwjagBGO6wQINnqUs+BLFCNME
	 6JtuWbJBf7ctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C33A6C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 11:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827810278.17455.6837236469264669537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c588d600f8f9d3457a88028df841d83ed1928b00171fb7ffb89df143b2c7ee
Date: Thu, 13 Jun 2024 11:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718278102
