Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78D1B0423
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735818354; cv=none; b=Sz8mLEQb5IYh1lm67jETahkNfO7z+IJRFOjYXMcXAeiXv0hjisclOlnP4yXOkl3oTuhb93m7aKDmP8YvVsXRjduNeYCEsIdfvid7FSOIJaeuHv1LxgvpPLJKQ+SVD0GuQ/p3bhOGRkvS3KLyDY3usd0W6QCTRmFwg5yec2K2kmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735818354; c=relaxed/simple;
	bh=3c2fWCqfRCigEWy4xYuMt10DQgz3u3dsSk0/G42gJVI=;
	h=To:Subject:From:Message-Id:Date; b=N88jsKOQjbhJ4h3BX7drP14GWtL8cxu6MX5grtYsMoEbgWiTongTvxqSRx1dyrFg2I+wyJDd2NW9PfqLPDYvZgc8aF43Kmhl7m26JlMZPOU1eipSXG03s4ykAp94T8u1DobADiejljHM0wPNVnYYnm/Q3lO7mzi4ykD+fQ0rz9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ey1GljVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ey1GljVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE813C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735818353;
	bh=3c2fWCqfRCigEWy4xYuMt10DQgz3u3dsSk0/G42gJVI=;
	h=To:Subject:From:Date:From;
	b=Ey1GljVbBny1J2YGHilmg2gtI616L3qroHGo+c/y6wUvkuf0wXp4HwEneMeK5MbB6
	 dy8BB6MJf+IGidZ8UswOEJh2+XkUzkNPdDEEoWEmQ69gQXYQl4kEKJk2XxQyvFFpXz
	 9ORgDSEzXpAl9EkDNMYdUORvyonSFqWRluWcxFc6AIqyKZPpGRM6vQxs+jzuVv+O7e
	 vm+ra/rNlHBcqsX4/10jB0L7r15mksXyzN0i86SvW9T9bA8KtzhQedK3V4dj6FLaKa
	 2zlqvVqjLqWSjb49pns90l2sIiTutpey3CLPyLY6a/7834sOIFtN3rlEj9vMMDbKL4
	 Kvnyis5OlKd/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A97E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581835358.25062.14753026771673927439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332a12681ae56283aa89fc3d1057e1f9abd9a169590d008c0d2011c298a2fdfa
Date: Thu, 02 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735818353
