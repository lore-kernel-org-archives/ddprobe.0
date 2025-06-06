Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1812868B2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749205194; cv=none; b=Q25H6EsmRRA6fv/LbirRGp6TseGj7nqvZxcc7FbenZmRLu+f0fy5ptmQkcT1tHG6IMZcPPwxMHaaOLiXh+Mwg81UVk92201ABeE+IkN2WdO1Fpo6v3QA8oOUAAYwfm0buVPm8wX4sKWflo032FPQQZd9WWpRj71m2iCdZykJif0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749205194; c=relaxed/simple;
	bh=RZBZpMv1C6/P01/YRmlCk1lrepdKEmfN+3W4vitG4hY=;
	h=To:Subject:From:Message-Id:Date; b=oGdBDuUhRlQfAIg6ffDwroJadfD/utL87mBqrrSHdjOtVZUp+qk8WEtN4yMDFr+/LA4OI+/If4pWVfTO5Gh4Eo8SZ/1PI533/Qo6HeX5BDPd9ACPhFd+ttDOc0VUkoZWWJzKcYB2iU8PrNqfTayGSTc1edbRgEp7L/PR6k0ED+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI2VEJMd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI2VEJMd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A047FC4CEF2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749205193;
	bh=RZBZpMv1C6/P01/YRmlCk1lrepdKEmfN+3W4vitG4hY=;
	h=To:Subject:From:Date:From;
	b=oI2VEJMdSIHTTBtv5qeFrJyFZhBREtsGvE+Jjl/aK1SEbHd9ygdNSeuWSP1w/1nrL
	 wbh/vkrw+KLR6BH7jMtfW4cAB9sB1FGQYyfT18Ygcb6GjnbLNPXD2X2UPr7do7m0if
	 GVguJB9C6DJiuPX56YD+tYNGCpyb4BNYoxemmgbBrBi4UFqw+Za6jgEhdIEDMAw+8f
	 Iua7O4OVvR2u7KtiWNgYZTzw4rF8M57qaWuDkH9/C4OcOKnP/vaYzgtJoMB1KXDCEO
	 XdxwQPKXLkkGE1mPCJwEdp+Srd6D0UOtQaNGwW2f+QsALURADOsbPuDOU3zV4cdZpD
	 1HF5pqF5U7Wkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90317C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920519358.24614.1220420690291099702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4f2b982a98656d2ed411129984ef31ab4e58eb50f8fb593caceedbfef892ba
Date: Fri, 06 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749205193
