Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171ACA41
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762598994; cv=none; b=m6x/8xdRaIHe5e5hT2PUjZH6xpedLMrA+PWl3NBe+VSvPNc6m4I4Gi6JO88keMnscGUp2AgFqyyxqUNcb3bB1ecCiohEdfhk6JYM2QhFXUDViVxeOjURIDD4C4LuO9HUZP48CsIEKbjG5CSBuA7yebmK9KEYicDAiXhJpD3+t3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762598994; c=relaxed/simple;
	bh=1WdASnHO68b8Bf4BjiBKfqRo1SNAbY8CPMgd3JFTPgA=;
	h=To:Subject:From:Message-Id:Date; b=RLqMFSXjMc0XYeD2FwLgT88EvaDFuFhS54al70F357SDN4iVf2VCb4NJfKUrV1Yy8jqaw7P2mYwPG50Bn4ggcX0rtc+oA9UtpNjV6Rkotyh9f/7TUZf26Vxyi28ZwdSXZcFbVkT8KCi9YRy6rnzVzqB6rZxph4Y5lrgvcv6wLd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTaKCx9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTaKCx9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C627C116C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762598993;
	bh=1WdASnHO68b8Bf4BjiBKfqRo1SNAbY8CPMgd3JFTPgA=;
	h=To:Subject:From:Date:From;
	b=aTaKCx9ySneoQ1JmSMkzr/EAdwHvxZfVc3SZ4Q+FVPcdvCvfnYiBPXsTNuqCweh9s
	 m4Xw1/uD1qv0CmrB+jqy3koMsNAVV6FDK/6y6xIIx+DbQis92NpF0kglJ8E5bR1rPQ
	 HxjY7At8N54/VOPzmOVoIEsUnl2h9/dyZGhRTCgNuk+O8tF1p76IGzc+fmUJxeQryQ
	 539UvAFb8tKCkADUErXvUnIy7ttRgzmKCIyMVQdS1guzFKsAqkBtFThCt/RhKXZvB+
	 OuqLCDzLqx2nGGP1xw/nEbme7FwonxefsIx0kq51/HhRCTbjKGkUXmUuWCmGQzh2lj
	 qWuGAiO7KTi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFAACCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259899358.20695.15052294019445398161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72fd73b054846b469e3a04a3e05d81ee186e21cc9743dda153e09b1e2edde6e6
Date: Sat, 08 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762598993
