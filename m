Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C1513FEE
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723965954; cv=none; b=Ylukn/8dlO72LS1QadCYjUSF1LoXN7dC1tWYmVGpCExpY5B5zcg9QQ6ZwKj602j6ztPBt4BGZ0bNp720RiklmgURZP+eWRyfVDfdR0ziZLz4DrZwbVrnxUN7rDhD0dED3nFjxro3X2RPm6bkgLAmd5TV0i1pI06cLxOWkLrEARk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723965954; c=relaxed/simple;
	bh=Rjt7rOlunrzsFH1X8rNzO7b5dYeK8vv5qHz305k3WTI=;
	h=To:Subject:From:Message-Id:Date; b=YAUuJ68D2++Ld7jvOGb7roy7gjO4rFjOE6YqoXiRgxCb67Or1lnZ1/+1f3imy1GNxx0aXVHXVB7PMTJgEfwYv4qzak20Xq75v8x8s/TtjxKysE8VSmZtClEhHTVc/7t/Faszek7h5RSppqJqYxnUihxX7jYK1U4hGVrMXjVXmWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcW77V6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcW77V6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CF9C4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723965953;
	bh=Rjt7rOlunrzsFH1X8rNzO7b5dYeK8vv5qHz305k3WTI=;
	h=To:Subject:From:Date:From;
	b=JcW77V6wxgBIHYfCZ+3wOkWSQJg82Uhy/WDL8W8zqEsvHfv9X4NMvSL/w8e9U1YSe
	 fVzHacgf+956jvAvMa1Tn1mV+HnKxx+uw5+Udj9xmNC0uTwlGln21aYzMDdrLqQzpi
	 JXxigNBYLgTCbmyHI0JH24GcJbMiC0Zm5g7seoValgZH3JArPUZYU1Z2NeVEEEdzmf
	 uHg3R58i6LDZ80NMtjscGUwBG6NMBRmjry0wps8W+3CYX3i55LnRyh+glYK05QZE4c
	 p5YLfqCc3s1OyiZUhwMY6WP6aU3cyjwtiPRgxs9qtrzWLBB9lJg+dqhFk+oE4n102Z
	 ilutWeMsTTU5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0721C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172396595363.16226.6538468563273119816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a755835775fe40380098596604ee06e82c493724ad0dd975558c9dd4ef164d4
Date: Sun, 18 Aug 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723965953
