Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA091514F8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788004834; cv=none; b=dlVc8QuznIWC0TagryT059gZgfuTvgIF+X+a6DlsDxYrPMqTq7y0pLndYJV9t5X4bNwwcMIJNdTjqrvtwCavcAkLwIugYyvS3IlHBQgZNW7G9Jwmu+bEqyVbmz01YnZq6zhS2o2xWxyhA1Qsee9L8XbISKC7jWa1jt/vMcCBrwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788004834; c=relaxed/simple;
	bh=xfP4Lvt/3EP4ZoFCQwXXUKgiZYNjMP3RtQSvnT7+/jo=;
	h=To:Subject:From:Message-Id:Date; b=HxHntA1qsE/LmBmyZPdEERlStDxitm2rCny+Ag2rvevS7zPp7lEODVe/xLI4Po5JsFyZsVGt/Z4AugvEkqiOECFTC1Wdcj47faQMV99qml0fjuYA8oMO1fYYDmywWUAzYnpjBgXqfmx/G3RwBUmeksO5qPYXZ3xjXVK2sPcc/xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm5OXXkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm5OXXkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E89C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788004833;
	bh=xfP4Lvt/3EP4ZoFCQwXXUKgiZYNjMP3RtQSvnT7+/jo=;
	h=To:Subject:From:Date:From;
	b=Tm5OXXkhQaPdEr4uFR32GeyTasL0HhlBOUEkh/n2IyhcZc+SWzfLfG6fp1oiRQEVr
	 2ZUJGzb7Gwj8zLfErZ6Kbh5kbEnyEdpNT/065V1xr3nEDY3BqjebfHnykdmjRhtKbj
	 YVEoPhVamOSdHENDIY/mM1su/dI3B5hrO2EAbnUSD8U6D1opN5uDtl2vJJOo+fScWH
	 M4ooooDMSdaO/7XXIGiyKOLxlUHhDilribuAz3YfYdY8yvdqzqEmd+O2x5z1aai8ik
	 SdqFUX5LvrELErEZebVHzpGFWB1XXFu/i+LfIq1x2jgXHg2/b2t4tqyEqy0ujtUfQi
	 zkyPpX08kvCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13CAC61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800483369.29827.11922074590319302544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f61040845acdd19ecf6f97f304b9d481e89f376d85da315d4b0a723a94d2a4e
Date: Sat, 29 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788004833
