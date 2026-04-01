Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B783264CB
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775012094; cv=none; b=BCpx0KRNUx2KX7jtOCJr+/aoA9EwJEKh5YWaHgSyEyroFMVKItjb+6SAlFsv/RosWlIYs/rTv1Ue1vEv5XtSPU6o5HDeaGytaR+T0rxdCx3G+Ks0kB0Ot3MK4TbLJqS+R/c7rfrOSFky9BOMUPzokP6on/qf3J81nI1zFkPLG24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775012094; c=relaxed/simple;
	bh=YX5R8OJrHjbmTz8ukBY9abHxKqcgL/ehRfS+ojlxk9o=;
	h=To:Subject:From:Message-Id:Date; b=Klp7O5ifpIn9pBNoWsXbNSkBgfjjLsJPI87tq40G/2DukdjULF+yrxU66bakq9ZEjIG7oBhH/rO4TICuwJgLoz0R2t6fKlwYJOiLtb4M6jJb7M0LwaCZTMUGIdHiVCSYKlwCbu6WDm1T5SUMaJwCBzv5X7GiJcHg1o04HCx86Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qINnVBOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qINnVBOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D8C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775012093;
	bh=YX5R8OJrHjbmTz8ukBY9abHxKqcgL/ehRfS+ojlxk9o=;
	h=To:Subject:From:Date:From;
	b=qINnVBOWLdQX6Bh1b1ZcX8tYia31PooShi0fTa1cnFTcTsxMLfuT7CXIH6x9tmYAc
	 5K0EGNeCAVTe2YX5sVylFEk91ZMvZmgt2KYRraCZxlO2EOvP74bPxeHnal5BYhQrZD
	 d1UaF5AFf5XRQZtQN5fjbqTS8M8d3QrWsNocy9kFPUw9rhtLZWjyBCqBmcxWrWrH1B
	 kMzjGJamrJ2LpG+S+TXhIDU0tKJEOzZDFZ9j58U71MB1eEjHKdslk6dgb3tNFZod8v
	 YPSk6SHdvRvFWizolXWEo2JxUSyEY2wkwV8NBeoNckuptGmkFAIpVuerFdcIOzSrLw
	 +wPqVAB+I4KYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085410F931A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501209358.3654.2561831386156897627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4227ad853d318e17c9743c7ce30a48262dedc1399891a9a58774d16e5a5b20d7
Date: Wed, 01 Apr 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775012093
