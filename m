Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D1D79D8
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714956143; cv=none; b=EJsE3bTJ+ywreRIeMYR2fd4wTZr5OMAQj2ScoR/AKvbsftJd4PGVfdZvE6mh2bRXv8xRG8XVj4XBFAwRC6Nn6eOlMZ20PBuMspIdSSH0oqYParSafslhODRQp3Nn6WYNz6giYW2O/ZFIGC00/CufcHgAiff8YMabi5Uwi1UXjBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714956143; c=relaxed/simple;
	bh=U8zKmrPW3IizdkEixyRPABpVqW++N2mq4Xhq6C/2gdg=;
	h=To:Subject:From:Message-Id:Date; b=cSDAbA8HZizX9zx3cGy4kjNGp1rvuQafn/eXccU0TwMAZJXpSYstStwN2y5D+gAvLaUCZqulOhbDQSL+J03qBaf4mbFEXCJVqBbasG3bTzvfuGE1M3DAYxtsVz0NNlv6iR9wkADXehHGvKkXlklif4M72Vu+Yv6JFP5cutGsRlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJjIlwnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJjIlwnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88A8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714956142;
	bh=U8zKmrPW3IizdkEixyRPABpVqW++N2mq4Xhq6C/2gdg=;
	h=To:Subject:From:Date:From;
	b=rJjIlwnDubUXTfoPMirhxPi5vDlLqKO9HK4xUugGwPF5lqcNsSf8+bW9K/20pzFQe
	 r5h7ZfU4vJsHQ4kivqJv84rW+Oe/Asb+GYma0+9YfGBpsBpYVGY+mlgbYrxNKtICSX
	 hB7Yx/s9P9WRhUa3U4WOOJLwrFeNJAY/YLTjsFPLgMeSZD2YrBTw8XVLDvn/ueWKyE
	 Do39gn+I2xtQCLoFo+LdxpDbWOidVuUrUhW5OssaYyoUij34fYvn+ie9Ltochk2KKs
	 ArYeRjei4PCbMtehxUEWLfMmlKTXfodVxtkyQaf/Lc/MHcIvcbIgDl0jrjKQfaslx0
	 INpSGMPDIRxRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62C1C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495614277.30790.11923711492820824680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b019a4f006fdda90d5f6909ddec0b9c3e2f6ad4b06b53894896fbb898483db
Date: Mon, 06 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714956142
