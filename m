Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064E528CF5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766184834; cv=none; b=OzJutqL63nziZaqHBs3es3+fkjY004rD+HJLfRf5DcTCidzG+gVDAmux/3DTp0hPegyooJ7UeXlDDxgL3Z+QBhXkE4MGmp2sJ2avG8r7CGFCw9VzleU67hmQPHe0UyGtcRcGVNAYReYY0U0/sfjyBz3/z7IYWSWzkJ3h9IdGUUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766184834; c=relaxed/simple;
	bh=QTSjqDQl1fT94pjsikIyzRv8gTe5HaVnQwg4EGj6lC4=;
	h=To:Subject:From:Message-Id:Date; b=X0tEzxBEwksrAA+aRLftg5NJzCIDpLD9TFSkZQ5ShiymQ1qmUaJXIXktA0lV25S2nHXUXmdguuHF7YrQdvWZYLgf6PPsbm99M+uREwHf8AtTJeGuLwdZYq/E818g/xNN5yo1r/jZvoFDQ7suGndyF0zVCv/Wy05tIIzduswv6mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKlfD0BS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKlfD0BS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F97FC116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766184833;
	bh=QTSjqDQl1fT94pjsikIyzRv8gTe5HaVnQwg4EGj6lC4=;
	h=To:Subject:From:Date:From;
	b=JKlfD0BSHngnzRq6vdFa60JxgcADwxKD1gGbt9SsUowD8JhEKXEkhkarOIhOOCI0m
	 3pPjzxbWbiOoOh5SpN72YOZmzBcPevDRdQSZjVL3ykMwE6PW6Mo/shgBtbx/j9h+UN
	 XHDQTMtdiCi410VWeSloeh040ADR3/YZ6nDTHb8LMIskIv+RQVgDpTpUvT+gtp7q6/
	 el75/rzVcGeKUKO4Pe111SB3znuswlHrEKnATLsZM6U1nS4SYgZhRBE55UuNxhencH
	 z9l3mKBGuy+Q281A/g1PUX2pesc9c2IN8D/vUmEMRZ1E2E7L3IUHq9nj8jaUrLY1F6
	 H5zqZiM5l7riA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90073E66891
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618483358.28765.18058260346542719054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de3629ca8aca0e4795bb82f6c3438545c36868018730a0300043254ce40d497
Date: Fri, 19 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766184833
