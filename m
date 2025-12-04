Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA099145B16
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764814374; cv=none; b=AlRsLx90jq6xm0dWpZ+dzNUFoTsASqjP8BrnVZND/PX/WPlKLLFBEae95g2NfTPDtP6CVcjU2Xogh79FlZhYV6kEDt6ABwVzPr6+1rT7EO0IQM0BqPuRmtavFkY7X+oKwuQeAIAQkSnbjcny3grqBQHWhg9uCG+Bzi+q7lvaZ7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764814374; c=relaxed/simple;
	bh=1EeMD+kGZ42Ki90qyfOZP190kCxacbJeTGOc2RNfubE=;
	h=To:Subject:From:Message-Id:Date; b=dxRSnu0J9lZuinB89zmURpFP37r/MxOmY+pjo9yUnK7xUX1Q5GpImOJSfDy18oLCISUhqR2EsF8Bc+fC6L0VJ+bWdnRG7/S3f32oivGIgQeiDqNQoZXkt78hgq23ExBSbVp/+iF2OQtE6K4wsZszgnjQpWX5oyPmu1n1/CsKQVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUZDdPwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUZDdPwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A25C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764814373;
	bh=1EeMD+kGZ42Ki90qyfOZP190kCxacbJeTGOc2RNfubE=;
	h=To:Subject:From:Date:From;
	b=hUZDdPwR0ULsAi3bP7pwCBHtYNvFugs9bizPv0/k4DmyY5GXSnsiyCnYgjXA1sXm8
	 VOPLj3PyQy/d9QvdgIGWDCvEkxalGJVSzaDXbUx7jYkmfv1JyHgmu8mWhHyvkyc91q
	 m5xXHGQJKLXqSo504Z5+lP/80ZUiAZPeC55vpXf0a4LibjcLB8gSRithafVECB7a4v
	 N1QXROkhoIGEkAK5bJ7fQMdYDg3VvS4BT/CO6rWdMGmfEeyvwgpWP27pseOarjsc5U
	 BVFwbIftoH5pxuDx6fLHawimzAexJoHD2ZlUZy2RDy6KE+n5E3tF9jBWxPC80exBS6
	 ci/fEjHdC0QLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BC5D1CDBE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481437358.2786.6323546331738506538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf5bfcaf1c983ebdcdfbd9c87ee01979473a62da3ff944989c2f91abe26fdf30
Date: Thu, 04 Dec 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764814373
