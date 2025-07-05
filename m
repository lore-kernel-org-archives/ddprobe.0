Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2044C256C9B
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751722194; cv=none; b=RfdYmi0EyHSJG72zbnlCiKqhDTwju2fQVwtBtseZEqqJX3ukMSbPnoOKoNcE6V8E8/iGRFED8jNWYsM6JKiDBtSlyFyAdEedP57xlQTI2SzF7mZO87xTSHs5nJvPlMC5YsEAT07bj+mAg9IelMIAL1n380D+sgMREvT3uFiOEmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751722194; c=relaxed/simple;
	bh=lMr1t/xCUIOIB/WPFsmzPbFj2XFYztiV4VQvpt0amh0=;
	h=To:Subject:From:Message-Id:Date; b=SrikPJpME0IUdikbXkoK3FcpdsDpq/qxV0dtbwtFim9ZRuD5Is/uHmdJ7e1C9tiRNAZpgyJLnPIHsypd2afS7Sf4HkFDKT0GwSYLkEf8zZAMd0lDo7TtufpJz8ShdUutUTfwtQ5oj90W7xxu1woU2Q8u7AhcZ67M9T4DYnI39KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFIaiuKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFIaiuKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA40C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751722193;
	bh=lMr1t/xCUIOIB/WPFsmzPbFj2XFYztiV4VQvpt0amh0=;
	h=To:Subject:From:Date:From;
	b=MFIaiuKYGADPrdNiEjSGE6IRCBugHD9f6P1Fixd2GwXIBnxnaFveae8Yf6vM/ZaYS
	 /o1slDoD0yvzNkPWpJo5EM3Sku/p1YltjIDcZhOQ4vpPg1thanVhcIhVq/zuLeRriN
	 iboERMsV9BzzJ55xAch1cqiIrL5Mujcv1y0arYdPY8b/FFlh+VKGxjKE7HgvfAk79V
	 0nawWR+GLhB6obqJcdZEU8qgcNWHXEmMXG6/Ed2nyKe2f93TnUGGtF45CfDAbLa8jY
	 0FzqkTWjr6c8u75wDxdwzrYbO5U85IJ7o1fUH5laqJcJRJzBUminfwBtiXjD45c8Ve
	 ws4SLm3v9gb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ADC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172219357.19027.14078850779113135349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11090fb9fa84f27abf47f033fb114e02938ea7d0c3fdecc9ece76c9d2d2c980d
Date: Sat, 05 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751722193
