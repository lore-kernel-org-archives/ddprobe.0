Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7C01527A4
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717616843; cv=none; b=QDlbmiU6TwG58gZOY7a4L2oKjCLsTGk6Cp/8aZuPl8gQ/+/NsdvuGtMVdKyp6rlcvfJYRCnCuPYqIOFSv2GBmknq5067z+/97Iyp6WQVASy+K8AU3wde51Vkqwkhttc/P9GyIUVX2RF68EalUPWYjw9QIHqIyL4TTCpJ3HG9CV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717616843; c=relaxed/simple;
	bh=m1FfRC/U4g2rwnvchholSbOcxPgssjZ6XyVWYINhsLI=;
	h=To:Subject:From:Message-Id:Date; b=s56rZqs0t0YhUpT/Y3WWWGidCHhRkAFGw1DiUXVmuttFcWk7Aatxf1YgUHmz7MDIc3jyBm7t/gmVHH1tcZ7yT0qAG8C3bke6e6kTG9ZUQkAOBbvbfLyVyTGeoL+QHvxRrwBbiU7O4wnAEghHNjWig97q6wkX/075Vy8i0z1OUFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi4khfwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi4khfwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05FBC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717616842;
	bh=m1FfRC/U4g2rwnvchholSbOcxPgssjZ6XyVWYINhsLI=;
	h=To:Subject:From:Date:From;
	b=Oi4khfwaNiPMw6o/HIIyAxlfbEZa7PdZzx6HJ9H/nOlgpVRZfKJ8fSn0e1UDTkpIW
	 cpEBk10I/e/1q5m6117VWVLegHnaM3QXcJU/rqq6kvBqFwFJMRp2N9ucnHwUiBMLpq
	 juij7px981UUNr2emf6lHOgVbSC/ycktNuhwr1LTzSZVxmu4ulPqoW2NhB9eZh+SP5
	 Mq4ouyQQhKNlTerd1pQvR5gz26nAYQYG+8jm/qrmCJALRp8/BhfTQE9TwSUKcz8vQj
	 s1tQ+GT1Fuuslutwh+BCRrwH3BlA5yPEZvUhU2kxNb+wPKm0xsf8eaOOg++Mzb4A1/
	 qUPVpv53viHaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDA54C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761684283.18018.615373564812230611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf0eae4877f365eea2adae681c0f9461ef0a234fe57483bca07bbcb1bf094b8
Date: Wed, 05 Jun 2024 19:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717616842
