Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF678F48
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721001084; cv=none; b=POo1Rb1/+h9XSAAz8QB0o2mCfOI6D71QJtuRY7jMYDb2whfa0C2YeJ5GEXRJJ/DG/6X41RuaxSrzhof0nDGC53p6PKYU1i68bzWSg+QHzSSmMu/YiW7aKsFlJloUmMnP31ycSorrkU9mLrAY3BsuPedhVDYGQTL3midaa/QlPSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721001084; c=relaxed/simple;
	bh=0CIBjus3egmCqGhpClnjfE9aXyCENAvfUFi4yHQOxLY=;
	h=To:Subject:From:Message-Id:Date; b=NPR3G14ecmQgZsGy/5cNVpzrhkt3gqfjQfWw/CdFF0sKD0eJRvloybrjnvBMpMNENRflvbKomupXBgqIA+CNJiWczOKpUShqI2kiI/YHeqiSep9qyY7P9onPfI/geaPXfNUEs5HvrsWsHW+3lZvUNzUNpY3gNbP0dPJ/XdIuIBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBfJk6eA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBfJk6eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B63C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721001083;
	bh=0CIBjus3egmCqGhpClnjfE9aXyCENAvfUFi4yHQOxLY=;
	h=To:Subject:From:Date:From;
	b=uBfJk6eAa7TVQdB3N665Na/xXQ6JHx+KC2VddpHo9cHpBOFFnjTS+VoN5xYd+Jj9m
	 XAl/H12oZcboJ1ZUBZsCI5TD9f1y6h51XaZjZO85MIfZaHZU2d8N3XQMm3ooSWZzyP
	 w17Qwe2vkyvVw7PNb4VeyUcFZC/SwRdWR2iRZ0DbWotYf1qgDE86vJLrGFxCqWaIC9
	 9iqvGL4gcnVPRgmG+ao9ARsqxad4PNAm/q1+Xyuu1X28daGaSuWmb/lrdIixSpHYJR
	 OTuF2NVyL1qJp0mpPrUbbWUTodAnb/45hiaIfe06nId1etrNee1hZb6GhDjQTN+Lh2
	 uB3uYOsAPy1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E769C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 23:51:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100108302.2966.9615657562149272767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc34d366a33e2ed91100cd19dc8d58462e32b7c958885c30fe798db62890b94
Date: Sun, 14 Jul 2024 23:51:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721001083
