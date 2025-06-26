Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D7428B3F1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750944594; cv=none; b=qHLJuxVJ/1F8x4IWsOCsB9zghyH/ynD9K23kFqJrjI0AVNhdI0Ob6gGy6nMctSk3+e3XEY32eOapEWgXcCWF/AuQWsTW6LXHQM/PV+fj8Uart1pgBbjPsMsERf/3O3VgvU+KCCSTNXjfRlqWFh+R0tHSXIyuYqB9vhS7WN0yvGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750944594; c=relaxed/simple;
	bh=qnNSELfJIwglJjGDub7h2YC2D5yHFe9mo7LP3H0LNjo=;
	h=To:Subject:From:Message-Id:Date; b=InT6vLKtnNjdObG7nWGguTIDRCc6nXiGztjqnOOR+JPglgiq6Q4oQet4rLCuhOy3Fc3kB4Nm0fv1pRCQv0UxQk45FinlmS3pFVBMff0idKIQX5i888gB12j91C+PYDrvTeIAHMKRTeAQaX3rUUXbfZtErXZw5wHMmHTpfo1GCzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkmVN6pB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkmVN6pB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750944593;
	bh=qnNSELfJIwglJjGDub7h2YC2D5yHFe9mo7LP3H0LNjo=;
	h=To:Subject:From:Date:From;
	b=RkmVN6pBjV3IJ9CaP2vvTeCdhtMOrUMXYPpuy9R1XPPkPSmXs3IYLBXpm1XcTDEhi
	 Ry0rsya1FzYnZXnWdftZ+ruIlHwmntuHP02LW+K/P0wa49AQSfI5k2Oztqeyg6dwNy
	 QXgfn7vfL4LI2rnZe1oPkX1CwemD5w6MlsZBU9rWVDR0g+nNERu0+TmYNq9IzGZmQ+
	 35/hNSsXPM/jryamy2lEU18LJScW8PT0M9iPfquQMQcCAGmhwsnxRyTXPped36tvDo
	 Xq0Xkohs7Uz7gdzjnlfGkl+3PsrJSlJRGRglcArjmyTwD8z8RpJ7TixOIWAoKlJT4H
	 3ziJDT3iD/2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E13C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094459359.5088.7644760456911063501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56601928f1ebc7f9dbb3304b7858725de9cb114fce9f1dd6eb0f37b64f1398bc
Date: Thu, 26 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750944593
