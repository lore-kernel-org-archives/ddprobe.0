Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD5412F5A3
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715965943; cv=none; b=Yq1Uhz3QpwFNruOcvLXUIZkGbdGW1O+icrQXxOp3hopsw9xlXFuoQzoVX4It597ksIJWpNsEw/CQ53cLsWiQSN9A8VURT8JaePrQEWb69DZh22QEDeG5dqxykffctm1Ti8P4tKMr1OYBdIr5Y8il4fpKZPk3NBcOyf0dq/zP+FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715965943; c=relaxed/simple;
	bh=goUSipRUw+vKm1XB+mNOn4k5MZJY0KX3mMrpsg3/ph0=;
	h=To:Subject:From:Message-Id:Date; b=fo4Dzo/4hhb7wScqL57Qj93pCUIU5n/N8NLq69Cmc6rSCT8KjAx03PBJc6aC0v5xaHMmsNxRbDSzI+0AqTOUx26QCeCTCfEWMvq+QRcDwspJxbBZTv+wuS6uMrJpAnAlnOhDhoBzmrHuSBCmEGdSAcIEdjtUN5ZFmi/3rXA+EPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSSgML1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSSgML1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F4AC32781
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715965942;
	bh=goUSipRUw+vKm1XB+mNOn4k5MZJY0KX3mMrpsg3/ph0=;
	h=To:Subject:From:Date:From;
	b=RSSgML1sOKH4h9fOl24r1Rt/jnmujhJgKVG3ZsbrgSDgLULoIFjYj7wJ84a2RdRmJ
	 zcDsi0ddO1sN5pC9DuaytOseSRCZ1f51He2Dx4phxSRZyKrCA9500B6MvFGY2PbgXF
	 jMn2QuHg9TdSv5TjW5FPI2Ld6ovknTKpcAjsZj3cKAwxDgtPiAn2tm371J73aIKdQk
	 ikd40t31vnbAeSCTQEtX9Y072molV/D5LhCJiTponTKkX+fi797KL+tnT1rHXQsI3q
	 cPtKnmjick/5aOfsIok6x3MoAtCo1+cfI1+lDK+9VQkCH8Rc0qLCrplUzvz26Gl4J/
	 o1+n9gA7SwJeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49EBC25B79
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171596594279.9722.2094995590363273646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e86c5ab4eec1663c56ed1f04fe7d63b6f9775583ab14d5448553a1aff84698
Date: Fri, 17 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715965942
