Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5419E28030E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790756434; cv=none; b=deHI5VfrN/EQlgJ/zEmvFGVlW91d6Wew0TN8RPTdMfl1ceWz62O2dkLFnVGprsYQRc5rojOnaGaDMKkUg3ukYE9XOXgzmqNaV2GD5mgSrBoHTUP0lVvMEdPRlAoiXLY+6iOFxec9kldnnJRkaSdqCsDoFT604mRYE7dIURvjZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790756434; c=relaxed/simple;
	bh=vM0txYSDWVbeoj65PwiTYxpcUNcvEe/hJSwquPtaPxM=;
	h=To:Subject:From:Message-Id:Date; b=epmIQEFm9x1koi0v791bo+vt3hsjz6xPPOIgdwEY20gpC4MRIlA5RaCPnApkRObSr2aAkG811P/yyWBgFjajq84wStWLO4hECmeoD7v0mDwYRhJl1NM1WuAEGi3z91rF4I9q0C+qcUgd3/zF+9eGp4yU5GYaqRPjkri2rSdjOrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3NShhzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3NShhzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7C3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790756433;
	bh=vM0txYSDWVbeoj65PwiTYxpcUNcvEe/hJSwquPtaPxM=;
	h=To:Subject:From:Date:From;
	b=C3NShhzZOTfldeKWFZj7yforwDFDJ1CFarzvnahldkZG2Bh54jtrjzQ2rsMq2ek8J
	 Nklvz3QZgtJArtG9uFWvxrzVK3LPa7D87LxNG8ZIqFOW65pvYug/q9hSDzCQJuE7dx
	 +B5B06nmnk49Qzr5jdiErtoT7aKhz9DWzBwVfpfhmRk0HqU3bB0CgI3isf0H5ihcCV
	 LdoUQ7xIiMP/LtPH3E+8oYyBWOxSODOHgGAe0UucLTMC+eQlmwA5HWY1NisNX2RZwr
	 qjbI54w4Lj2CmWRoobWaCVUl2X62nwocLfR9bgUC2VYFElIbgi5CbPi9U9BFu365ix
	 WwHisVMfp4lnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B9CCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075643368.3746.11968870493402090498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7f5af57f6293eaf730d2ec9e45bcbb2e875f70c792d2de40b9b4f7a6d242ab
Date: Wed, 30 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790756433
