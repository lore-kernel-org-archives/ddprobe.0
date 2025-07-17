Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0274BA27
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752728994; cv=none; b=S4JSmshaQdICBPZFPECch+einVUyam/gZ6ncuIOT+paRw8RZNkaFt1lcvqXm/11fenRf1WYvnULHph0U0TxUtMxBvsoWpt7v68QTsAtcLtpC0XDndBGuIktGmSt+LK5+Ik2svyLMNe2hwgPhkUvDF3MVSWOnHc3JhZrKQHbFBws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752728994; c=relaxed/simple;
	bh=0O7LBc4aieNgyiVJn/MDvT27pxhivpdjkc6MlUBKf8w=;
	h=To:Subject:From:Message-Id:Date; b=SzFk/Lb9TS7ldptOGIDhbN7fRFxRmL0KzNaNDscaXuRUWZsXBoBdvx+qwLO6UNXpt5wlNOI54lZf/EQxJ7bg5Iylbgk/aEv2lrPWfsYTA+oIc0OOnXeUE/CAxT+H4G9o8QsV47Nu40XCAVwFvQWTGsn25eQgrUDBiSZ4K9UXF1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3nWleo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3nWleo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D86C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752728993;
	bh=0O7LBc4aieNgyiVJn/MDvT27pxhivpdjkc6MlUBKf8w=;
	h=To:Subject:From:Date:From;
	b=L3nWleo9CYSCFKG+HMalsRFDfxidUPq/+n6nAmr4nTpAOS5jKgwriqcDEkPK1GfR0
	 tEeBiJ0l5vhthaXMHx4+WwAF0NayZHk9uUx+Yeee2nJmaq7QNcd6u/uemYHTYJJghJ
	 SM3rPac54YKd10VE2PITw4WVz+T1TB8a9bx98+l9Ap71EG94FGA5EvERFndokNpR1s
	 UqFEsOcECufGMDLSAVZ5fsZ4ZKT12CTgUFg1w4QiZBmZnefD0lbL4NdJ71SvTU8vnl
	 3skxzvGSKonKwOcK7N9m2MCo9SK/WVxmFlDJ+B/xVQyOrhZaDdezmJaXHRssUehSuD
	 Ex9qQyLbSapZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92573C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272899357.30558.18307407075267881266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e02352876245e538f22173a96026233a2f92f8134680c9da21cff29be5f3de8
Date: Thu, 17 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752728993
