Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A35310F7
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724648154; cv=none; b=IqqyViIeXfg+R3s9ZPy33geYjv+GYQH0W9wrf+sMNqf5M0/5ydvPyc20Ag6VDdFOAdn6jttfkNi4Aexqg6GIBFFzPrAEFQ/KLSkWxJPaoQJSi2VoE5WCgV6Sx/lB7AYY4HyVNbixl+uGK7rZ+znAfFFNi4t6AAFQAuJvSpQHmM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724648154; c=relaxed/simple;
	bh=QnKYX7bMyyCQytBDJH66x+9hXUR3Jlc2kV2j2vToMtA=;
	h=To:Subject:From:Message-Id:Date; b=o265e/4wFmQzNg7CQ2EvRL4zRFjJ3N+FCoJo+n0HsxTL6NGBD7W8876ZzgSzv3ujiGdKdna2rLsR8FDqsflzO9CNz0I50EJeZDdk6Q5cd52sRoTFDtQ6ihbiMYjikP3+LcnTclbKJkmurbvwmnAnnpSAmgjYVJgXQ0thY2uMeXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRtr2uu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRtr2uu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A10C4AF1A
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724648153;
	bh=QnKYX7bMyyCQytBDJH66x+9hXUR3Jlc2kV2j2vToMtA=;
	h=To:Subject:From:Date:From;
	b=lRtr2uu8yTJP9tefVB0ODKVJRZq3cz058zUWmuC9NifnLs5vTzcEs06xHry1Y5Vb0
	 m/ZZjeMiJ0nhj5YaIG9tjauA0bqCSZc5z6KFgTj60HiT2SV62NFnOw87uCDET3g0vg
	 XbKKWYWaKyaz+Y0joTMct4m1JCHxm1O51cHeMsvJWr2AKAGFtcukkJMololKj8t5qe
	 iTzvo9xZBLjY1DvGSW0IWX2kuuVlXULqK2llFBnKS0Ms5Bf/GX0MPmY0epstKiueIl
	 1yabY9K61Rq3J+NdtQXMZU65MRRHX3dAZ0158P46JAPhaQvo+Ukc0OU21+tGqy/QKy
	 2jiFr+44AgoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9658CC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464815360.13159.15569049105556474725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e860199ea69dd2fb60e189108e8273d98c3d8de0e360c39cf312582347f6bf
Date: Mon, 26 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724648153
