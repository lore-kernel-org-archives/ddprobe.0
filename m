Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7BA22338
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727028354; cv=none; b=hzWn33XoW6QXSnLWXDyBfFxPprwHoAzeYOh5np4VxDi7Haujhu2nM5Ua4JU2cSLzzm8PBy4taduHV+IGl7SqGSognXA93ApcAZinVagLz5kck2hXhS0qnchkepP7yldAd0Ip1pIHwkooQ+Kgd5wBUjh14FIOISexJJkGcJJ3BiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727028354; c=relaxed/simple;
	bh=ugobUrRbDXQaby3ervwlozE23JJpLe+FQiv9CfaBv74=;
	h=To:Subject:From:Message-Id:Date; b=hxLsElWI+KKCF5iZI5PnnD2S7Ga1EChiYVCaT1MxXOH1P88cdipoVnARLkw7KpQkmaPbIsxoJ2Gnzpwca3///b/YYqRQBn6CxP2O3c5FFduftgWBOskhEkISBOr9hwi8QRw0v79KHulakKpBsve3fqr16PiHpNNBCki5WMxxCjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpw913ZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpw913ZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC94FC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727028353;
	bh=ugobUrRbDXQaby3ervwlozE23JJpLe+FQiv9CfaBv74=;
	h=To:Subject:From:Date:From;
	b=gpw913ZQQH1p5VVsWHr00B+36ItLxg2XfegonD5jTwzVMm1uMAoXndTegGE89XsO0
	 KXxvIXcoVDzc460qZpbWhAlCnLKOyHmmP2DXtmh2l6wJAI1j3L34HpPav4tsNlpu5k
	 qHh8dgbySDVhUYtCq1aYW/QWjHxWBpN4sz4yfDqBBLcrcyY8Cx9pmijFQVySIDABxz
	 AsE19kROrfBhexfWGHnmazCBrWs6M2DV7orceZ1HtVZBV+Xt8Z0+u0QuZus7lR5Z4X
	 HYRKQM+e17bOPPsDiSrHnqC0hrLq7L0wRCtsubb/hRXN1/4ixHDVYIUFvdgsUv9m8c
	 yFT+m9zWkMY3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB95CF9C69
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702835363.28421.2855295091856562786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2af6369bcc7f683c8d2a54ad9390be8986e51d85d3b9203becc73d421522ccc
Date: Sun, 22 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727028353
