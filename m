Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CF3815A865
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716962063; cv=none; b=HpWQj2ZdYeWkpl9H1WRdOVOvwYifgPTVllP4SovBSqg1w2/5sIplzhUedhFi8N5+iP9YesLxp0958Zy7XgAK4zgPlgsfGiULSQZA2a5yz8YLWLHtYFPvcJvHKCut2LXQqE0QT9FodQgUTsDp3jy/B4NSSsd66dOfNVzgtjc6+kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716962063; c=relaxed/simple;
	bh=WRjeGqckfN1KuxOC9BsNb2ObaJsReaXovYQK1bwnrvY=;
	h=To:Subject:From:Message-Id:Date; b=OUPTxh17mgoXusgl6R27ICHRet+ndOxlrdLOaIzqWO0RtDZX322/J1/j12lgqD/dQuAut5Y5mNmxDsE//Ttqh+yIht8SdUVrQ3VOU//vK4uNublPX4YXGp73UN0SDckVSLpoe/Kr6pIlxc3iR/AVtwNKHfClfVV2kxvt5L2QCZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atJsTN5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atJsTN5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E03A5C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716962062;
	bh=WRjeGqckfN1KuxOC9BsNb2ObaJsReaXovYQK1bwnrvY=;
	h=To:Subject:From:Date:From;
	b=atJsTN5cUZlvBcRPq3fLG9Zz+NGi0DAsWyeKkMvx/CDEqPGRcB3+xJg9F5WBQVwbh
	 9RhXMkj5a+Ps+RzraGd910IMIkAh3G08ng6Bm0Ef0Z8LKpRqkYK3E7lgQNEjxlPPHb
	 mZ/ibPxgZirrheZBiHsE/u3Re+X/Ty8l7fb12TgMrSPYxLvM9vvpWfrSSddtALm8nm
	 Z1xEJdNcfixlUb5hE6TvRFSFgXhBMXHzljreijd6ZJG9Z6fBJDhniQ5GUCncYCnwKg
	 P4P6N+Bph7MRUC8J3EvfrMt1D4lvgz5BNERKjbiOhuzFyTsJf7UMtfbs/FvvD/e2Em
	 6+nKi9pLDojNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A9CC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696206278.11614.16808092736860046472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f599ee4dacd9cf51f10508f8821d60243813b851c4adc9ab409ab8e0503f90bf
Date: Wed, 29 May 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716962062
