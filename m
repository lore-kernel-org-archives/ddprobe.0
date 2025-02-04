Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F3E215182
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738685156; cv=none; b=BnF+8e/70iIa6Zor8yHWYUbbk5Hxm/BywRAsmseBcPpMGHbQP68MvoebrRtt53POyEzZGvqAXpdH7XTwiQSf6d2IApfGsG26CVVIg8XYsueruh487Z3exto9PPlWEIQksUGqIdjJ+gqpUcUj7V4S3v2spu/nwCLnoPGYMzYyl1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738685156; c=relaxed/simple;
	bh=knj7rDd2PcjI/okD90T8cFfnpjzeiJW1aLCpasbH7Ws=;
	h=To:Subject:From:Message-Id:Date; b=WpFABg0nCSrqLtSHdyBKeV/BS/HVwK+44CBxFSO7+8kRD6XTfjSZZ1/Qnp52CPdjym5gCAQrfprgRJOVNev1k++zXN3mLGhszEeWAFICX3kVGWg1C72cSM2diA5H28ovcnHDwl6heIUyE06mKPrpzhLp/wj57sR6anwDJWV9s7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8AW9x3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8AW9x3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA13C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738685153;
	bh=knj7rDd2PcjI/okD90T8cFfnpjzeiJW1aLCpasbH7Ws=;
	h=To:Subject:From:Date:From;
	b=g8AW9x3mN/dV4UPXG01zuVLRl/V6a70gAmsCrfUAZ8OBWYKr42d5Y9ZX6OS/dkozb
	 7DMYgpjdgwL1Qs/dvK2vT2d2R3+wYcvMvb+wEBJWp9ThkMwxUBzeg4uNbKLWh9vadE
	 5wW+bXwOnYSkEOS8W+AgDMtSvwxgr6BSpDQq0kiEbeY7cTGHB2w1F63VJKK4oyG+kj
	 gxI8LU5P81ao2rzABGGqKljluF3u+Gb2srVQouQxgsHp4xkGfFHAB9QpwDtIta2pBs
	 8uSiy/e4l4521CqYO/ZUX5qBifACafojWLJM02dtAu6EjnFv6XJhITj9niIIiKOtmD
	 LuwatTIqRKeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97CDC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868515368.22141.14702286629415473819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86bfddf89dd300178ffffbc2c3690c46d8aeb88a313b2cc697de67c16c11fc2
Date: Tue, 04 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738685153
