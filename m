Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2451327FD5B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775226334; cv=none; b=poBCnfeo8AXtmSuG0pkr6W6qXuX6BLh9b1ob9wCuB+6YlGEBJsQ+FiW1iGnO2pd2Pw8ejdaFKH6DTTFgU2eGs3K/zv1cNW1LR3385Z6zx81QWqpBvZ2DGGNTbycYcdgoqgWx7z2SVPod+X5yo5VN1horxivl7/LNQK/djiCj8mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775226334; c=relaxed/simple;
	bh=aOCZUxZzfZDe6t9ghuQvCJ72qvouv7wR1AIuDzbs6+0=;
	h=To:Subject:From:Message-Id:Date; b=MjUfR67ZT0/4G2Qp2aghjUml9O/GRAng9qeRtW2mMNAvaIOQ/2CfFwHk1REXaR/3i7DvC50paTPOe9+l79hwnhU6U0lXNUpE1EQV1ATcO3F2SxjQn2tK/AgyigsP6054h6wY5nqR7QbZ/p5dMtK6kr0Vsp1h9bKZ4bZWh/wtv9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELHL8rZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELHL8rZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F28C19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775226333;
	bh=aOCZUxZzfZDe6t9ghuQvCJ72qvouv7wR1AIuDzbs6+0=;
	h=To:Subject:From:Date:From;
	b=ELHL8rZfqd+ifnn5qO40UkrosimhIQ34Sq77/yszjgrg5TVwl4b1mseUPrMt4Fg+d
	 zh6unHiD6bu+e07GWBudPVLoLKQGr5A5gX6aA40KC8mrQmreIleB9VSlpMHVwv9Qw/
	 +XN2jW82lPserMn7wA3u+rozv89P5YpvsTvX8/QlpAy5WRLx4VcoE3VOUOfYbFcgr3
	 yO4JDcDiaE3g0QehIEdQRmbF5nntiT8t0ckMY9eDAM2OQ/YGQBxpd+Nrz4GIsfB+a8
	 Wfp7q4HwgJveZY/ca8HgpbMMRr/oRWFqa4F9Y7HiIWQeeHD7dm3BiFNEtknUW+XiJP
	 uUxdfNB/dnlIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF599E85372
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522633369.9224.9295118404242780120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494d9735ef4dca00eac87a092b67477125b83abb06711a75839afec7e8417db3
Date: Fri, 03 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775226333
