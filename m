Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2777832694F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780052554; cv=none; b=BPbdQT8KwQIPN24QpRM25hZNGEDRDYJJOoo6JnQezogNFEilISqljCMxQ46EmNjVeyGAzR+Y7JbHA6uK0wxN+z+z3DPyUusYBJubtgwSdGmxR39gB2iUQQeYBPKkElYBKI246h/BMNTt1x497TeDD565r66Q3qAd8lni9FUC0tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780052554; c=relaxed/simple;
	bh=y1elpdWFfaqgP0isedVEnqIdiBD5ceXtn1gUEDh+JZ4=;
	h=To:Subject:From:Message-Id:Date; b=ZQRVsw8RQrlwd2BtvRHntvV7PTqBWXYkrbvXQlEArrH768zo+tqoh30GDlthVIDXQZbe5tzjDqqhHhTyN28TKIralSjDX5gks2vQQohMtNOCVtpL88l05FAodXuOGDt2bvuOd9R51TMmPoRNyB5IMCdXY4x3PKJschQ/me5N4Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePFUQTVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePFUQTVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CB0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780052553;
	bh=y1elpdWFfaqgP0isedVEnqIdiBD5ceXtn1gUEDh+JZ4=;
	h=To:Subject:From:Date:From;
	b=ePFUQTVN4VPR5aXL1rpjdwvwAjn8ciHXWlwBpIZCHSCg0skYY2Xzz8JTEjQ5iVZw1
	 +fQuRTe9kC2A+wOIwUE3XBUN7ULX2rpp0oFAB2OAahDRo9VmV8W4D78/hFGQb1U9wA
	 /lgABmrskwuYjW6ehcKWJH5NET2o3TYU7nHVz2wIf4+xXtypw/E4Nvio0Wz0XQ4pRr
	 4f5sCSwzS8/7SZWJngfMkx3sSHQt+CIFnj+E6G09bbeEvyn/Lf78SyENNnbJV6nuUk
	 THTOLXTk/34tupRbyrCEamaaUN9uxXqUcyrAdkziqLz4ZssHd5XyQ98IZ2Zxm2hoxQ
	 aMdE50NtQhwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC79CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005255369.2826.3726493376557813405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633ac01ee11e0ec89c4c74e58ab3a7e9b677bb51fe72b4fe3e6643f37fe0d10a
Date: Fri, 29 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780052553
