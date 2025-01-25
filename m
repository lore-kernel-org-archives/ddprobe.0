Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7969910FD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737766554; cv=none; b=TF7rUU0mIeuiTJom0UZAPvLMMCBvJ8XFo3mAQapMjtIISP+CV62yLkGeLIYGQqrSz8YakvjpNyD/iAKzwnabg0pb9MU27lux50JDSzPKTMtueYb+JGlU8ckjiyWRbohWLzfZqDgBCt3E+0j1oqLCV2e8H8JzxSuRn5ROVAhNsnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737766554; c=relaxed/simple;
	bh=IJxBIkPYPG2YBKVMeIvFsnKadfImx01USm2LD4Z5+zo=;
	h=To:Subject:From:Message-Id:Date; b=rsvlxPRhh6cq8KbNLmNqG3eF1Ow4NOn+MJ4yrYvZkhiotVo5sm74zggYGL6HVnjakULrZsXwLpk5X115OHcdcUZVVvT4FCT1l05x0X+YZJbmeBIfaQlWaTNfB3/wveMrssugE+LhjmQDlVt8AMSQZCWVxshj6dRb256hqKj2JkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg5C/aWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg5C/aWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79FEC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737766553;
	bh=IJxBIkPYPG2YBKVMeIvFsnKadfImx01USm2LD4Z5+zo=;
	h=To:Subject:From:Date:From;
	b=Zg5C/aWDXA6RRh32EGltmVkkfO1xCDUOLqsbqskzrlncNjp7960GTbaiRkGBXfalY
	 ty8f+Ka0qebKiIpluGTClocKs46V8ELogmhgf7xkbf9cU2C0+KLdqpffS4YgDMP3RK
	 z2hFDG/LJpVPQr00iFMckztjhMvRhPmz2+ztOcQ8lSRsPoRpB/O3BWWkMpeUBbyWDU
	 HNHP5kK+g9MnS+uaiNr6yMy9yV6HmgySWU7cDcaHG9OlCtOzsyiboBr9v3G1JOS+nm
	 ilx19tr5whf7Al3qdVdcDwL0OmPrP1QCAUDXBEGal7SvCF0xvxTA81jP6niSCjJtes
	 XStOGHyJbL5HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB1DC02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776655361.24825.11397155439962647250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ee6d80a3fab3068cf04a5b1e29ae80af924a7b8d51d3ad95f5f107e1b00a89
Date: Sat, 25 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737766553
