Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F942F5A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743562794; cv=none; b=GQ49Bd3VZno4O6448RzkwgAXUM+2o4kXVgeTbEl2Mt+bJn05ircEZrbwZM3LZpTjiYJmAZG2XDYtTcG1p0m8XF7GJXyRN6wjUTjZXXTcEHOi5zqWMxlxz8kWBzFtDnx63+FJaDO0lx9/eV3dpGaww84yEt1+QPVZwCMTjXlx2vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743562794; c=relaxed/simple;
	bh=Mnkpe8l3djiFdgtbmLS3J3ehlvf8MlBLXxmQ42ICT9Y=;
	h=To:Subject:From:Message-Id:Date; b=RPogkr+qQ96LXyNy6gaGpWeh0QJ/Fhxq95qryujxuNDu9coUdjHKu/eSJULSy/CG2DSSSTGc2NiCip/UDQLzfSr5+JeGuVkWIb/fyVkR+eoLuV40V6+FyfQkifdvwBlV7+Zy3fXDdCHltaVIQzjVGDoAcetg6/I9rcCRv/7Ie/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtTPO3aY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtTPO3aY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E0BC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743562793;
	bh=Mnkpe8l3djiFdgtbmLS3J3ehlvf8MlBLXxmQ42ICT9Y=;
	h=To:Subject:From:Date:From;
	b=QtTPO3aYn4hvIVAdNefOkQbMiEWVWAGcFnYpJoodyYhC0/1RdbaZzcw8XSXaxOLRb
	 XoQN7T0iKwHyDi6/I9FXEC3nCWFOT60UfRP8n/mH/KsztyRUNQFx3eYkkNRU2nFQxe
	 NPW9s9Om++xwVtTzDlLBPHqS39DnWKhtNFKjrvwjRpF34jShX0gPd3v+lpK1DZkRJb
	 Njb4/MTgm2Lnxgtz6q02SK5cb5GyT1bZKDVok2ghgk+PXsav01jbnNHMo7XGEQDBgi
	 u0ICrR4S3i2O3NMSOwNq60lkInQs8e2/W/dKMmHOXta0SHfPA8KPCjkZgH3UWMsQgS
	 khFz+komPTAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9748CC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174356279358.2816.7389950115645407702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed4a5c905361f63d8a1f7f91fd33a7cf27805641187044f9096227098ae2a1c
Date: Wed, 02 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743562793
