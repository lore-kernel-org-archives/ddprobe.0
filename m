Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE4638DD3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782867514; cv=none; b=mAkf9M7E8COXW62eFKRD+7Tv943UdOpmhvc2QOPKEkDWJhXfpXnA6gLGgIhq0eyQewgjaQXsusZ68gC6kEh+7mBVrE/KXOCELpXdsiMGRmvtXj3gwleFDC1zrQzrA041sWSle4MaMoTYmATuvVdxkps/xkDUN8UTuYOJ28wKABo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782867514; c=relaxed/simple;
	bh=JiuHSJVnXTzn1tvvwCzTDLia8qHcSAAmOiZMQVsqZmY=;
	h=To:Subject:From:Message-Id:Date; b=kmxqzCL7/QbgvhbpMy18vaIgdbkOnA7ktElqCrwvi3XdwjQlsW8w0jDLNg8t9mYKXZ2ll6DeTKv1gA6QdcJg8H60wRX8Ads4moAF43fnjKhUBCtXYqCn0Smw6tuduDIGBA6H+MwR3bX4s2F95q226eG5CIuhWrA1ylGvvvXcHFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK7OFJRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK7OFJRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5537C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782867513;
	bh=JiuHSJVnXTzn1tvvwCzTDLia8qHcSAAmOiZMQVsqZmY=;
	h=To:Subject:From:Date:From;
	b=LK7OFJRvJ95uBq4BBG50RP2+pX/tpzPfW4jJD4SHO0HPFVr78/EpbtLeGjcknoqhe
	 3Vs7Ze6KPlmmfn7Lk5jKCO3OQ2GRXFzXws5BIhvNVZVfMBSLSv6Robhekfq3jVXuf7
	 2UU3Zlx9GekB+CdRXwFNyLIGsyGwSS0Xyfs36OnorQfCrjW35D2VN092eoB69rHxQb
	 SFLgkCmgiu62vfOuYUKYdFQE7C8P3oLR2hWRiwYqlS2m4qGTbzJXsTfFFBnBEVLPob
	 e4LvXkObp6s8+RaxwIunWIpAvuyJncovi1UW2Y+9DsciDKK+Uq9w3xBffYSLHQvlPr
	 f3pCRpDWksKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF864C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286751368.14743.17970356945886702873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1872ad6c7d3dffbd0b406be6bcc5e2489c48c8ff80b351626973b802534aedb2
Date: Wed, 01 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782867513
