Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97A117745
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786829434; cv=none; b=dsTXshZqtWd8gZqz7XoBqVEmBmac0ooOuhfCC+TVsGxm7xOV1+HOVCA4JqnXNBkdpaQVQY5OI3lscXAlAXczn+qh7ZkPQwDKfGIYOPH2rlN+usPYmrZ0BYSN+c7XZtYbFQQbARzNXuWUgmjBSCJk/aiNlIPBJPamlQ3+PyGTq/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786829434; c=relaxed/simple;
	bh=5JUzO20EMhqJj47xlSMRLaMdQoygb93yxYVmSjtGKGs=;
	h=To:Subject:From:Message-Id:Date; b=Bdv7+Go6jov7b9BKQL6J9XzOIT5Sfko160E6eiy9xqZtjZih30GqR71XZa9PykmzIdJShHQodn4cbJwSwG5liB9b2hSNOM6j3afyykFe2e7WKXjattBl4Fm/1MbKiFNlLsVZTclduu7DSfJP+sG5pOH/NZgeqBdR7aV33tDLPzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/nT8H2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/nT8H2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9C3C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786829433;
	bh=5JUzO20EMhqJj47xlSMRLaMdQoygb93yxYVmSjtGKGs=;
	h=To:Subject:From:Date:From;
	b=g/nT8H2QmCFtwu51N5wyIVs1xhntvKJDQIhbeufFGYr4owPrBiIrcKIc/rfDKryw3
	 GlPaQDS1TvFU5n0OwgVmlZuqDRXJBQxmmoeMIdnyOvrOimKnjiNB/0D2cMNFW4u+zp
	 Upq4xDz/b5TZH6GELYTsCHiGg/zEvh+izwPDBaWzKgOfCAu52sD6RutWtr5tg5x613
	 XaoZN+G482FuSQfyl3uGl3XrRs6En0MtINXfPgzgViZ3YdWHfX32DJFNyD+dP2vOLv
	 /B4O/bqjMeyD1BVIV3Ww3TIhQpzZna/IOiWsfbJAPCVVCPLHKbcWaNF5XISzh851Sh
	 OBHkQ2htBgNsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129DC5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682943368.32150.15956019313086993051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3309fed3520ae715f88d5b26bdaca9d45b2d25db4dcef33aeeec1621300f6a6
Date: Sat, 15 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786829433
