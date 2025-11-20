Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037E231DD99
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763676114; cv=none; b=YEacW3bo6dRQ8gtgRaG5fUAnE99/hcF+7q+Q7tHg0lqokWtFFC09f06RNBL/ELl5w5HBM3f9HxtcFxqe57GNHb4iNFstSGWd6gv1ZAxahG+rUCIByFcIrvNq3VRm13cUbUfUeyOSqKvCnsBUa+XhSA/EC4wMNMUBFpSaqH0m6S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763676114; c=relaxed/simple;
	bh=+VsrsVqLpcvpC/Njiq+nA96DLBCsVIjVwgVuzidwUPw=;
	h=To:Subject:From:Message-Id:Date; b=GAKAilHYJ/EBM58kH7uwt84HP4cFHzibdsOakYj7TZQ3VWXik2k+AIF1W/MRkVVroNqvuUry5PhzB31uKU2EQ8S4BqiYh1T72C/G34HF1Wnvow+BodLDKYic0fCXEP75IUB37E7AFqs2eGsAv88gX3jgVn/GR88dARx1RvJjTKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD+oRnuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD+oRnuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7CC113D0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763676113;
	bh=+VsrsVqLpcvpC/Njiq+nA96DLBCsVIjVwgVuzidwUPw=;
	h=To:Subject:From:Date:From;
	b=RD+oRnuVjZCtqnYGmyViUdQIYJJzl2NYYtu/lK4pZIpkCoyuppSFP5NF9U9sQ9Mtd
	 PRrWXUT/A6GYsJEvauS1qHqBB4ziW9sVHspsM5IX/SDQMK6apM9gJowrAH4o6ChSal
	 vlczK4UjWT4DdYdSPoLJiQ5X+EQ5QNPFLsUjfVO0mltaSLv2vMX7gL9TK+bFCX3Xbh
	 B9uYuAJ+i+rHjoMSwjkDbgIcVYUUIG49vSfA4ufjsu6Gss03oNkmRSgRgUWaKiSTgI
	 qPeT+qAGGuBgpwbZq3THDZ0NXTVSw0HDQqr82myGUmk7i4V+AevnerWldit5ws/Bvi
	 A0kh+WTOfCpJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FCFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367611359.2084.13456289988619303751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e374be582f55c8198e444506f8d0e5ace704bf93d31cee4b731380934c729c36
Date: Thu, 20 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763676113
