Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1623B605
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754479194; cv=none; b=VliSVHui1h0joUwCvOgAd9P+/BX28rz0zW6PDlvaQxjB94HXZhpzAT0ma3t5RBfGD8kLNwe2QepPNDp5AronCBef1c9oZ9Sh7z3b9VldO3VeqAg+x9ROOpWhuK1CFEFW59P1Aj2FCQgvXRMaA+od0U7nOiO/ATWXdA7MLgHROt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754479194; c=relaxed/simple;
	bh=TlqHor8BOaMpBJYi1ArbA9QRz4UaDpLIJtvS9sIvWJE=;
	h=To:Subject:From:Message-Id:Date; b=LsGO+r+FFbex/EMH1RvuZYy+W38DlssOg7gN22v28ubv2Y5eSI1r/HSPQl/C0ZIFzXL7eHcelWTMrYC4XA91fc8XTk5bU3ymGuaPUv8mbHMF4973LzyLk30n3wvzl5l/gsg9BfwEII+HnzWUWKNH3zIXNkIzI05aTbxJH1qQ/Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMCN1hrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMCN1hrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754479193;
	bh=TlqHor8BOaMpBJYi1ArbA9QRz4UaDpLIJtvS9sIvWJE=;
	h=To:Subject:From:Date:From;
	b=oMCN1hrXb7ogPW6/MevwWx99LZ76V1uP5xMdMuvMNTno+UGGKhkpJgINgji6HcGGv
	 DpTWvox0DHmEKevb4kpKmDHy2dv7n4QlD+0aZMRr9yPsNNruCgdk5hpz7obLfBqIJ6
	 Y3mCneaj2IYvZkMgTS3OSWX9ix+qhwyU2/z5D7PJ8QOY4LP9AYPhQNGgAx0j92HuhA
	 xnHF0fNk8s5LvyVKq0T1wOPgYf2eb+mAnThdDGPhLHOgAJcCre1jv/BM9XXxNJLMJd
	 4HD/4rcvCHL6alYktmlEzurl9LVHi6vQySgK1cYeTyyajHoHtu/W2uOwsL11rUG2Mp
	 XMoz9qdVaZJXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F589C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447919357.19355.9693496493113662586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42590d25b523ade56a5e5df9335da0deef1776fa312560ebd425eb90cf8e276a
Date: Wed, 06 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754479193
