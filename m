Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A6A1BC58
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743215394; cv=none; b=HTGithqEI1o/tJJlXW+njtY3nyU8iFmwnXV1+PlTM74SVRPM7tzTPZ3zlY9cI+ktXuWC3OGbuy92COKh+z3VA8LKYiFAt8O8tokIU+L9rILw/G9CJn/U/c7mrlKvXaSrKCCp6gNOFxadkCOsVeJVsqYtA4v1XehA5En0HwsNKE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743215394; c=relaxed/simple;
	bh=6HSqZzAD2rryjtQSIpbwoJ/j5z+V2hntFoS1HnxVdCA=;
	h=To:Subject:From:Message-Id:Date; b=BwYl+7YM7N1YUDWNL1PRxNnWce2jcb8vafDa/48r26nS9VlmdyoOaHK74bcFjGDrflko+c+bVe1vjBhgh8evUYQVBgJZ1+EJIG1bmzV6l2oAXsEB7lN925swWXoQsR+4wZS2xHcmBA9iSdoRzKW7P4WVEhQBU7oclqjuSvjDmh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsrB4p0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsrB4p0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F7EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743215393;
	bh=6HSqZzAD2rryjtQSIpbwoJ/j5z+V2hntFoS1HnxVdCA=;
	h=To:Subject:From:Date:From;
	b=gsrB4p0vNQq8rGddidZCFCGMND6qIrw4TWEROMT7rLZYZEkD6QfwECVDoRD+qz0kD
	 5Af3OFTkUyskPxwRWw+Us0tIotG4wEq6KphzMmhowxtYYuY8+MaTN17sd98BI3pomG
	 wtudJaIOaHb3f7/e8MLhoThAlhdf6u4wjc/anAhTS6MuTWpZi3NrSRe/auhpjXjvfL
	 hSFDT+gyZr1YA/LjgWP5Soipyeo2DdVi/HXBkBW1hIEOFxQiFHb60iDMQXpRoTnpgb
	 UipHED9X3OIafX8ts3kvT+Ni+7PlIv2L256HYSL7dQe399kBnjbxsx2CQRbNMlmxjP
	 Yc2BBBNQ+oslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3924C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321539363.21634.4777104731134188502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931843243b86ef671e14209ab42884afc086fd705e1e7004ca030b8466debb1f
Date: Sat, 29 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743215393
