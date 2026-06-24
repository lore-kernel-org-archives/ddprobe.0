Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5533F17A300
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782303454; cv=none; b=aSG3PJk09pLpuMhNxl6P1dP9rtUTLa/NW8XeEllG67G3DtAbjVvLIAwh/NP8uf0MbQ9LqmxTDrBT70r/jchYuEJCw7tsixnAnoieyoiDVfoK3W25YhrnXnny+eKAu/vomXiCrYa4EsSbcL3qb8AgKWvpQbq38iUeJyKZBoBxdLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782303454; c=relaxed/simple;
	bh=I5enoGwmr00s0GOL2+HkQNQMZqsjBJMOBkQ4Jxc1Mzk=;
	h=To:Subject:From:Message-Id:Date; b=d/MbCQ2C7MxObkqpywvGNwXA5+9oCVTGndARzSIfIgSOuUrK+IBX960Q+GbtzXTZjFNtokh4lOTXR0BsSG7N4CJ5pk0hVRGgT0CzbCZJbCMSTmnQpHK51PYDhpguTIsFMiqBrgY8nMJ6NxAQ0CXolM5+3xLfQPk3S463q8/FPik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeCRjece; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeCRjece"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6CDC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782303453;
	bh=I5enoGwmr00s0GOL2+HkQNQMZqsjBJMOBkQ4Jxc1Mzk=;
	h=To:Subject:From:Date:From;
	b=CeCRjeceRyWvaURP980m8e4gejgQUKPqoSQI3uQu0NaLwpzTlkI4vyiNJobd7eshC
	 pqyi+SZve75XdzIgymGmgOK4S+dp8yWsgiCcUOii4+vQl3a9CnYzFjYLYe2BA0ienJ
	 HoDnO693a5GOAzhjzyBBwMOWnQvefNK4PtSDWZpXYFNsI6MO2KsakylFgdt7XaGTnX
	 N8I18RYLZG44D17CqcUY1xzm9Zeh0c02m+nj3RMpX2kAsVhoYjD08sV+AEc/mS57Eg
	 qc9PPURCh8Nra07XRUBBWF4ZL+eHoL0GIbev+jgMPGpTEVWykRr+7Wfm/srdWODyO9
	 DIgOQGK1Sud3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5857CDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230345373.13740.2529620069517911542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e888d327a890a690b4ccbdc42afe1f42f42c7ffe50d33b06d65cd973b6d0c62
Date: Wed, 24 Jun 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782303453
