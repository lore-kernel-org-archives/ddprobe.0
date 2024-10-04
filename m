Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E594212EE8
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728050154; cv=none; b=XnTUdAC5c6bKfp522DqkqNcum6x3DLFh7SDGLyw2aF3BqEsR7PVUkSJkIMmbvQeYFQp2Y2Hc4Nah+qDwsIVQyK6IKZBpwJYKqxfPaHV6ss8fF3PWWUgAlIlLTTO7j3Vlly5Z15u4Fs3xir83GsErr9eTlwysixA2/R2NQ2aoPx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728050154; c=relaxed/simple;
	bh=dgr4gJU2J54SnoTdSL3bTA0a/Lzmi52W9XcXbpWggI4=;
	h=To:Subject:From:Message-Id:Date; b=uVNrxwCluSdl46U+WtMvp62TRVAECuWx1YSdcARpddTLEFSle5fX8n5mUUhA/T9lXjCVnTp+Oix37A2woev+OGIPDpEQRxp/YvB2fnEDDZC+bfLkmO/bbr68qx7mQX3l59yZ090eLq77bhWeFrC8PoNIBPuHG1sT6U1sGlQi1GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMB1KPv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMB1KPv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BD8C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728050153;
	bh=dgr4gJU2J54SnoTdSL3bTA0a/Lzmi52W9XcXbpWggI4=;
	h=To:Subject:From:Date:From;
	b=XMB1KPv0c8DxSvp1ujY2TgIoq8TpmKCCEVaoG3gJfKt1IDTR1W4jLT46+ZhSOokbe
	 Y2M6t1U32afJedFr/pVivcbLYdNNhgt+rL8FL9trNQbQCCVkp7FuX3c0T0C659vINt
	 S+kdzgPKRmz0QGJYuVWP7PL3r4c8qABbdozJZ6P6NhbX1WA9ttJofxiOwnODgyhfWb
	 hidGxIitT5awer58N1pENe4FLUq7pjxwKH3yUtnB1gnb8TR1Bh2Y3OXTPuJ8QtFHLB
	 9S6Wz/P0drt8T2+SyW0eaqzoha+l3dSBU/nBsX+9iObZxqf48fygne3oKeJgNEBhRL
	 pc9+/Y2590u2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BDACF34C5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805015365.30618.8571767992089238178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42ed5e177ed018e73d523eee713b5ddcebf08f08dd9592de2217fdb13711cf8
Date: Fri, 04 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728050153
