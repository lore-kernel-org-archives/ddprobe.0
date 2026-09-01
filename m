Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBA73D9527
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788268234; cv=none; b=uaufGvvVTGF0A4gv3Uyir+Qa5vUX8OdiVDZHKsV71vTHtaZKvMwGUSr7FOmOv9innFbt5LN9BaQKqEJS+DCq+P70IIvccw5tjw3EgV8hXxe/AqU1+kwRWSApvV5/lobIoutihErkHiGhFIK8OUExumo2Vb6CLyKhoE1tSbV5qd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788268234; c=relaxed/simple;
	bh=sg234ee1I1xyjswh7k3us9J4MmkSxVSbgVIeP2wkNik=;
	h=To:Subject:From:Message-Id:Date; b=LASxJFoKZPd8n/DfvXrdPhn+oO2Jh9gIOGWzaqop7o13k4j9aS5Q7XnUUepKpl+DbzxyhStGxguNthRRh7BTryV1KSjErKy2Zn1SuZVEvJr0XXE1raNHm/+f9Qi+RAisWH0NYUEzEiB4aFii99IbOukORDirLp6XwexKCGKExek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifvmCX3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifvmCX3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0030C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788268233;
	bh=sg234ee1I1xyjswh7k3us9J4MmkSxVSbgVIeP2wkNik=;
	h=To:Subject:From:Date:From;
	b=ifvmCX3/gWFWuQJx9BykK2idZVNlGk0x5uXL8OJSgG66Io6tEmyZEje+gLeayOJsh
	 UXIUnqias2NACyrROAZl9MDHe2chvcrdyeGxAM2rrTDaEbcVNLNejZiQCdZe9jf9BV
	 b2U1TeF2U2nXFt8Skgu1HXGNQBZREzFUQ6MaFU5IMgYPuwt5w/rK1c4lZG+1FmkIZ7
	 51pY6GkdBoXoJdbi8jC63EFKLyQgZHG3dJGCKfEcv/2D5ezR8kzpmcMnX+wRGUvGjr
	 irCkLcU9YJtAdJYtX9NabfeXXjmHCDr0hGxxF1k80NqrOI7P88mbdQj5bI3zdPhS08
	 BqDaI5ATNHGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB1DC624D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826823369.15185.5645625136877028611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 606019d303d70d9a2b50bf4cec615406de0cb1eedac3d72d50a28bb5ef09c44c
Date: Tue, 01 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788268233
