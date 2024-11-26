Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2550E946C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732653955; cv=none; b=gaY6kd0nhBxRUrk6T9radqOGHrB0oBIMa2sLhfiQcj1RmGio4ryv535JpLMS1MYLHyq8XB1IYb+lciBEmPvcDU9+y0OALRx693wcIX8SunFNoYIn6y0xeGU4yRILY8YodPgkNk9TqeFwjOzkLlNLtzZjF53UWTR6tXKK798CxAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732653955; c=relaxed/simple;
	bh=LrFZMYrg4GfIfjZYxDrBC233bmVME9eQHDipcnMbxMY=;
	h=To:Subject:From:Message-Id:Date; b=RXM37o0Gr2DXm1YgwJ1r5xeqh3MOOcvFMkX7B6g5g+k//Nxn/1X4JF2SB/lGXtMWLAomJ9CWlqizbzOvYWjAnvVZbd0y5rJ1xki9QhZpyotoIASTveG2SdoSrXqY1iOTseuSvZ0KrDf6JGoUQDQSKMU1dw7S/OKzmLLFGkd6LCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cww97aOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cww97aOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1FDC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732653954;
	bh=LrFZMYrg4GfIfjZYxDrBC233bmVME9eQHDipcnMbxMY=;
	h=To:Subject:From:Date:From;
	b=Cww97aORj5RqBr3qN91rK2WGcNDSXS4VJBs8irVDGOlrNbCWTOHEMFXFQ0T5SPOcP
	 OUHi/OOn+Yz+1hk+01DUR+xR/sE61qaoJ/Hkij8o70ylzIfZYHI2Lxs5VAK2M57yyn
	 A7rtUJwvbkAMK7zNPm3fylFgYiL+Q9MQnoRxUCWcAoFmaoh75jOdyhcYFf+Sz7FnB1
	 jUEBFHQrbxAiUnz96WCV9uM2ZELyXbzKsIoFxYeBoTbNwQYo96muTzAQCdggaYBlOg
	 M0UYR7ZT/AO4BXxzlkn3FY+mo5e7/+puAedlDc7yHbX+yx2+2gGAu/QEVU8q3WaJrA
	 LZxtb8OZCKK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBD65553
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265395358.17735.12621109370635607906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db217acb058ecba4540efa47e1409583c4f57da7aeb295090fd37341cced5a7
Date: Tue, 26 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732653953
