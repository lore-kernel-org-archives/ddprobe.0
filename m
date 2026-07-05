Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C967433E71
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783247914; cv=none; b=EtbViGJId9ZG2cTdlsc+72Q4lKmh0gkaM4x12m8RunaW2CLBnwuDDlbngX67LBT2QHCjVVGFWS0zNM+zhkTU34vY7856U1opUf2jlh6/CbMgGHTaXIGGfCSu/7c6bHMDP6Ik6yfh3N/T1ZrknPHMme75TBZPexp4cUjGRlZ/3JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783247914; c=relaxed/simple;
	bh=wjEJK1o84L6/TZ65PwfahbtPcetn0tXeUeLcJnHS75c=;
	h=To:Subject:From:Message-Id:Date; b=j9yTuBXeeYmKoyEwqRdSCTYMZFFv9r3V8DXNBwcTYr7Yy5DFiifek7bl41TkHE6hq/iuB63TKeYG2RsLbgiazGUMmQ0w80JU0kffGCeJ+XV2o5VouHDJidtfJe1znYrbVpSlHt8pWiaY372+hKAzmxGT1K3EXIIeB/x88PWqg4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJHeOg8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJHeOg8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBFEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783247913;
	bh=wjEJK1o84L6/TZ65PwfahbtPcetn0tXeUeLcJnHS75c=;
	h=To:Subject:From:Date:From;
	b=AJHeOg8M36Kr8DOtOxbn1a2YzNnFtz8ttFJ+OKYEJqG2QWzsHBMRgHbbzz02jwwTg
	 OQsk0MkLe4ic+edvi1k8vdm1/UhDKaltdiR2i+isJF73GdsQrQq+ztQx359qYNjOdt
	 ZEDxakQQ+RQEUWc2h8opCe2JNB3iTnzXbQRVXKdRUofuv2Z9+LKxyaPYObN0TdnOpp
	 hxWG+WurPxVf9CjHrkRFPPqSJLBjQL0e7OaSn/qf7pCBDv8dRFLlhLyo3+iQhb+E7d
	 zr7hxlNATkUGWzOqGolZPRhP4Mh7DNehPjO1axfCSKNbGFXqrYket1yAx/u9CMUCxk
	 vKXUbhWsa8b8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE92BC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324791368.7986.15856398174163669864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79193d3bd632bb1fd00d0177b3d568dcf903548ff56a2d0d14ff10d06a8ed65e
Date: Sun, 05 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783247913
