Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E97F2F12BB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766136234; cv=none; b=T3cO/KkMgNJ95ozK8x4jdus0wjgJgnUeIpERGjCSF+QrWBE4VNRGQoUee2fQM6LIofC136ivG+6jeNh6dyG/O0JMNLecQwDNMVoDj76ivRjzIzEgORAZK198SWgQw2/xQzEJe3Tikfsb/qj3Enj40CCqhh6+Ihi422UeOB0glWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766136234; c=relaxed/simple;
	bh=5LwSQYpMmOb+nOSRBPa84u5ik2FIeeWYaZwptYSGY0I=;
	h=To:Subject:From:Message-Id:Date; b=nu7PoiK2J8fDuo6EzQHGgD9Kaq04JwRdZBUD4B0xUnUvf5QLe2BO+DbHq4ZYapvd+QR3q6GM4FvUTcnHRv0LHrQpiyhi38MBMZNewasiYqph+G3BqF6uvLBTVDgOs9A90OhHG1KO43lwjRHMdL+tZsM3kLBY06YSsp0wvaN6QuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOxpwCrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOxpwCrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DCBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766136233;
	bh=5LwSQYpMmOb+nOSRBPa84u5ik2FIeeWYaZwptYSGY0I=;
	h=To:Subject:From:Date:From;
	b=qOxpwCrm5E+O6KweuYtJtQQaxj7b7TNvN28u+YuJufCcVexrMP55pcWEapESXdUqF
	 MkI8Jj0iAdo7fM3JQ0TBPtiZy7HYm7qwTNzwhwsy5Jv2yzbWDAVGBVH4DjPyqc18aH
	 yf2PpYzDenaHCE3KFWmtopR//ePSVvsryM4oaiu/Ybao2CuDizkpc7F4bJ9aQAApAo
	 LV9jjF629ZGxqacF814nqjX3ew/zOtUntz2ki/ZBD3B6OlBJ4Z4y5BlPv7vPV7uu17
	 cd2DOrcjfrcr+/0CWADlOLosIUmnnraV+dhYExHEi06nFgGXnJtlBrYNZAbNIqJv2n
	 OIQ+ATcpAlLGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B4D7496A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613623358.25837.12689679172020622004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd47bc355d014d3c86401f52ae91b783350b1f800a346c304b01a704d4a8020
Date: Fri, 19 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766136233
