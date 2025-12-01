Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C047134AB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764563574; cv=none; b=AXJmkORQfOl8Z89ltwwhp+P78h+wL9Vu+K8aPPdSWO336a0stNZieNee80QhyaSJRP4Jxd29TY98J8hQ3FMLzQFD0uZbXxnL7p9yaWDvK5XukDJ0nDt0soJMgzt/39msWW199D1A9WYOJAVJpixMOX313TFs6WiPOz+E0XI+nAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764563574; c=relaxed/simple;
	bh=xZzyJKX2YHeUsZmsf6efNVBaAPFvj1j15wFXBljL//4=;
	h=To:Subject:From:Message-Id:Date; b=psuRPty19K55GuQnSWKXN55r/cTbeeOJDsMZ/NI3JkNyJbbPHaP+7IqTWI36iopfXtaVeYz47esrv1I5TTqhyuCDAgGQ7wMkpa/jK9BgC459t5OzRPgjZppK+FBpWvhVzAn36EpHoK7mQm0Dn2LHaJ9naMG+j3LvWfmgH1FnEZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIKFoqND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIKFoqND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF0AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764563573;
	bh=xZzyJKX2YHeUsZmsf6efNVBaAPFvj1j15wFXBljL//4=;
	h=To:Subject:From:Date:From;
	b=aIKFoqNDLVgv5jQ1V5mwqVObLA9/M8ZLTxB60c3ov7HvkoAAeRcn955Gc2SPyD/GH
	 HKSRFlehxNAKs08iffRa3rGaC7NA6/IXde7Q/HiLYIaP4e15UAq9Re25jP8qrTNWCA
	 gpgQwbeOmeyuTeAOjBHO8bXCgh4GNzOi1fgDCunAM9UlGsylrImyBRQAMDpEFOlnRU
	 6gr7SXtUuzoUAEJPSVwNJNw3I5ZOetK4MtTLi/dKsVW5SlmLQ66+79DBRiLJlMERq6
	 h0zbVigKBWLJSQPJTAio3iajdnRANZqNjvi48tym6uHW9uqFUNfRaZTNwow9gLvEcj
	 C3dIT6frWULyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99038D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456357360.4396.2026353226953789092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fdf2fc47b453d43840d03e7190d8c752600ce443fc5215e2c46cabf572375d
Date: Mon, 01 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764563573
