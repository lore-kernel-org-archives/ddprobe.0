Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE901D7995
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770813294; cv=none; b=bWhgcvhfd8YoDwcgRyRK/b2FNFffBEGWeldZsu3B2o9vilLmWzvn38ID0VzGsNKnfuZ8Wx85I0qtexK+pjXg8OcSPwEmI+3O15hLqv+52GkRXg6V+vp6ixIl3u9i1ZoHKj5znlxnfsWFpRy5LKZtfq/tVNE359aYBhs1eDrSZ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770813294; c=relaxed/simple;
	bh=8Z7r/Nh+sbhbfM+QgJ96YOTquGpNzOQmPfn3/sdcPQw=;
	h=To:Subject:From:Message-Id:Date; b=m9y4psPcG2Hcu2KPzuue3jy68iCAcpVuK/DRJy7rkjl2YzR9sxab8mU3Sl1XE7zc2juGHuneLaDhs7GGDEWLEgjTzP9C82V3uitI8MU4m9URzDucFThNFuhAp8xXHhBSoAeQwPejmAHeljkUOIer9P4aj/3fi+UUKiQFuoLng6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NncGiu4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NncGiu4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECEEEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770813294;
	bh=8Z7r/Nh+sbhbfM+QgJ96YOTquGpNzOQmPfn3/sdcPQw=;
	h=To:Subject:From:Date:From;
	b=NncGiu4lzcmeJoDZPvyDJ7w1ZnyZ0FCoJvuIWF1b3wAsL+H1PKohCowakTtjTq3h0
	 V7bQcOE0xZ69HTxBqgkquuH1qqcMl4wmfl6fxAI6U5/ldYqJoxU0UmTqJcVBaLyW/b
	 MOv6En3+E3YIU6jTReaoD+qby7HzRrXE++EONp0E8uvWwTCDUsgI9caSrkhTOECP3D
	 e1Lxfkvi2wpqv9vUMgo7G7DzR6i0algnEVDw8Lor6Y+Js/HkYvIDotARnysRQBzN+Z
	 QYFG80Y2jCLKy+ZGgoWAfcFFiMabl9XX3ztDujMAZVao4+2sztRcB2V95OvsAOa9Ak
	 GikSEHUn1jFhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD925E9E300
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081329382.10905.9568601504313562898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2ce62b8234ae1663d234d327e99c9d4ae05bd4d329a080bc0007b2265e0ea8
Date: Wed, 11 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770813293
