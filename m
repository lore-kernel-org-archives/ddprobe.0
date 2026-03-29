Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC803C07A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774750494; cv=none; b=nNX1TNtcEMYNRpFwZvxaxff/z/cM1n5rNyX+9o5/LJV0S0dzXfuKF8OdmCBE75hxDKUVoMMOQEwfuIOtGqtYALNumL5spTvz0V0L4QC4FssVKChsLD6nldQr0cdMsXFdr8Eat8wJnCBwyzrPy6l6RdAEDYyF176e2Ih8E2Tjt+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774750494; c=relaxed/simple;
	bh=hWobeOp8RhfNsc70nalWC3RW9al0Czf1pQmgp7tFv+Q=;
	h=To:Subject:From:Message-Id:Date; b=GtC3SFSi1tEDeRt/61TF47BINXrWaa6JDyklHIaMg/3HxaV59VAUgAdJjVnK+7fPlqMSJIGHiT0zZALajjeqmAQmnI2b+s05nYI0mJza6dga5TDMaMe3nPlD5KQs6jqYVccFOmd+8BAW0sW5vvElHtcJsDzcUx92ZjGlkA58jsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AO+ueDBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AO+ueDBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68DFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774750493;
	bh=hWobeOp8RhfNsc70nalWC3RW9al0Czf1pQmgp7tFv+Q=;
	h=To:Subject:From:Date:From;
	b=AO+ueDBbPMPRY6G+Eu3xmHdnR2snMrPC/O4E4MQ3Q48RVJreAJN9zRMDdPiCe3hUQ
	 ndcoBZWdOQn7f4YQGK+gOOu7TDdaiki2i9+FUC7SX0lC7U4A4ZYyxOZlkigGlnuicp
	 UUku3ZhUY98S3EHOI+sQ0fB/05sHnxiuh3R7iG+vD65CDHe9WHVHztZIOInepolx8A
	 WTy/EqTak6XLSLsl3+OYHTTZ4Si08DjYElVopAUqRhiFeT1Gu5gZmspFA8lW09g8L4
	 1m2iSVZbwRoWsGSC0jjebjAX3ehbkhq1ZBQomS0oGVGHxoDPLxROziVJTuoni//Stw
	 JWiyJyHRIFDXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9333210D148A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177475049358.13817.9318292639300573774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51787503e33a2ed351e51a445922c349fea0584270e6572b4036bfcd98417fdb
Date: Sun, 29 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774750493
