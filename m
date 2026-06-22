Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC3D5474F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782096994; cv=none; b=ZifgI9f2V9pQHixoLRgbF3f2DqiB5PndnvE3xYxJq7fyz7A1Ly6d1j39ZUXW44vybi4MIhS/pSqUlVKWKL76YkWODtikQchHPo2LBQ/wd/0bjPqZQYGbON2Yma+/3S6DK1JxakheeIMO69JxmaTP5mNPGjC2w7p5a1DdDgwsvoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782096994; c=relaxed/simple;
	bh=rg6+ZbWNkTpoXpAjt7dUKwboWcjWaahaKawaH5rmOvg=;
	h=To:Subject:From:Message-Id:Date; b=bTo3V2+oPZkS+q2K9tOg0UJukW5i4YstMctmAb71fROpQ6n9CRvwnoG+8Ty4yHHCQg/9UPQHJfIYAlFeOGhD9CG3FljaW2qyE9XIdustxgimeEJQCQhUBC+GsULcN4BykZG9jZYuJGBmiYeejqw0OHgO1Kps+E/sHcUuxiTWHzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBSHWGxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBSHWGxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CB5C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782096993;
	bh=rg6+ZbWNkTpoXpAjt7dUKwboWcjWaahaKawaH5rmOvg=;
	h=To:Subject:From:Date:From;
	b=gBSHWGxJmaPOSSZ7XB+J+YC0X12LBVc0kSEdtB4f1zERIigUzEDWdn/6gWS10ZhtH
	 nwH7xw/AqRVzWT4pKtaHLC++8Cy0oGi3Oc5vBeHwEaPMyzIM+kc5/SPPts8trA4Ouo
	 mRzX1iR8OCiUrUmn5UG+A2iMh2A09KqyJeO3NJtX+1/EVsg8UMfWM8cg0Ee/78YN45
	 InByqLkt0Q9aJOfvqga840zfJxA5yJ47e8KoHpW73mTfybWcH3jQKR7colP+AXuWCn
	 k4jZZc5mosXBV1UuIzBbCoiwey/3jdC2xSKlEMadqmc6XygH1OdL1agl4CZMOMbAsm
	 QCsbWvNabSX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4078CD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209699372.17299.1537336829719517119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75afa34f33a78f14ecdfdff7355f81e9d65dc4237c08e10a1a4a8fa5febec125
Date: Mon, 22 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782096993
