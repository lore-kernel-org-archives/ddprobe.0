Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CDC24A067
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787194234; cv=none; b=Wc1jUEjJLuj/c6PE9iC2igZeaf2V1Rg49tYiTnzKi8fvOeM0Nr9xXWksrjD9GgtF5K1ciy1tN4uEiVMAi5DYIFVDzzqN0ptZQhBN3jcOMmiUa4RLmRjJNwZD0iSKfuGu3EwPzN9VPvdonCDyVozHQtgK96NjORBKROzfNbUGPnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787194234; c=relaxed/simple;
	bh=lUnt/S2TKQlgzy4c2BMSjAmuEdNGsUVrjRtsRY7rJ4c=;
	h=To:Subject:From:Message-Id:Date; b=XdYFdq7W6wFFiLDcGI+9//bYUcoRENLDI5zGMVABdzCbCMN4M0J+S3PBwEQufelaoZt901z5i6xx5IkV2aI3cyl/d8o6U+RY0Xev8SMgBa/7Ptv9zIXBfKdSYogcbXo4+vqa5OjRj5LK5bN+Rr4Jeh2CIj06gm/QcM0LvAkM5/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGG6rixD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGG6rixD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFCC6C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787194233;
	bh=lUnt/S2TKQlgzy4c2BMSjAmuEdNGsUVrjRtsRY7rJ4c=;
	h=To:Subject:From:Date:From;
	b=iGG6rixDqvquSUSsThLwD+Ki6WIaHcvyuqZ1UEj+0/zygi/tq2DCpoGOVmL5r8eLY
	 DLmsruFiW/XQOTuI0C4xCuzDT4e4BMT1vBBNBFlFceZQ0NZn2h6RDm1tooJ3lPr19W
	 sfOtExKMvcDbXjJNcdN63SWmmS8iq1Y7fuMxwv2WU6kadmNZogjJTpWdNPh9nBYJ2w
	 3dTVmyWXrur9q49+b75XcIXwaPYwrj20o/kItFsu0g/g52IE1cjymbs1/G9BSMqrhg
	 +BSHSL19kNB7jvy2q8gbAVYGB+Ft9vvMaJiNYUNfpgoRN88dr5sZ+fI84UfTYjk6CY
	 lO+rhLC8vUw4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79C8C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719423374.17459.14606945204008736210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e56bbd8c7aec8cd4169d5d94822915b424d9f36acccc3689e29654964a1de74
Date: Thu, 20 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787194233
