Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E08E37C901
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773790494; cv=none; b=rqWpr2C/0J422+jV87C47pHudSRytQoQBdZ+e9Osjlc+UrXRv3hICjRb51t+21uAuKTckbNQqXG8vv5oxLB5uxy9WPcsJYWHNwB5+pd+uf4VBiK8N2Cq5J0u3wE2NfrJvzdZ0+kygMq+MgimycGxiJCo8aCbbryGWRdBj0FMF7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773790494; c=relaxed/simple;
	bh=Eva0mXqVDDuynkOu6t5BV/IQKNxMN0aE+O+fjyGH0mQ=;
	h=To:Subject:From:Message-Id:Date; b=XceFo0bbuC+pBy5Wr2VqQgBUdpqtivoMUsokkHWn2O5dCYsWmL0HqikG4H5VxDvBgA8nL6IjOxIGnFPMZcgDf7d7ucTn1p5bJNCWVAr+O88v8ZKBqAQZLdkhMllw04DGT5kwDZIe/pidJ++eoUzUaQFeKXFvhNw6mIzpO+RfKSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwSv1h8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwSv1h8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4C7C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773790493;
	bh=Eva0mXqVDDuynkOu6t5BV/IQKNxMN0aE+O+fjyGH0mQ=;
	h=To:Subject:From:Date:From;
	b=IwSv1h8lkTsa9ongCLnvt6Jqw51SkEynXS9LW6MHlSg65IfGWssTpQ8xm2xptI3/B
	 eeXWlg/JyUU1wtZzahKGLJKjVTZtRWvr6wuxDkptqEziauCRS0KLKhk5YTYbJtbJQA
	 3kMIgov0pX22esxbnoDC2WX5oaLKZV6W7IaxeEgb50tq7Mqfx0nj2FsgVNEfq2MPE9
	 biT4gvtNnba3CxQLOkPj5fOBVBiGu/XSGZ1/xSEuah2aBmoecGDbJUf/eyb9g8g5HZ
	 rX2n8WqdYN9OD/luGvDs1Q7XCtR563lw0cwpVSHfNrgPaa9nVGcAQnQrs+K1vxlFkD
	 7hyUyLNJw4Upw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6A1FF6E9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379049357.4142.4313810060056011349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea95980886c3b2412d5818c2ed16b3afcdb23c07390fb002edc632fdffbc2c14
Date: Tue, 17 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773790493
