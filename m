Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518DC1DDFE
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790566234; cv=none; b=hWM2JabA2VuHTY2k39o/0VtImr54MgMuntx/A00Kvr4mXDEBZ20QWxyOGIBVFnmt1pZO5BxV8mMjdkhF9JNW4LQ/JO1xl763I841S4jhvkv6aT3RJC1bwPCWLvovo8D/baGQAkA6VdBSXf6k1e2GKU89g7ycetfwgDkXLeWgBM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790566234; c=relaxed/simple;
	bh=OWQuj6qb2kkHIDcIWbA5MeKYGzafAYDxydSzimqMsqY=;
	h=To:Subject:From:Message-Id:Date; b=ljC0pGCbjKTNUpcvSjJOgK2n1coFtDQjVhkSJZ3Gb54VSrxft20lktEy8jXWY00R4FTgdWBRl5HHm3PP663BCxaYff33tXXyN5K78wLVEm1cHjx3rzXYd8IhuXoMYUna9dDdlTMvQMHVNJ9Apaetihi824r+J5wMYQLb76YYSrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6LydRcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6LydRcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1E8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790566233;
	bh=OWQuj6qb2kkHIDcIWbA5MeKYGzafAYDxydSzimqMsqY=;
	h=To:Subject:From:Date:From;
	b=k6LydRcEKX4kxE2J77CEEJIjYt+YqZyxXwxRw8sQ2+Tbv9cGKtW1RGdBSWx2LXwS4
	 5KdjqljRYU+3KeUVRhPFDLVJTNTNEhE1Kcma/Vq81fMPBlEWSvI0OwHnoSHSo8vZZZ
	 MrJPKVYYX1cHx9BGTMc4jPRoUtxsQe6r6bG9RsdTZcbrxV2yyEEEkFHBg1KkAk+yIW
	 IGO5q6QZxRUT8KSFvj6ZUvHDS6NUtW7JIMnCVZwRT63sT7fiWFzYEaluA25dE42F4D
	 /n8yuI5TtxnuVa0pR7XIJae50hvj7LNcR1WenkTNkA34vlcyPs/4BuUY3WfulmZZao
	 YMya893APUVlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A74C9832F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056623371.24840.7330588646640875465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5208f41ad04ccaf966b037229f2177b31b6ef0cf11e26403733a10313a2daf5
Date: Mon, 28 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790566233
