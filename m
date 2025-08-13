Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268851F17EB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755118194; cv=none; b=H0mqeyQaLmOaWxITk1KPslVMUI8SLSbXSbVpX18HNRucEZ0yMDj04gXDmRzdwk/hkrwR6KB7DmYGt+YppGCADzsVy/j08Q0tNAnMrrVcyrX/NxV4tlzIK3dgwkIvT3Y4kaGkulT4Ysol8QfBT2kFs66PfW1h8KmVZTxXklKw0Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755118194; c=relaxed/simple;
	bh=X8+izTrn/hzHFGfdrs9WbUSx0vtV1PJtNtN0WfHE6zQ=;
	h=To:Subject:From:Message-Id:Date; b=mNlzZC0futqLfe/4i+Jd1+ig4fa4bVz0wW0ngw1t7DRh7nK6wsay68SRj9ikp8PlySrU6hMGK0xMI8ExjEKyR/wzpbuRrKfm3qQPGmGptEDjl+h5qPo8goME43hBruUc+lQ25VaLPHX/dBN5PCehXX+ZjbgTnjKVboQULHUHM20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hetg555a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hetg555a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2244C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755118193;
	bh=X8+izTrn/hzHFGfdrs9WbUSx0vtV1PJtNtN0WfHE6zQ=;
	h=To:Subject:From:Date:From;
	b=Hetg555aiqgN8izw79HJNwuFWNPe3/3opVgrVjg5pPa4WfnERFZ+OJDkWbtl35uAV
	 ykb/+BAVfeCLADe830w6AvVI1LmXSknUsA/ygg1z/rAJYey7YEfR2tfUNGiYKmLHD8
	 Aj/p6hftbWHekmnevtydsQROii/xbH46MvunbFXTkVhb7CPxqixJHytDyaMHh7ExfZ
	 PmIboTghiYdM/NyhXKt+azInchCLwch1Ndg4pvha3OME4pZD5y6GzxKBYQjP45EoZK
	 dxUcJzE76IfC3b6PqWVe+Crp+/WByXm1xX3NB4jINjJAgUCAx6H3bGdT8Bm26L/Zq2
	 dIroyXZJ7QMTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90928CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511819358.11599.3500959647603074784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e5a43329d6001ad110fd10010bd15951e6b90cf894f7e9af755ce9f64b0cd6
Date: Wed, 13 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755118193
