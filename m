Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A54F1DDC15
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751384394; cv=none; b=NBiHbWsAOrtprFnPpaUoEbJFWFF9XB3yfesJqgimEpJ/efdxFNyL6PnvRZ6Q80i9/k3KEj/kM08Q8sYrot5qzJqParRPlGldLak3o+oWLUjGAHX6ovrfwoLaK87JAtlCebKMWSmPeFltI2r6aP5MldPFxF0SE8HnPY5ieK4UVdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751384394; c=relaxed/simple;
	bh=/kohdiKCdhp7W0WSxb5R1mZ1qU2g8vyFzUTn7TElYzs=;
	h=To:Subject:From:Message-Id:Date; b=aKYusqoBTvL8wzbOpYW6H1yOvGhnT2tX1oZ4u6QnQEhhD5WkQfeHsguUPq1TqiSq0H1EoxOnbwjPDyjJBGMxu/Zw96eGjyUK0IGcXbTQ/km1yr+3gTj4Zz1KWtRSWc3fMWButmKpFsRywCNwvDteKrUz7+IdeFR4e+C8CpLFYZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QS431o+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QS431o+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E66AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751384393;
	bh=/kohdiKCdhp7W0WSxb5R1mZ1qU2g8vyFzUTn7TElYzs=;
	h=To:Subject:From:Date:From;
	b=QS431o+RT9EmTSOdnDJSvJk2bHVwGWT96DaMdGFu7M51fa4RiRYJo9Mbdq8V9amNA
	 I+WuStiyp6IdkHCoYOvuvbNeoe1M3nUjZMqIhmFq7RMjG4njK+uN4glIwbC4xeYbIO
	 HKye2wweDzWqdwV/9aCoPHCxn2fUwbTGgLI+fvyGHhXWJAZboZ7tuPmu+Awce/Nuby
	 VJ4dw85KlaR9KVX8syqS7dMamBU7Nxk+ZXW0Vnjpj+8BqLUjX7y+tGD6q848h+Rg+6
	 Ar0VZ/xY5H6rU4ovLl5YGfUHuBJNdRIEgTEM14DZxft8zpzKjtrsiD9eKAG+MxtmjT
	 w3n+tb6ssUppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E80AC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138439357.20450.14662644690195572404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ba861a55d01584f49807a99875e5766ad3b43fd5aad4630f80d109656d4199
Date: Tue, 01 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751384393
