Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D205143C65
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722490554; cv=none; b=ZHPX4z2BgGan314r5MY720t0MNqfGtUS1bBa/vb77ZHaLaBE3yJNN8tVyAIh0LOQ7SKzih1WMZoWEV6Oo2aXjuIQag9CYb3xy++hRR2tNHVeN3MpX6AXipBNYXepeSOtBlS63lxaHHI/aoQgZxnBQ2v4g976L5Wd6MQwpwAPGEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722490554; c=relaxed/simple;
	bh=d5AiWjQoYkUktNewxuMOAP5X8R6AlWwlFPWwi2Og21g=;
	h=To:Subject:From:Message-Id:Date; b=XuvfQmAcEcQQq7wuFzKsOOQMOeRPJ/4LX8J2oKo7HxewmwOWjMi8MAUFI73BvlTV0vhS2mS1m+iQuFuaSrUoV8D4y9CczfFI4aU3fBhC0fnfXytR9wQ+hOUAclpB5YRXTWWJqLxJqkgJV1bG/a4LoRPtrb2Cva7UydTraHihGFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKSF276h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKSF276h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05D0C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722490553;
	bh=d5AiWjQoYkUktNewxuMOAP5X8R6AlWwlFPWwi2Og21g=;
	h=To:Subject:From:Date:From;
	b=rKSF276hdpHKFv5p+gsvbUPEEHeevGAZD3/LrAkt9FP4BqAf6748F6zFWRr666rx0
	 7RdQFhTLHoi1sxJ8bIuL9Pd1LV1p5n/Tc6NRNDLQwApdLCwIQ30bgjiT5H9FpZFRO0
	 QPLp9mvUb0Au54lLJJKFO2qMNgJEZ1tkCR7ydpzkzKUlMFuLZEos96V5rU1j3TtKW8
	 SLQtPJdelC0dyAbuKIwISBbJGOYMUh+V6VOT/v2Zj697pARGepWtfl9yh03+Tm+Gfr
	 im7cSd17091cPm7xS/Xp968/SGuoG+jPMvyB/HU7gp5XijNinVuRCA3wXYG8jTjRqx
	 begi3SurW1l6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51F8C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249055366.6132.5358331907885777771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2133b60d6e1705964b3f4d958a9bb8ac7ebe851a1579b95b3cb861f22be9db56
Date: Thu, 01 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722490553
