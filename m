Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DB515E88
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723761953; cv=none; b=KWuk6TtVjdlytBUwIKB6dn7JBNdB/lAORqpd9zwQxyab1ELsZLR0WS8OK6p1JgpZUTEFCwpe9WOhqS3qWENmICdyOi06hQn0gFi/+PQ2jOqtIg7JUP6UDCJGKqJV/crEpilIdUnaHU83wPDNQkzvWdbBNSjIJuUFu39OGcXNTkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723761953; c=relaxed/simple;
	bh=DPsT1wslKHF4V7GKK/jH1U4YPnjt71gSqHYF/rWVQ6Y=;
	h=To:Subject:From:Message-Id:Date; b=pgNueGuG59p5UBYx/zGwHRet8wx2HCkLleXiIjIuwPccNDlZ/ww7kOmE4aT3JPEnCnkVJqe/mx/WAq2qkViVHSNJSIcFnuTbK0y1aVFG2fs6S7jB22LTKWf2tMVNKUfB0BjE5CfNLK4vQbRxW9pItcplaO3h1gD6xLopv3eRsEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2pkPbrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2pkPbrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A382BC32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723761953;
	bh=DPsT1wslKHF4V7GKK/jH1U4YPnjt71gSqHYF/rWVQ6Y=;
	h=To:Subject:From:Date:From;
	b=c2pkPbrc8wcGEgC3DtpdnVlPupDRCPSOIs4PPUbqKwdkbxrlpeGJjRDem07hDUIhj
	 0pgQgRxv66sip3+nbWaEEXXCWSiODmuMTSh5Fmg7DAmgpeH4cVOylP4+yjFutCOpM1
	 fQpAWtfbayJRo6cryTH4Kd5gZnpXS6Ir+KQfazgiBuVIlQWafOkCkotxge94NogPfL
	 yXQfbhPJy16PcdT9VD+8xnRXGulFod1VWuKYpuHV4ouWujkCndLO3n8G2arg/pv3Xk
	 934gys5pwfrS1y3AY/cWt4Dhw0HxDS46UyZCyevufROiCmNZAoqgvtk7sUnExRtYib
	 3UaHKi9r4U5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936DAC52D7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172376195359.9122.10238143413244994635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d5ae85efa4af122546f804c020e1d8a01aaf5b4d9ecdde9dc67e60ab36e737
Date: Thu, 15 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723761953
