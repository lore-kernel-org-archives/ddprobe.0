Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300AE1DED40
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748246994; cv=none; b=XmEfzs/TnmjapZUGu8l7CYLk90yCRJf0lgmrdC5+FiS40MAI9maSjKIFcGgLtcbfhdcMNOS5IoRYEfrp6/VE2lV8ny3XXHs1GASfVHIDFNYBrXGEmkFPLbzZs9IplT50n3tmEl+PbdrYZjY/VtdzWcgU1iRpUh2U1a2XynkHnng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748246994; c=relaxed/simple;
	bh=OsgEtm2k6D8jKHqvfVel79kyFDXrTRal4den6Ro8yqg=;
	h=To:Subject:From:Message-Id:Date; b=W4IICd+aseeo4NK+RUg9JF6CbYU77N7p6q6V2Bnv+lsWtIeISOu1DYJzOYDb32rBCv762nnpApQPNdXT4bbYzRRf+146QavJyowihVdyIjy8gZi1qpMlyXpR/Gi8LgnjD7DckMYPC/x/DckTM2a2OOQAXA6GIv10WXG2KrY5DOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xz3kGmFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz3kGmFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748246993;
	bh=OsgEtm2k6D8jKHqvfVel79kyFDXrTRal4den6Ro8yqg=;
	h=To:Subject:From:Date:From;
	b=Xz3kGmFvxO2Ex7Ft3ZpXDI1fqv9h3bRoCddcJt+bftz4ls5egtl8jWBf/mFy/CPtu
	 L042K1iP/sWzObvzjkVPtgi4Jd+WotGKkwi1YuBGO0mdW914FM+KPum7LH53y6GtsU
	 LWE0SrZOUCMSoHR5zuwl+EbVHbS6ah1yiWFmgARJS8IADR6atRRkb8pj0oCOetM4F8
	 JIKcF7DhSM9QAlnB3XcvUBoka92E5E5HhrDodbdGK4NXonpOaUo5aSackAtKILQRoo
	 tvQFLGuSWe4tOh1eCGv/EGazTiFSZQrA8W2TAh/c8giYK+CCrsXtPr2unb6hKWkT1H
	 fKvK8rYgjUwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5AC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824699360.31272.14323308248685448036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c03fc56d6829111253cb8998c36517408e85064019810a1fad516e74188c150
Date: Mon, 26 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748246993
