Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B802765DF
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788680434; cv=none; b=LGbcMSJLI1NXRDftijvawnIfYntQdbJAeXa9aLFsfFxrR9myzu31IrnxwhwI3465LZp5BYNq3QNuzfeD8pSXusC8C8a/3VNvSOqY6NqpIADpZkUExOF/cR97cwQcGEIp+74kshooexdIMEJBQ3Aexke3KSBIn6ALqaU3bzTKV5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788680434; c=relaxed/simple;
	bh=zb/5EuiUGXPg6T44oqU1akSzsiENPH69Ttz6RYQW/zA=;
	h=To:Subject:From:Message-Id:Date; b=f52aMjGnOXh2cur/TTpJhS9Fat/eoCYiVx4RGM2EjKQL8MvRE14KBpCDLbvECMMhAXkHv57cJ5z5G0m/u7KjnCiGZ5IrgmQotFijK5NxQAf0wuW9OydfDTx4obm27kpmxEnDCCv2dlqTIDMxL2Tm6vzUWY1rQHFdAqriQUZw6Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxAPUs2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxAPUs2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C8CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788680433;
	bh=zb/5EuiUGXPg6T44oqU1akSzsiENPH69Ttz6RYQW/zA=;
	h=To:Subject:From:Date:From;
	b=WxAPUs2hste1co6CwGFxviqN3wtZPu2vfDdYGless/7Q/813q+NRV0PZXjupNltl/
	 7kIyUB9FTWBodt5qIrTXuQsDa/sWI6sqVk+s/rEwYor07PrthTf8Mtxjk+29xXB32h
	 4vI6+7j6rE6uaYUjH+zhE4gQfebkyEhtQY2JDCQs+FYb0wFobLuiHy/t8Apl35ITpg
	 FAnikQalDOyL4fvmbSWvagXpX166XLzuCChYaejTCK5Q+E7BIFfTHz6Wt0e4U5Hh/Z
	 m7qbhzIChKT7Ob739xnfyposBUSzozWI5+lFXhFrSwL7nAx60BiLX8cFRAHP3qrJeS
	 0JriOkLs5FEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E2DC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868043369.26052.3240162561079468817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcaad07936af7bce67c8afd913d35d4dd25f2e5ed939bebdbaba3f3c896424ab
Date: Sun, 06 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788680433
