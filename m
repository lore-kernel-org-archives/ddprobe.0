Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E5519006B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750530594; cv=none; b=FYs1PmSulBubmCsQ88QTxnEWp73QQvvn7kcHKX2Itc8q5kQOEl6rbDNse3b4us5WSU0BbXNoa5dayZhqAK5XUPQVrtF5UmplzajDeicKLttOk3jWC5O8TrfTjqxTtrwaA4oHKwNMhyPCorUnXh1q6UFNMnJWhaI224FoEYIjIsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750530594; c=relaxed/simple;
	bh=dZTwSxnkdR1qvGmd/xctP8AzA1VyOceyL05kUlG56s0=;
	h=To:Subject:From:Message-Id:Date; b=f0haVlUqxeQtgyapbKsveZYtGV7Kw4P6hpCQZNxx4MPzIZLSgk3OhJc8v977S1Tw+d5AhTc44KWACPi8u4rLwU2wkS6YQ8QqWp2LeEmddp4fTYvstsRA0GV/1+f9JltyWEhcRzTCypEPhrVrd4Tjv5SBuxSvHcZO2qRaxcUdbRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMQ11vYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMQ11vYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44B1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750530593;
	bh=dZTwSxnkdR1qvGmd/xctP8AzA1VyOceyL05kUlG56s0=;
	h=To:Subject:From:Date:From;
	b=lMQ11vYd8lEATyRuM6bfKrNLbyRFV0KYpvvjz8+80Vs17l4hRxATh1VYrl9SeGEOx
	 LPDk35wP8Xq03D8jpXaNXJm2eIsVxoZ2mYLTRy1yt25DQripJIOq0tLnX+755qANYU
	 lvXGg+4U/TR/WkWbhxbjULqAG9sf2RnEz0R2snsqILgaT7383zP+9WnUSW8aOT2cpt
	 3izb85am2dR1mxVilalEr8HlQevwcdpt1tmpw/J5jwI2HaaM2iKift+UV4x4fHq3v1
	 uA/oHedKMNlNAWVOhTx5X9qlwhfkNQiawjxYOF3J7JuNUcYCIwBXwc9Ud4qPPvIc4m
	 ZrSLDRXP8F5/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9278AC7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053059359.20475.6643847432637617515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144bd80ae58e98c2ff1e7963e8448fdddcf06ca2765d2823c9ee9feb78b4d754
Date: Sat, 21 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750530593
