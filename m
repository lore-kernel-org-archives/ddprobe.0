Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6791B78F3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776482254; cv=none; b=UkxjpUzqrwwisNMXPKSTQmU9v89ok+ssEeXkG1f6EXQYKL1fL1Od7j7dL3xG79wCMzM7bWuQZrR+0h2W3WbITQgH/MPlZtYPmIe45Khm+UbVOSE05iMzecKSf55EJeJGvSTkae2SxllpRqgJS1rmB/nOGuq9P3ySPT1YMTbI0V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776482254; c=relaxed/simple;
	bh=gxIP8hDqizGRwn9Y8QYzvGPFFz6TuJaiO+n0xgvvNGA=;
	h=To:Subject:From:Message-Id:Date; b=IYO1Z87RfbLnrgUJgzEu8oB9sASHprl/vQIw7eoBMaLbXi3csxuVtehGpV4MyjGcrXHUm9g8EuEfpGxI/uXlNKqxdY8ySmNXZq41nzOFfljDKvEXgSU/6JwHBLSv56V1zg1EGoLjGJ5O80RmCoHfn03GU8x6ZLAKCRKUVDMHKTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmiwO7Xk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmiwO7Xk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2136C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776482253;
	bh=gxIP8hDqizGRwn9Y8QYzvGPFFz6TuJaiO+n0xgvvNGA=;
	h=To:Subject:From:Date:From;
	b=pmiwO7XkWaMjqNp0eKG7RxlodtimW5DouMps4byI6r1OvPfL4vZ2RUyV7zUzkSthz
	 z94dTkTrmwY8sJP3qiKGpjRGZ/f/uevNLoJLOQh9qXJmThrX6XwZZH08p7va83KK0W
	 QnTvU9puFkUAtZ4dhl0/IWCHfMmzEJ+oPtV02NFKPB1+gWASG/og8Rkxfo33x6Y/R4
	 6x9Re/Qr/rW8DrU+go+5aU52AsZpzYqNWEl4z8S345kHaJqngyEga9K73DEpb1uIST
	 owS8lK6jT2gcYhT5Gw4YAC5p5dmNf+e5shkzDuvHeu8kYKGp/MR+c0sJ8rpihO6IJ6
	 wDH2kZuTlRfow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B017AF99C74
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177648225368.1059.11413997803054718865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14bba55a3f0470b4a4bf84363aa50c793788052ff928ef52910af9c9165a8b6
Date: Sat, 18 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776482253
