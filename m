Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAB04F5E0
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787554834; cv=none; b=G/vyiv8IM9QQBYsX7odIKRM6fD25hEJv88/GJr0JryryWHGk6pm5cJGI5OOmi8hji93t7pOeNuIf2zgUgTLsqBmD4NYVzmZzAi6OkxHixKqcIDDt0Dg1ckPVabX9ZXks+bwMdYMlV9qknVFb8CLFOpI4pgfrhHrtjSYztgHsBtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787554834; c=relaxed/simple;
	bh=jWwkODd1e5eMtly//BkztiRuVKv5fuGlPqn4Rq1hzek=;
	h=To:Subject:From:Message-Id:Date; b=Bvq5ekbEVHcxoDWtMlithL3leJ2IADSL9sFeZ3iOszsWJkxuMLems6Z/rtz4/MG7m01mMRmeDoUvE4KqjeMjxiFWLjO8SmFWD7pEDFJEtxPyLJVOSSb+6DVWsBIrSs1oMl7RfEdDKTiTUWcYWwZqbRITf8B+HeTnsTVhXfvlWxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8Z53QzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8Z53QzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8D8C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787554833;
	bh=jWwkODd1e5eMtly//BkztiRuVKv5fuGlPqn4Rq1hzek=;
	h=To:Subject:From:Date:From;
	b=m8Z53QzHzRZssgA4DvZlfasamTVuwjlT3RS+/FzC3fJ1C8P0zCPxDlwrC7pb1NcIq
	 emkJbjjROhIPAvoTDlS55KKyVI8BnpilSoRxGH9OtKu7P2PimQZOgeLgY9khrgXYeI
	 QNETu/kyyWuHldr5dUoGBlvg243sNdKPIHQasVELoEWVIflk8WVPuRJjvtHtpWTFmB
	 of7oHKsuyy+un0W65AVmS4rYp8ZvZnVfNWJs2wUjlWE1jy8IpO+l8Xn2aX4va5MM+e
	 ebrEUicLEIU231dK7B4eeFeHivkO8DTNDyuxHgxVCQBFa9NG9IjLfgl0cakkMT6NFJ
	 sSq+v+1EbfZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A4C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178755483368.10518.4257324372437903155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7fa7fc174831e61443c9164ae5496cc865b4f03d1b7ed6ad96b74382072560
Date: Mon, 24 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787554833
