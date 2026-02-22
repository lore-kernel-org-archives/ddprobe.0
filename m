Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304651BC46
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771721694; cv=none; b=A3rLWf7AqwdyTzd7xWTbJNTmOedvWRp1gBBe5/jq/u3MzNis8BKGDCabT/nkDQg5xvnL7jiQ+pTFPPu9OsQSS2daLGihWL0m1djT+0/s0Jq/kRnSNu3eCyXMM2WHKD8gS8ien69Aagy3ntwEM/g9OHvPNcE60NHaxb6YFU8aPiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771721694; c=relaxed/simple;
	bh=dTOHBVwGVD8a85332mvxiQl5fXMUvarH/OE99OaBwBA=;
	h=To:Subject:From:Message-Id:Date; b=czavfZbeHgMIJmXYwnA7w3j4fChHMZaTEWkugB5r+GOMAnkb9L3nf4oiBSpZexNnzhkGVEifAcNFSzcw+3F3CNdlwf57wuqo8uo80qq2eosFjLfkwC9A2T4UCL1jnikJyHoYWLRX7bAE+2o22q1ZbBVlpnguMGpCvF8/yBldI3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzzwhnVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzzwhnVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC888C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771721693;
	bh=dTOHBVwGVD8a85332mvxiQl5fXMUvarH/OE99OaBwBA=;
	h=To:Subject:From:Date:From;
	b=CzzwhnVlpsZFoTvHN97NRLo+TdJ305i3GADb/jRXuyxw07qYdedSkkxf7en4jfFL+
	 2NYtlGmw619HyKofrcngzWZh0Z4ANaf1HQx5Bx5lchlCRT6EpZ0CnLNc2EX1bgMSWd
	 /Ei38j2o7w36Fm2TvN31+PRqTXJRSR6xg/ZCkHqkfGOX2YBd10+b5zKODxafYUQu8z
	 rn9ZGaMVFxaUiYoPMKf4HHsJmUqr6XnFHTwPSGYrCJEANS8d4GQrU6heBAQD2K1aDh
	 pOC7CRzqjLwHaxk9POkcAoO92xa4QelvW6VC6dExi9rLcamnZm/6DmuW95Og8akiOR
	 LTFQo9JMD1ntQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F32C61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172169358.17753.3380388700747284712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c6bf422320f0c34328f7ca39f451ad73946baf1ca11839bb2ebe1c756f3a1f
Date: Sun, 22 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771721693
