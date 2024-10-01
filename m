Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65B322E
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727817954; cv=none; b=PlmlKsgsTcHYWWNFTJHfM3YS+wsE9wsSalipzCy/Ihk3BAYxB3fJYUi80dTRbr3pdwBJe/tq+HKzZib0M7HQBSNT+fktY7e5AzyEFs6ZcuKKaM1ZlVPjPHgghq2AUfjvd2chrhxITP+aqzTZOa5s72N5RsD32F7EuBS4MGWG6Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727817954; c=relaxed/simple;
	bh=kqZzccKx4wHQc4DG2Fc4ML4XIK1HWbU7PMBGVAWzXRg=;
	h=To:Subject:From:Message-Id:Date; b=QSCN4WZF6zr44jfVw/thANNVUSPTymYir+150KmcjNb1MlY6W0ATVybSKRQ3EQ/8xTK6EcLlqZv0F5iZj6aTijLCCxocoYfhsoeSxFQWOD+OvTUQZvNwZUdWoKg75Oz9F3HiMfJoMvl6Ia/zTsX6Rvdoa1ULvoXX5SAggdxxJMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYFbSIJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYFbSIJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7166C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727817953;
	bh=kqZzccKx4wHQc4DG2Fc4ML4XIK1HWbU7PMBGVAWzXRg=;
	h=To:Subject:From:Date:From;
	b=QYFbSIJyPkF78Lndy5X9FA+xGC9bnAZx8OmX1EcUpGZiz1mmuXZNCplavoDsTbYjH
	 lCVz3JVQyw0LZp+IU6TvSKxZ3xH1FV3b3mTbE7kOTjyK1aQAfEUID+PxjYrwLkts9l
	 Av+0gTulPrRJ4GAIxXJJ96mjN6kumomFaIPVkQ1pSc3uar5Llsk1OLW7W3yUO2qkEN
	 T+AFc7q8RIMIRq5PRkWeq7zc77Qvea7IAv7ObAvMU4gMDiHU2sqU7pCXLoF2NiODpB
	 pX6mvYpd9jzssc6zLqTjKoqFgoljIJnVvTQb8+gAam9kCb8mcrVbS/d9X52ZRWrDhC
	 GVrB0Ve1hY9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F23CCF3185
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781795360.3762.16618181359920151513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367f96fc7311387d40134ba06e016e0bd37f29f66449c2ef985f1fb94c98e1b1
Date: Tue, 01 Oct 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727817953
