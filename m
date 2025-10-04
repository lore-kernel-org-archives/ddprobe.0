Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E69912B94
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759560594; cv=none; b=RvSH36If+SBmbM5fNCcL9NJIgdTDvaF3Wh9lg/+RGCn4Y+R0a3j7935/R3Cvego/3WrP7UXhifXfXPH45uloCsYaM2SFyEkaRGgnYK5aqf5HBWHmAVSG6fkUT5BKMke1RLKArIZv64eQYM/MT+pmT1T0Pjq0AfbNqvXWjQXElCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759560594; c=relaxed/simple;
	bh=rvh8Uq9wNXOG0spvZRawEF+E/H83KMdHy1+2iktX/ZI=;
	h=To:Subject:From:Message-Id:Date; b=XhKdp2AalLPmBY0dupGrHpb+jPaFxlte/G4oo56zJ2o6xeqhtXCukaAum0c/epJp/1ghDuOZucKWVug5fQPR39C7k+vLQKI+Hlx1BzXwdVlihS+5YkhnLe4ekW6fSi0/CjNHVuvCLxdXCwByFVRIQiQV1yjZAhxBSjCjzZANpSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qtma53B2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qtma53B2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A992EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759560593;
	bh=rvh8Uq9wNXOG0spvZRawEF+E/H83KMdHy1+2iktX/ZI=;
	h=To:Subject:From:Date:From;
	b=Qtma53B2nyI3yrIPAX3lp91gzGMBoT+JmT/dN9wbmQKLj4mdYR9O3Si2lkD38zqCK
	 RaWlswMYhqfNJ4aRkIjugsjNYMkW91C98gRiBfS3VzSrkvKVS/IzuFpdpEuzQzKteG
	 sE8Y9E1Tscdb/ojOkz1z8v8je+meP773uPl7Hwav/gkFarR43qgBThVub8ItfNl7OW
	 vzk1QSLwUoQDEXSgOPDSPq8mHUDJ/tvUg4++ABsmTN0pV3S6aNn3JmHRsB86iAk5Hn
	 iOUcKh0Tw8l2l3RV+4OBcrdGNSDJiDS9BultCaSA647qwX4xMouZ/a06eysZIFa8dd
	 ITNKPVZcDc5wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C62ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956059357.10632.13631894817193410097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0ad65b7be19c16a02bde1a04cf0a181d66417f6242bf2c145e7c9d30ba8b2a
Date: Sat, 04 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759560593
