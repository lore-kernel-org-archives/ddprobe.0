Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A6A53373
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716211943; cv=none; b=lLYRHAcEl1wt+Tmuj7/EaZ3dp3rrnjI8pOUmkj5hb5MSDVcMJ3+ZSsmtDVxgEENWYhGgxK1wp/zJyfGd9LHkXc2LytWYdzI7BEwYfCXhWVMxw9SW0Sro+ubgtIh2tPerYbaMTvRHrA94OIOpI3Us3+6r+8bH3ayNTOvQOO6q2MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716211943; c=relaxed/simple;
	bh=kHodLiFofPw64ptcjQUsXwjxJ5Vj3dKnmL7Q0I+8RKM=;
	h=To:Subject:From:Message-Id:Date; b=Ku0reQL48N5XSKHBIyEsuVJrbCDXMTzyczueJzJ4J/yWYt2WNQvfq78jsIkikQmhcY5gejoMqLroV5yO1imoGHA0ssTNOs8g1n/4Dv3NR6FHojDQbcjRaTOmgCsL84Jw+af6FgSQthGm8T4duZWkU+y0UtAXK48M71tk6s1OWRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilIC/zU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilIC/zU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6356C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716211942;
	bh=kHodLiFofPw64ptcjQUsXwjxJ5Vj3dKnmL7Q0I+8RKM=;
	h=To:Subject:From:Date:From;
	b=ilIC/zU8faq1iIKovlfgspORNF1Oe9h/uzfQ4wNmBlN27RgdEe98IrR5JM6H7WflI
	 7ZyL3ITRVZdj/dbdKfDe7S4DqTF7pSvdOS7WYsH9eOAVKtTZ9z7fmKJzCEgJqKecH+
	 7gP5qEw6a/SkuvcGPIWM7qqfZ3EqADPAvpNEvRkOChiAajZZBs4SiLUSvxLi8jo+eN
	 HQl4BJdMXSYm2fybiOthcatvsp2fJr3YUBduYH+mqxEk7SFhsmKYwuWGI1QGWwxkyP
	 TPfIf4Y1+cx4K3My0NLsqVRgNIta21nFhV/EC9zId7l2kkR5Nr95IjRXvigxpoxlcA
	 tafCqDDM0kqsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1A2C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171621194281.21238.16764280998577981531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979ce53779ba246a42f4cdc14bd1052f09579cc71ed7de2d4b554bafa741ce91
Date: Mon, 20 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716211942
