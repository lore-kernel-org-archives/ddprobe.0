Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A02F18FC75
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742587194; cv=none; b=CIpl0mzJ4/3yThNEtpLNYx0O6S9c24hz7eBBbKw60rDvYdIqD+k7vVuzPUJJTmU1K8zx7xB8nbzrE6JhPeI2QrQYVkXT5NqSHq2oJwPS6bsh9LiOO+Jo3+L/sRtAWw/eQFQWrXATSPQSDpTGOyYNUqTyG4iE9BVtKwz1vcMy8SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742587194; c=relaxed/simple;
	bh=TISSwh3sVzOgdcAK29bGQPwlITyrikP5QNFYMhMqqJA=;
	h=To:Subject:From:Message-Id:Date; b=SS8o8X38X39rhlMRHzedcDiXtxyxZ2+FIv9Yvm/pbPYuec8HMgt9f5G/0KY0PcvzOtXjhEnCaqgjMq92gXJ5sNdJlgO5w168COfex5vJk1bKYxXsnFMbjZDZIvxq0VK/46KjlNWLiDMxnuqSI0MJ4iszxW3kANaYplMkksXEsGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWxxfaqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWxxfaqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB913C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742587193;
	bh=TISSwh3sVzOgdcAK29bGQPwlITyrikP5QNFYMhMqqJA=;
	h=To:Subject:From:Date:From;
	b=nWxxfaqjFcLEmTxyOgNNg4+x92e9WJZJ4RwOvZ0VtnbfsvYqzpCHSZimDgeflNBST
	 lZCXJZ5eD3Z4rAYkskq4pnKt4TKXajNGGWfeHkuOnKqikqR6OywBDGPh1NXLciMBXm
	 E4zsL7VPAs/4gi4PPUqx9s2+64XkZ8Oa6m+RHTOxYXYYpfaW7bhGy0+yl3CiRkmSJY
	 yogKZaCPyg4hpHKs23mHh16RJTCOX0BeDEw44kwnLhf7uU/HzW9EIITDu1FQDs9F6Z
	 hmFUZEcreLoh3MfiNwuAbFAPgF+XUV+eDEs0L3YeDLpPo692jWLg6pxp1M4eDRQr/J
	 pLQ6hKbdxDWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A597C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258719359.20880.1916698060161764538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7d60157931330a1f98315e0a3617706fe75b91e5774f903ae46e21c9c2a7f2c
Date: Fri, 21 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742587193
