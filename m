Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEE83546F5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789693834; cv=none; b=PkFCJk6wyJVNPpD4F9lxjt3UkZ8/+BmYy9MrXmic3ZsqWZ+3P7o0+eyCvQ/rnf1MrU/bxy2z1Ljap9yGqoBVd16amFOyEwNd3puU3LQqpFfkuwkjvvZH/u37hzDAwwjuGPtFtNL5MZz/wfp33aJB7yDvjrlCt+l5SCNmb1xglRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789693834; c=relaxed/simple;
	bh=GInfC22khn/TQ8m++e2H6nPYnG88Vk5NDhWKdk/jgjU=;
	h=To:Subject:From:Message-Id:Date; b=FkAXeMzXwju2SDN7zq2cG2NToiEIT+RTTK3gBOT+BCL/Y6Eudsm4gMJddcuceyL1Vch3Ma0C4QH781XDVqcIbo3Fe6cjzFApodWvbPIoPPiIMjNH+PwsFaZb6CvQ8UJuMLXPo4VPTc3228oprR2zyz663ikS9JND7AIS67MYLA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewTdLDaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewTdLDaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE310C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789693833;
	bh=GInfC22khn/TQ8m++e2H6nPYnG88Vk5NDhWKdk/jgjU=;
	h=To:Subject:From:Date:From;
	b=ewTdLDaYaYjZX7EvCRrdF1cR+7pDMBQaMmAXf92mymAitzujjznV7KcbCg0bzQE9k
	 10Zqm8cIIGevikby5Ve169XFTZQ21AtucUE/pbkviwJBQwgAH6K3NRDcrpBxsRB24k
	 GYJOUXPOIIzeqG4uvaNo7z+XwOl5meM8uM9UcLgYdq8vGJZi/TUPmrPloIIgZgT0/w
	 ivAWe7JhFfOZ3bqYS56KCWfKiQzEcAqkU1BP+z3y625Xn4AeDc+kdVUcZbPJXiGbF9
	 h+LTQ/qN/SOqr/4gcg0NtgP6gKCFiQBBz99/a2Lz/mio8Ezbuhm0jBKOGeycTVCYxg
	 6H9kSIvPM4E+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBAC982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969383369.22494.15589984342517896810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8441025cac601ee647f8bc4993d249add114d9226520c3ce8693b5424002cbf
Date: Fri, 18 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789693833
