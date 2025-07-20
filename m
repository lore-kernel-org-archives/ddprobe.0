Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E93216419
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753035594; cv=none; b=TXlKc8e3t59+tToIvuPF+CAx+51BmpiB7kF0vUwJPfEv+/AddTmPK51G3RwuNQO0sqqAUNN3+tQe6rLbWd++p25TTqC2OQn46/86GvStF2NssqiYwrx2LNILix/bLnh93alb1gwMZ7hIyKKdMbygbkjabXlfnAw9YeG0S17QWlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753035594; c=relaxed/simple;
	bh=1WmX2ga5PL02azU3XjS3M/QyZd7ZLQl+HiCNzVLFCY8=;
	h=To:Subject:From:Message-Id:Date; b=X9tGMustlXgVVx3GxGuN4uq+i/S+XVvr7+cGkTwWYChXD0WYyskECrbTwGNDrx7mdDUa892Hgq+Ki4Ku2n28yR7sLjgTjKrwFlxlt/NThAy4MbW/RqfhgyuGfjB3suyjMVIAiSxvjshKHVdqCEbERb3NYsPj9OdEk3BHmnG3R90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE7QipTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE7QipTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB89C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753035593;
	bh=1WmX2ga5PL02azU3XjS3M/QyZd7ZLQl+HiCNzVLFCY8=;
	h=To:Subject:From:Date:From;
	b=XE7QipTtU19tvECzANk8SZyFb6orJTQMy7xwycqptAgpy41x59pu1gX+d7xhf8d1E
	 8YS+e0vqVQZcVsqANX2KqJsGMteWHv/4lPuXBQeMRaIc5YMezgkui2qCpM1neo11s5
	 F2Mr2j0AT7xqJBW2HRSKR/ZKiIcs26S5anILIf3ed1sgPWMI1tX8ZCDFZ9skyQ2q7O
	 8o8ptKMvofGremq34q6Ltg29/Shmu/U2Tjkpsywlkn3uIwy8BHJmRDfYT9VrdstJ3r
	 mkksCV/qOZ/iSa2GovQ85+TYUtaxSz9btntTli/rjW8jyB6LRhnIpPIrF3YaSB2Ivk
	 k7Gyl8akv9ahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D9C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303559358.1122.16831624980628250952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c124e9651c80865fb3719c693f0b728238b3c01b00471f3812b69543b373a4b0
Date: Sun, 20 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753035593
