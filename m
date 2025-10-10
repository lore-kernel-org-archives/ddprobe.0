Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AB1FE451
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760135394; cv=none; b=KRbcOWwL0JwKO2fs9aF9kY/DUik2kDQ0hma0Gq2ChrOO4IKRQKOAdhNAACk4P5nZ1mmkN1ArpFTwjyCYFQumDAlfbM5owsMgZ2oYr/yLicb6/lOkZ6u92/FJ3EglOpj/Oa/KpYb90E7G8lGV2n2bTT83QHUWYqp7WGObzVBkrN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760135394; c=relaxed/simple;
	bh=IHZsGXY7yc2M57QzpjXKfQwpwMnH9dEv/ZDOHihZTWs=;
	h=To:Subject:From:Message-Id:Date; b=J/ZMjimIOVLWT8lRrck5mqy+zEgk1YVzaFMOYCjjq1lcHJWxusmaYTZ9bE/00brCzReBE9f3kpHgAyRxIpM3px1aVwhUSQlz4yaGUAI0YvOsD3ufoDUfGb2k7scAOLiCRuOgVtzzAsfNdZ6ha2TQFHQtGwaNnrsVdMmmWH3RUgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sw/Iplvq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sw/Iplvq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760135393;
	bh=IHZsGXY7yc2M57QzpjXKfQwpwMnH9dEv/ZDOHihZTWs=;
	h=To:Subject:From:Date:From;
	b=sw/IplvqhwD42o82z0mcxhRKeLMJVaR+XA5BvyYfJV91eGG8rGq/iQ8zewQA152T3
	 NCGb89fss+V6TAKDRxsk9pE/sbwj7VmZ+ZnRg8KeRVBvooRb82GlYkI3Hb6LFHbtWM
	 QgspiO5rr1zt/mUX4VinPjrTj+kZpbp8F/4Bvtt0GJyJ6I+B26ck8PZ1kEebz7aPXv
	 DK/Ss9Ac8d02omlkwv/AipsEcEp8Ais2WOjPp193wII5muGr8XjtoytljboHbTAk7E
	 md2bdLvyAzFfZ2NNDUxTUMzpoyiJSJvlUwc68WZLVKOQKHIW5ie37fVTGuKf26YBYN
	 qX7EHaruWE5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9289CCCD187
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013539358.15236.8046406156582546239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98e0509cf9c24f8cf82f2bc43a250dbc4392e4248791c2ef47aca1bb8ef6f91
Date: Fri, 10 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760135393
