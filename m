Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410D441C64
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748248194; cv=none; b=eSBJ4c2Kt0+2EXZPoAsZK+XdrW9b24CNzMwEg+kglnPTIQSpcV2r4vLZ5avTdM9lrETxH066hKMTInsJQ/1UyWpdbB2uY528HtXT6xZuOL4W08yQenbDSO6SZOp4S59Eb8WREf3ojU/uZS+Ffaa/2QFSnHqq1ksiMw/A6otO71U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748248194; c=relaxed/simple;
	bh=SsEWip/v+X4sKpxdSBN+nX9Wq29pVflsiTdOw25hZPw=;
	h=To:Subject:From:Message-Id:Date; b=KTVYwUD2gPlM/IwnvAgN2KVSdP5rZSqnp4R63Qhf0H1syc/uWVr1uZWE4lP7MUsHof+w3ZRmCc4mJliOoTa2Gg2MXEYT8NScfQQIhxn//M/30NuXaJNp7fnbshBrQJ5G+1TongavAPl1jILL14y5qo7Tyov8Lpw/8AwaCzYUGgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLn6Qjuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLn6Qjuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC4AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748248193;
	bh=SsEWip/v+X4sKpxdSBN+nX9Wq29pVflsiTdOw25hZPw=;
	h=To:Subject:From:Date:From;
	b=WLn6QjuwIvRmxVJcaIAhRhkLo36N1rO2OjXezhqAhErkvvsoxfVJopuo+fChPk+sa
	 L9KQiA1hNIgzk3uuwVEKRvFecBMJhN3RPuhWAguJljmU0hg4pUh1n2hPeSHwiAwE0B
	 iFPBqr3WLNB6DrF6/bDqoMFhZkYADDFNi/hm1FD+/pTOCWoGJgoA84BxEedBFhfYUY
	 A7Syi0DkKJFJ3DV9WQPyplLxI/SJdbzcDZ3yIW2K9qcJFdefSobjJg34eJrOIwYnwR
	 LtU2/afDK7LVIkPm6GFWtlqY1RZiXdc819ZE1dswg6ZCGoli+JMCHdSle37qFBPIJN
	 v2nXvUNlxlSWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974BFC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824819358.3684.13376889563287583413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cbe09a179ff8951d34c648b6dd31a66afb0e259971e18c33d8af959492924d8
Date: Mon, 26 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748248193
