Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C29175A5
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772785494; cv=none; b=nv/zmY+YhvMQQZPvEF369x0GFnTeI3YUb31/FfrCXOvdtSbikKH2OuiRRmb5nXJ+hjjDLnK6EemfQhkq0gPtU2QG4J1NHyXLaWYLGAo+iK0sy3sLShTjXC+bFeJ2YmtQ6JUNiK07kYbk1zMeJ9xSOq3dwujwmIrhjGO9O7iFNhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772785494; c=relaxed/simple;
	bh=Bi676OnJzOJzbIOXxZ3A8/Qy3S/JBkcV99cBkOGYHwg=;
	h=To:Subject:From:Message-Id:Date; b=gJFeSdXgKamRAS7esvkaarXEvIOTG9Rvy4+fym+lpps2vmj9ceBCJs08f7Ut3cd/XX2XNh7MVgrvq6k8/FlAsajAE7SML9/aag/QCY525pvdeqywRDxfVWmGspFFLiyw3rFc/TqIR+g4VVE0uPtNg9u4G9pZjc/w2HQLfDTn13c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmGvW5D/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmGvW5D/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5254C19425
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772785493;
	bh=Bi676OnJzOJzbIOXxZ3A8/Qy3S/JBkcV99cBkOGYHwg=;
	h=To:Subject:From:Date:From;
	b=CmGvW5D/WXovV+m7RHsh2Y3MTrazbmzBe8LyGrRlPlZI4TFEuyXJFw30YrH3o286M
	 n6KcqX2BRt2M6c4XDtN8fqdNLA/ZIsqe894/oP6F8yPwqw8EP3LsMcfbVCZC65PGro
	 dL1omAy7Uegp2c03U/II+yZQmWJOaW6jE9heBb/kLJVp7wqny6SwCci8kblPhmG07m
	 Injf+sZ9YslgMbVLvQarcs0GGoJnKlA8F7LiInINx1txTWusGrcqHE34760ab06wlL
	 PZAbd0jHbRwcN4C0SMWpi/dCo+FbJK5z2F3c13yDfncdmgfEMGkgeQx+lR5hf7qRbw
	 9c7XO+yvHHh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90497F01804
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278549358.10421.688937268124731488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4205a27b5fd9e97805fedaa3357fd0e37b3abfcae8d66eaa67ecf576c53ce33
Date: Fri, 06 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772785493
