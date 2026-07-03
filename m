Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA0530676C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783096114; cv=none; b=eyPQaEe0BK3VNSjct16c3HIh+g8VWXmJGWfAhCmQHKw2M9qeQtGRi9uscggdcH63UlTOb6S4HbQ/7/dDRI3Ef/9g8DKp8XSaJgqEpkIy/TVjSUWpm9pc9RcgoZ98cJ6QsMtnxQaRVD8qg2eTbqVt31NmFv6vu9hvqSPP+hvQgEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783096114; c=relaxed/simple;
	bh=A+VpcTeDPZrfoJlGao4QK3kFK3gCoi4nRx0+4TKfv+M=;
	h=To:Subject:From:Message-Id:Date; b=oqVHZ+VEGhpaG+DjG4baB9cqH35q3UNliEDb3eS3zmKNABgyuuti5TBB6e+uoPm9PWSqhYStxn/cqxij+52aGNIBHqkmGOOwzIsYbBoTBNlSc4dXVl+EfEAG44YM/0oGOyDpkblDb9bxiVs2DM35A/LmiYudyaO9ReT0+1+N4Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FE0TWBgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FE0TWBgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D1C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783096113;
	bh=A+VpcTeDPZrfoJlGao4QK3kFK3gCoi4nRx0+4TKfv+M=;
	h=To:Subject:From:Date:From;
	b=FE0TWBgv+890pthp6NicCgfY8VFRHLZAPouatzgtzGQHNw1SGb241ylXXlsB12Tbo
	 GRcH5TgtWLLwiXO0BvB8UHjoVnuo08zMrKoyIVI+29EIEdGwgjsFMgPj5uieTZn2cY
	 n5GySYPdAXGOZy1IHjwxqbynQqS7DRoSA8Mh2lBIGoTtpqqwKRCm1R92iok0OltBP3
	 W6VRLom17OHIjTTdn+RYzxnruldM2aIm+UxetYkDFkoiICIQU3xWajNnO8p0YlJF2R
	 crccWjkva+kSkPJvirLOIF+Lq/zHfWuSFmbQt9oZVhitHnfJ6nRcfmTLR66UBFAW3p
	 N8LiiM3upAMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC40DC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309611368.18701.13218824037432990323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25c18cc920a0b0b3114a451c4033c8f12a220002975464d2e7cef79463cfac1
Date: Fri, 03 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783096113
