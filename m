Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2C8F4A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753399794; cv=none; b=JJoqRP9GmEDtB0iSncWupqM/YR4GWTwBtB7mWUml/nLIqRvduQ0FoIt++OueX/2zD5sODki35YWmFgy86gMVvp2HSQpA7e/LKWFHxnCBmis0eX807qFMKfzeNdOaM7NL4Wc521/yywJwgVITN0Y0uZVADCmrU3jR20/TXQhPrYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753399794; c=relaxed/simple;
	bh=CnxGyDAs9+3PJQgX9V894IV9Ez9XS6hq/8WAU2vKNz4=;
	h=To:Subject:From:Message-Id:Date; b=iZWTvoTkYqheibs/VN4wjh+cZDJfhQmklGB033jw9USETfnTA7Dc0heNORPDF9uvnb//BwPWiCfSgvXWSd1i3xELnd4es4/DM/HwGgwrUMi0KSVM1aJwsWrCxcLuoa3JrLtlzTgvaD2dnH+Wj6WRw0C3KY4rbo4kC3665MKLpTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aU+VS/FP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aU+VS/FP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3438C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753399793;
	bh=CnxGyDAs9+3PJQgX9V894IV9Ez9XS6hq/8WAU2vKNz4=;
	h=To:Subject:From:Date:From;
	b=aU+VS/FPWwzkqCC/n4HHez5IuXrryVBbNQHFRf5qfsQtaBLDMzyXuaZq5gus7kL2t
	 7+ADX331AYOmgIh6SYoSBL+FdHUpbet7ZbPp2vIdvrDstWsA39PSA6hLVOGrDfsWtN
	 P44WHwK2e5M2q8++eiFzdF6f0NJ2bB90I3vR8fz7kWxIY5eYHAyY3Xg/I44WmJfXZX
	 68DS8WsWyeAbqswYl++vCFWBdBOvXfX9RO042sB18QJzSaZNJzbr4fo9gXGGmym65J
	 GtewFxJgnWfinMVSTlCSrE4rQYjaNX9/rCGj/vWWnt3ftoo9vAo/pfY3kbnweRGZk7
	 /0eGx8+J8DZug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306EC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175339979359.13579.977329224533903091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea883e225bc2269668ca8aeb957a85e809bbade1acbaf4d778c4fed8cc2b966
Date: Thu, 24 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753399793
