Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9EA211A28
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757324994; cv=none; b=fnROVbRCm98+JlpvI45592YcgSs3jW4NKko0jgZf0JgQ9ukuKKzGI76oBnPPBBwndnULlhiPP4OD0esXtWkePO+WAs59KTdPitYedRnPlIgY21IuhNeIBlHmd4ZsVC/XWNfipwBBMx0yGj7d0OQsWcx01f6IG0FN/i3SR/6fqxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757324994; c=relaxed/simple;
	bh=xDlth5WxSzx7PtGdOzgLksM1KQDQ57t5zcaQLkuQH0A=;
	h=To:Subject:From:Message-Id:Date; b=XHS/Kew8Cv9FvJi/ztxcahbFc3WHEw8n6Wr46y6tQ4EWSW4Ro7LJ7KqusqPw1uhAblgwzIh7bFQTX9/9oEF8GdNJLwPc3ojp+bNzJGRtrvAcdPwZCSkYT2UGDD/cCAS7tlED6ZhAJcHutxIsIHiBi3BXk94lpwDr7qxczjHIXwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU5a8BFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU5a8BFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757324993;
	bh=xDlth5WxSzx7PtGdOzgLksM1KQDQ57t5zcaQLkuQH0A=;
	h=To:Subject:From:Date:From;
	b=lU5a8BFcltfR23ASlfAFGH7fAh8Db/wkuCyMJ2Q+gBzA+N6chl+1Ls5Jsm+hVu97Y
	 Pr7DobQyO4ToAlGJzJsALWO6piNGnjfR+1RiqgDuyVVN2bRBdSiAE31BAsdbFGALKq
	 fJzTmZQixArN58MBfyEtu14Z0jhIXITUpVbuAgY0eZ0aIDIpNVSGMDAPHN36INCAgG
	 ouhk4jxsfxNT3o+CNnfBsEJxJyztVTYHcnfu2h+jlkPJEEJpKviyxsyAyzGkR2qbP1
	 mhJ/ctEppcrW42AwEhXK0LeNZuutTYK1fBge2VwoIJ2qeCJg+wzEq04Kx/X0VGo34j
	 u5Zaf6Z7bEVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90023CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732499358.29965.14341572781146707732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9afc93bc6a6c2b394fec9386ba9de43c42fdbe505ad55946ef36fff5e98495bd
Date: Mon, 08 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757324993
