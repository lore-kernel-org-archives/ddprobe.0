Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FB848CCC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724392554; cv=none; b=AK0XlMNQrAirNFiuwQQcC8uttqiZ1ttc5/ULiAwEcertSkMpY969govU12x3ISD2UZZBlrwOUoqGtEoLuFATiZT5rrLSMVQb8j37YRcfKGKYDPEs4bWklqfqxxS47Kw05ht47pzVzVmwIiSeJI+HGoz7tHqRCGdSkteeBnbPBNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724392554; c=relaxed/simple;
	bh=Nind4LEkJNib7ypp+Bf1p/B043BUfjV6XKr1AYGHylA=;
	h=To:Subject:From:Message-Id:Date; b=ak2cCV6A8b7F5SomoK3r3TVTByv+Mw980+e9pPqSIjk0dIf+T+Y+MMEtSpbcJVNKg89ZBnvCzZClngnUmFPIPuqtG7XKotGoxxAd6fe7euaTXg2L/hrUDi0TLLB8x/R7A054GR1bCtiWbDTwjxyWMJZHxuOrly4y5hP700+Mn+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aO5yw9s7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aO5yw9s7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC34BC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724392553;
	bh=Nind4LEkJNib7ypp+Bf1p/B043BUfjV6XKr1AYGHylA=;
	h=To:Subject:From:Date:From;
	b=aO5yw9s7EZ25zyBnDAwsfnF17apTYjcJ7HZ895oOPqIbLR6GVTxOPvNnt4wwjDaWX
	 tLOlbhMfuaSedn7SY2h1lFt+3/c+fGydpuYiTn7E6V9iuTvnUpcGXMCpwI4v3XmR7Q
	 0jfoKLaCTrhp25+04EOyiCgKKDNcCpyBcOHjpcfc4G+yxD73/QNu0Y5We87ElFG5Uo
	 DCgGt5ke8RYZomA2AdAIvHDN6YYagyFJgA+v0JJ4oiVObR7UGThWtUQMlifT7ODV9C
	 9WebDsxq5lrC3TaOxrH62B3JNzRs32O9DffoZyVHgZqtr06+NibaP20X8mSnwlrVdw
	 814smdHfPmEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8817C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439255362.22061.10802201705273784062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ab3eff816109735d4f5cd8d3822a338cd07fed968ed214e7e1110ff4922a06
Date: Fri, 23 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724392553
