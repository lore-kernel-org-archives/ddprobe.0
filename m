Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE1D39446D
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791777634; cv=none; b=U3Du3OGwkrluz807dKbOBlylwETJoBs35LTnY1q5lJ4Aw98qoohyAHlItm5yKa6Yx2RHsXtGPQmZZirWoQBR1AR9Qu0l42g4ojdyKGKYXCIXa6whpWCKt0E8ILZg3HNsz5ZDzsAX2BHuOXDbnDl96gdXuhwDSBRUb4JNyBOx024=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791777634; c=relaxed/simple;
	bh=ZcPD1moqM1Dsken9jMxdQgMwX3nAvW44NvUtH86e9+w=;
	h=To:Subject:From:Message-Id:Date; b=j3hLFWs/SZbsA0sbBCQ4XQSJCvGFIKt0YSccJSXspWDvo5QgIXpaT7qUzLDndEp2XKtxNRjkbllqVR7JOgGPcD5WOxKE8PgGu+1/WdYcVb6qBkHpnBHomad0Mi8y0BKr6O2lYd+V4gqtT8CWucEkHdRqh1GK+MGoJjbwaSWHrmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk8SNtvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk8SNtvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B35C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791777633;
	bh=ZcPD1moqM1Dsken9jMxdQgMwX3nAvW44NvUtH86e9+w=;
	h=To:Subject:From:Date:From;
	b=Sk8SNtvCcjnRgwDQSdHQvl/oRvZF8E3lmFLlmc0Q5+TPo798A6MsKnR/CS12EHhLb
	 ByiYk6a54sgivJ/tIWoHQ8/8vCt6UcIf1mM4DYlQMyIuPttOSn7oHACwNEiRf3L9SI
	 EQXjCzz6rhL/XJOOvoA0WOr2cM5oljYitB0w3vJlwNA7ESZkMFIS4YejKEBUi/fBNm
	 6Sl49vvNMkkii+bNbuj5lyBmk6+6kK1m6UdAbAiwZxoVaiyo4DniIpj2nHR7eVfaYG
	 WXiMOUm4RQdr+MXKlLovW75GIA7x2IL+27ZzxerQPEnL/kNkSJwI41bKbUdMpjtzeA
	 fnHfwamDmAAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF7CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177763368.5090.182412471825811468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92ff93c6a61dc4d3c5964ebfd4320b9938a2cf2d4ee3252d5abfef326eee470
Date: Mon, 12 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791777633
