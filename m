Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A01B8F48
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720996223; cv=none; b=M2mfLmXchhQ9PWr8WXr4RQiKE8lTAXdjfk9b67yrZj7Rlzf1oQ8HZGVLHUREPmibuiROnIW2MgnnHd75aXGBVHuDjicgnTuxTfmwgZIgiIrIIE/VuVHlVRmMe4CJTs6LZ8tH8pea4o6On+p3qBys7azD+4V5mEoZvfAsaQKTt/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720996223; c=relaxed/simple;
	bh=8yFZekSFVk57YGjeCrWAahpGPh2eVK/s4LTwyF9Cq4Y=;
	h=To:Subject:From:Message-Id:Date; b=GfxOWmkPngIg3ewTe1Qxps6zWsUmBu9B1C5kxl1bNGW7PQ3Mcr7TG+I340iwfv+ViE2OTpDQfDyB2Vr13tOqPAS0GmqX5ybsEbzuXRE8NKyhVJIQ4tDC5m7eWYz6r/MrSvtNMwfWt90FzIgDO/ZoXGq4QptHlQwnT/R/o+3BCrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXXugrwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXXugrwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBA0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720996222;
	bh=8yFZekSFVk57YGjeCrWAahpGPh2eVK/s4LTwyF9Cq4Y=;
	h=To:Subject:From:Date:From;
	b=YXXugrwisP4OVr7urHO586cI2lqPZA5nX8R9O3P2U0CzWGo3u1U3rtQetE+/vg4GZ
	 N8l3OTehz/U+mcNdY7DtvC2nEfiYZ6vEx3mFzBglmav0ewziDPLq1gozs6Jvs0ptxM
	 xZuqQcWamcXYxLKWv2j+hZyVK2X273BlzRaz7qijFcWM53t7MSEojZoMavD2xwUQb4
	 767sLPrQDUJ4K9bUkbXmDb4lejBsLgR+GoBV5amu9p8lJWqPwjXgHUu0IMkcQC5Tnt
	 01mFD0hH+I+bCIaqllGD3D5nl5jhGG9BWZrD/QwZ24WDAaFurxhVDD9ax5dirn2hgm
	 sFd/VNU9qJ/2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90C9C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 22:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099622277.24984.12818941220261037460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45c4dca7af5258cf22ebed7e3e6ccd54bf41c82517283b2a18f6ed54196de0f
Date: Sun, 14 Jul 2024 22:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720996222
