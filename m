Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4BF302146
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778110654; cv=none; b=WaBTU4s1i87ix3FDRiAAr6p0/+6joLJ+yd3fofdxQ2i3fR7QPhHiS5gqjflynCjsHFNatQhWXov7wYIP5qWRiESKeCycLei0EMxWqwoLi/pFykF2KTCP9pGmt/Ze6jP4uT0wPWWCRo8eWWQb1gpWoCUEiJC3LmfIVRzf7diCA7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778110654; c=relaxed/simple;
	bh=BQbw/7J17UBBIf9cBquHwpEy6aTwjeyqVNOOtKpPPgw=;
	h=To:Subject:From:Message-Id:Date; b=G2PxfWPFU2TG7jFonpXckSGwxXUYZ6TILde9At6vCwR9KK1EwhApm2vWxSU4lR871RG/tadhFPjJd8IEodhNnlYf54F778XCMMobLxVFBp1v5Y+WcxfODC3iOxukqDaKylJPIlAo7ttMwhRhC+VqaqLwCnoxYPPBSVShz6LAOD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POEhwRZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POEhwRZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DACC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778110653;
	bh=BQbw/7J17UBBIf9cBquHwpEy6aTwjeyqVNOOtKpPPgw=;
	h=To:Subject:From:Date:From;
	b=POEhwRZDcWnQwA+O4j5SPcuv1a9+QpiSm3Y2U+N1dloAHHO8SPgyTVsX8gnCu73RY
	 QAhB4597135WaIlTH0+4xwyhl6gPnpMPrS7I3mxEIa4KTuvj+wGlcHLK3setomK8Vs
	 w/HAR0lgIWR638XmAZbbQjnfnyUWyK1rOHgHJ8/VofpvTLOvWKv9MmOR/1K8f+nrnK
	 QwXjQcJDZiYxTWUlA/fcYEdLCoo0ARQ+3Y0JlLkDHxp82r1e3AWDxyIErJ3F8z+EDv
	 MWrhMd+trjyuxoI3o21BRYizKikF9MHoW1F7sL3BmieCIpaxD+4RKe0iAuhe6YufS3
	 lr9fg522s+GRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE255CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811065369.26595.8771015660783813211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b23c218c09b6d897a0965fbf6e7467c683fb455c709b439318c0c989710bb7
Date: Wed, 06 May 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778110653
