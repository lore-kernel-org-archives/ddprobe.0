Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FD5146585
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759834194; cv=none; b=m4Z7qgKWvbsqEinnUjO7LnkqOUSyMP4IX3Z3WKrlUDuWlIUEzANnpsIk/QzpaAtSVIXxfvIS/E4hp3GZGKrMNEVkR2Zy+laOs++gWgh7NIlDSeycDP3noKcZ90ehkz8URJVazXCBGON1CfOZ0vQqOzximaXrjwmom6q/XaDzOaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759834194; c=relaxed/simple;
	bh=iDOx9/9oMy886yoCPg+bgFukCaIFuAJWBURvgvkEykA=;
	h=To:Subject:From:Message-Id:Date; b=mY4TDsn/3y5hhDrTCArCYBGxDt0dcHYG8FIdMgXYRu+P49xbUQsLx3zkcSXPnur6F4E5UWkuJG7CHWh2BCHPkmy47bN8wZFUJ6J0jn7+SBtT5nsSZ4XHc3/ak6FN9zacah9Pus9guMmbvypH0K0HjqPphsXuG9BZRP6GMIGbI0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRYAN1pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRYAN1pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759834193;
	bh=iDOx9/9oMy886yoCPg+bgFukCaIFuAJWBURvgvkEykA=;
	h=To:Subject:From:Date:From;
	b=nRYAN1pdnMdgqGIdBtFPttIgrUDUEsFUPP9GITD/xkEo0sepd4cSUmrZd87WT/bbG
	 JlwwTyjEuEY0o0/D51W4RgwU2qai5NI3CgovKCHuMnjLPoxKESQ/CVbAqjD7SoVvjt
	 8Wb7ecYIqnyfMqTox9G7uUqqFW+RiaXmWgn9S5QZXWZ1TJVSEHuWUnldBXR7SK/jAr
	 ZK9tw+TwumdQz9DE+i+M9YhHir/KMh5Dh1VO3bs2Mt6mZ+XODzSLViMiEi+Ayht8E3
	 s1kGgrr1j3fIXhnLOEurWCTC+85+pnBLrz5KiJxRsThrt5iPeErmxTVJdxXtP6MpIe
	 zLztW3GJom78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC80CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983419357.1781.24901844154338578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5614f85e7e566070009d5325d897929d78de08328db867c23d870b79c109d9
Date: Tue, 07 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759834193
