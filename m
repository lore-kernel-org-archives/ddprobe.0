Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A7418EFDE
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738146354; cv=none; b=Nbh1fg/PuRPL8ElDrLBLGs56yJZd6ZUzalNs3ZSs8QZapIyLQM8k3WOE6RllH8YeXJMNagJfvrOheunR+E6dFbGVz1/f0/+HlVg3DhkU9mjEjccZL820l6xEIcu8Tahp0GCxrWMhfEWb4njssmg7nSFEUfME6iMYLpgZ6BtI028=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738146354; c=relaxed/simple;
	bh=tawj4eoPEFdhOCgL/TJ60ryTNf2EvLlMjgHrTUE6aIA=;
	h=To:Subject:From:Message-Id:Date; b=QG7NWZsfdNFVH7k70FvgCHGl6SwNc9aEqjHK6y5QxJGrWBvg4qQjgT5EHtQpMXdKtcW6tVvIxMdmIyLPtUBBlI/6FciMB7B+fkDVFhaFBxQ3Pgg7m704BfErjAGzmlLTKjiSP0aISrtjcpL6XfLKfCh6Kgxh8A5GcbzcCUNsj3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZdC2XYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZdC2XYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E21C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738146353;
	bh=tawj4eoPEFdhOCgL/TJ60ryTNf2EvLlMjgHrTUE6aIA=;
	h=To:Subject:From:Date:From;
	b=MZdC2XYNvSLfVDCb1pb+apk1PMXmTXvEM2skX1YNRv+cAgTdd3zlTPEpoTbx23O3U
	 zufBaB4/l1bsC5TnUX1qvyBSsQgqTDEa+fqEpxOF1e5CNwHC/9PC5NXQlbgjlWmIgB
	 pNJ7e7FsDZZ5z92VqYKLy/Eft9qHjt1gML1pLy1+HH2WO/7TRwidpMxssrzS90KcuJ
	 RH6lBij4CWRvXLfgWr1Z+YxMwpjBKqODPMDexq7P9o0scrvrYEWQ+dnWGt8imlLHc5
	 /07mWuLIXNQdnRxp86RN2GGkZpyvACfVL3PU2rmkMO2X/qSmwCz8/ktGO79BzGyGa3
	 PpTN/N44anr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BF4C0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814635358.9111.3287785130058351394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806b4f5a8614ee4e61ba46c81361b85bb092494f657394ce9836c1b97f052e91
Date: Wed, 29 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738146353
