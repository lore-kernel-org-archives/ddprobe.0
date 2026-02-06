Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075E22DAFDA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770347034; cv=none; b=so7Mbd3w8ZlJqAYR3Z0phJAcvCGnN/FA7DfxUGphAAXz4C2siWwVSiQFmUDQByBeNMG3A0YCbgyJ3PeAfJKez9uJRtrlrhuyMCsCQkNov+PDLiscwRnNbfV4rrQXOhPfli7Sk/SYtuYnn8w44Gq8Ik0+VDkohaCmcAqnF0ubDlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770347034; c=relaxed/simple;
	bh=0RKFwe6sELasT4nXj3uCUbOVl55xrEs43g3Vh6Xh7sk=;
	h=To:Subject:From:Message-Id:Date; b=Zx+eVxO87OomB3QTfD40EUbatngkWs6LS26WdzMF6Hw9JJT7zf2+p1t/4cADcUX/+qUCa91YlQJE8lvg+x5CVAfqbaPbdB8wzhuR/xdMPZps6q5MBsxYHig+p3FTNdFMtY+MbvJNf4+hdid5wU/mMuC8OWHhXF50AtXZMDgSj2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kmcm6EWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kmcm6EWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B205EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770347033;
	bh=0RKFwe6sELasT4nXj3uCUbOVl55xrEs43g3Vh6Xh7sk=;
	h=To:Subject:From:Date:From;
	b=Kmcm6EWOO3JThkkKNF+fu/gET9Nc4rbau1Iigia1LdJ5Gw17J5tlibWr8r3iS2d3y
	 L5C8h62SLC+8ypNR0c2iQ47dyrud8Dvx1+qpz1JooVtLmTqdMdAyXBMC2/di4hQ7aa
	 xXOMTYWwoif+hXshxX5+g8W63OC/UW9/jfACFFwCx/cHgRVQmYMFOA/429bIC+afkO
	 tmmuHjP3jjfIYRw5M8ATvwKkqRyM/aPGIpeeS+Y5onTI6wrsGslifdClrxyQFijy5p
	 MGdQyGgzJLP3aqe0xA8glxtHeg7+A5wt3HFw9r5JUJfaeTzC1Avzm3tqUiVRRXHOLS
	 RqkrMU4aoGXsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD2DECD9BE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034703360.31010.722047992145207525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb928df6676a8a38737791ed7a1aede0e4ac8b8c4dcc75b2d2685d387db12d1d
Date: Fri, 06 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770347033
