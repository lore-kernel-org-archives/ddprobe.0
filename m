Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272E172628
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764010374; cv=none; b=qNXhIgTtYgYPG2pGFc4Vwv/qY1TgbqKAohz5ijzXP/ko8NKbBFO1JyWou8Im1Jt1RXV+kyBcOlJ/g9tMuYYXMPNPYI16DoLppXrPwHM4gPvPyoZYUVEYrE/S9UONFlXfdkU8yCjXNun9iWxMnHKsKu8d4YLWDuoR0xBRymH+YJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764010374; c=relaxed/simple;
	bh=UnJAub7ZoxeqGup5PcRd314M9GHuqSXdGQY8zVqCDMU=;
	h=To:Subject:From:Message-Id:Date; b=GBhsaCw3Kt1CnVTsRPmBlIUt6dDhcTx8Fi/PAWm+RomLr3P6CP+1NWjNzKujB6+yaSTkYMzxsByPek7h9EEGEyJ7xSzRzSO5oZRc5oix/LLFOXtUYzKtxeRYwJHW2Ibnz7QZ5ht02NGQqs2zzGSXLW+kbUDz9FGcUem2Hbm6Nwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3srsGwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3srsGwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C7FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764010373;
	bh=UnJAub7ZoxeqGup5PcRd314M9GHuqSXdGQY8zVqCDMU=;
	h=To:Subject:From:Date:From;
	b=c3srsGwkkqkCmfW0U4jLayAjrW5KKhQdbZpLBLRG+yfBNzA5FBRq8FfR2edVk0W3a
	 1/yXPfuSoMVJTLiT3SlZFUr+OWSe2u4txhCGIY2LWWd740kRxEz2QKPvpsnWsFlXqo
	 ZypDmqvrcWekuSDwfg9PQYC5KiwwmcnDsJqVatQGFyDbxuDmPusJlI5LHjOt8DRgCu
	 HYw8y1VPCrYJKuBFuffV56dkWurbRuUqCJ4j6IA6ey1275F6GI0CPijFryj9VbEEYt
	 WeRjbZETVen1EjqlFI83XYuBMTgEuBtyADiPOr/kw0Gsl7p7YH1fUPr7TgLuvDYY3e
	 SoMkeS6T0EhQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9820DCFD34B
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401037358.31263.11253181875054630810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3121411dd0d6a3549280be83563fe04741c3d4aadb5484468dd406b02dffa69
Date: Mon, 24 Nov 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764010373
