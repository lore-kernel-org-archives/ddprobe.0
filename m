Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA1B367
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716209543; cv=none; b=tCFeLhTSAUEErnRSgFu/JsSpivfvkimkdpGRHTKUXWUWOa3PfwkHQlczodATV805ytcfGC7lOV9WJ5Ljr/9OYQ+WLtxrHWWGvww+Umai4GB4e/EiPtr5R6jKAlubIiwqiPiM1/IV6WQ6Po8tPs9pR0LyeE24o3TbIC8BwCanX10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716209543; c=relaxed/simple;
	bh=AZp46UR+BlYliFzc1yBFD3WAxdHSHfCpj3OsO5ipii4=;
	h=To:Subject:From:Message-Id:Date; b=KEFMmfPrCvmRJSgIWHMMydxMZwoz6PWQ4WGPP7xAks3SIvMhNCRzdH3rCR/RLVwmuZZXo7U4ZTaShUa2famL538xlrGnnZ9yhmICzYkQKUcmdAVNRD4lUX8rA2j8zRvXJaYfAHRCqx7XLEL8HJAaTlokKQIfO+yecmSMrENSZ4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDXnW+mY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDXnW+mY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16BDC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716209542;
	bh=AZp46UR+BlYliFzc1yBFD3WAxdHSHfCpj3OsO5ipii4=;
	h=To:Subject:From:Date:From;
	b=DDXnW+mYCUQAycedJmQqjSOHWR4+HfnITtVmpEBZM1xBYCI9+kWVjntjgpRWD95sH
	 +hvvfnbxrBe945Mkvuuji0XWeSWqzugrcwuLpRpQ1WfuoISGRWNfdoBPAclFPaEB7Q
	 8isxjxnWOxRBQkMPoup8CVk8qMvvTtzsrr9skPasXLW3nMiMK7YlFX2yKABPj1U3BL
	 InOfZlA7Hdrf0PSjtPQRAHJO1HysjseXkI8VRSTGkYEWAkib5y0Z6IP0HbpFb8J0i8
	 lOhp8Vv3fj9dRTUm5VBsh6VIc3IAX5ULx0z5EEelGChnF00D9jmrcLUjcf7k4ZsqId
	 +Rece+7RHzFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28DDC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620954278.8620.17052066117099973269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d60a9c0a2dfead9db6d6845c4e9c4e13f0b8614eba1b12e696cd2dafd47d338
Date: Mon, 20 May 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716209542
