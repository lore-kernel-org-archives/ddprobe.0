Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B41481DD
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785046834; cv=none; b=tlAs9h5cT5pxQeEW13BBDCv2cMOibN8yd0eGOlnX0+LAOGQsqK6LhUziVBMpPEcCRbkzhJvoGUjOS83l5T0smuV0THpFXgFJM9RDZFiy2nSL/OZDF8iutCU2Z/epnDoJq4OAhGZF2ro+7GxzNIyuc3n4VmiBQ9KTsAK5BO4+cHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785046834; c=relaxed/simple;
	bh=FXxm9u9g4l/7sKqfV4FFelldAwruPvWZDQmxYDfkHEc=;
	h=To:Subject:From:Message-Id:Date; b=md5XUNJPeaPpJxk7NAHPj1bbwhCke0O8q91xmewHLwRmGdaJLgQcNRsUjV4K/WlVPUsnX3NWQY4ktfPxaxpcjdvhVtQUMp/GDn+aL2uoADkNH/FDhmA/f48PQ1as5OcZfEaqX8GkCuAc21Vy9KlT/06H6gohxAu3ZnVvQySWz6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+UT2APP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+UT2APP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8A9C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785046833;
	bh=FXxm9u9g4l/7sKqfV4FFelldAwruPvWZDQmxYDfkHEc=;
	h=To:Subject:From:Date:From;
	b=m+UT2APPcsoQq3TKl4bJ4MI7Z1C8hod34PVgvl03hh0hFZCsr7L51kHu0VOkxOnaf
	 DclchlLeIZ71DRqyUx0bVmiRV2UZ+XBBEXdf3WkKrflJ0VddWDzV2ED09eokZj6VdU
	 mvfA+KFnRkBH+Oy9Ja6IpDf93SWHB421kb5nvvp46knDkak3O9yVKHPyD7LtNaYm7c
	 oydzTpb35UavL7Y1Wp/diIE9bMCLXvvLPKjkgz81tzJVW6mOQHkVKjAyS4mEZXxqUh
	 YPqTy5W27LU6H1ZOX2rjRCBZHxLKIuOhRdbCi4BHRMhprYLbjbWpTCWXOgom2NkP4w
	 VMXrSQfB80SNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD462C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178504683368.28162.17001804350662503770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7c1d54e832b68ae3a262bf64bfb2a53bd2b5da65d3fdbf0ff454383bbc7ec5
Date: Sun, 26 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785046833
