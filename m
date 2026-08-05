Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFE83AC0EC
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785943834; cv=none; b=PQoyXCAvIagPessfmQiMbRxGa1HzmZyuD6K9fXNcR5Dyh3xgivXrcwMaxpPeyC5kuHMVX1g4xw8x05ayG5hzyJkqQLWoBzSQw7jEG6BRtQLa4+ZzY/w6SC1O0/glTrSla0OAEdoAcs7fQV1+ZU+V5xJlf+Zrxu3GBtNFZGdiPuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785943834; c=relaxed/simple;
	bh=lVQ0ec9nRr2PFR60VtkthJD76kt+hIOTSH5GH7SNweI=;
	h=To:Subject:From:Message-Id:Date; b=HHgL9o4HlS2ngM/0PbBKz3RnCR7G+sDZ5hoLrq7AHDMmMnL7ihLCDg3oGq2TCGINuxIWrQp0Os9x8Lb4Au97n92pprGmlL4d2ycyw7Err3Aw2ryMSzYlmI9yerz0VuiXvG8ztcpyUDL2iZZRa8ULuJeR+lRrOEz9+bKk6Smer6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE8mqQhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE8mqQhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9403C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785943833;
	bh=lVQ0ec9nRr2PFR60VtkthJD76kt+hIOTSH5GH7SNweI=;
	h=To:Subject:From:Date:From;
	b=aE8mqQhAGJ4zweVyC1fT+1ENp68r3URot3i+T+AeLQEbukycMBhsCy2sqq6UrSih3
	 O1JnUdbUbaTzC/GvX9aQRWBTN8tIYere7+mjHL3VVknNExvySUYWurvrR7NptYHmiI
	 JYhb4wlKpdoHSF8iv5BAQ5R5rxkapzSbHmltrNvcnQ8E/D/cfPrayMww9Xes0lvPIa
	 KF5dmqYj/4LJqyI7W5rPQXXNHAj18FDGMfe9CIRts5u5UsOe/OMw5jchqoUVWBPrEQ
	 Vd/qwb/RKIHZlRwLHoA7eDo13HepyD7CTyGJG4xswo44NqGuFyAM2HNA4vGWbTxGIL
	 Wqch6VaSIC59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5843C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594383373.26842.11566142403158340565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfa899c0131db053ca7ebdaa8772245cc3aa54624623008e8dba474515a5419
Date: Wed, 05 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785943833
