Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1959715B13B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726505754; cv=none; b=ErJdfhi6lSe4JZRuLD/ng+nI8WJLVbBe3YUagNjkQA6FH3GalCKDzXH3aTXNRwB+fT++NuIOnyT1Qk6M9eLpJmq9l+Ydi/AwQzI22QYD/HbzXPZCI7q2Y1MhhxW3ZcVCHZjOKpFXB73QsBZUeXOp2ChvGuFzibTLPDlSXzcq4Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726505754; c=relaxed/simple;
	bh=fal1cZTNmjwQJZcZgq3AxQ73NyZ3S4jFD+UC7Ci8iBk=;
	h=To:Subject:From:Message-Id:Date; b=uceOmbglktn69QrX0aokY+QoqRdtmmN9ghXt+BIyoVTdwUAriylj80XkghuP1CPR/bSdA/IywFzaCnMK/fNKr+n5N2yLVfKzl1j9MB60OVccCNOVvGBWfCKZdzg9y3aLp8rJLmzinE8CT6r9DtzPcJfXHA+y/czlFT9aqQTMZ+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fqjz3cSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fqjz3cSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6B4C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726505753;
	bh=fal1cZTNmjwQJZcZgq3AxQ73NyZ3S4jFD+UC7Ci8iBk=;
	h=To:Subject:From:Date:From;
	b=Fqjz3cSCfWEimwyf63ya9xv0LRLucvkMYS2WWCjPo6p+AxIyUTi54o8RQmP990Vca
	 d+kSoKeXevTZtGf4nIkpsyK2bDgj4e+6GQhdZfhnj0Hi1uDD6XZd5KAlTFjP5SVamS
	 9dKvaKJXIuZt+SJ4YZHfO5vzoyzOxD+UTx7B9adOpCmYMRTYViETFN8CDIXzG7WE+E
	 hWBeLCTQV4Oj2VEXPdnaTV6iRelHNZkex6dKJYZ1yq0ODWEflzhBDQhUiHzNs5ATaJ
	 qe/IB2buYb4mwFqrlW+Is+GjUSObVQXVwjXYG4FBNbzPZJJx/aPmWuGZQ6kQMwej+/
	 98kkw6OEAuhyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4531C3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172650575358.10733.1437310884279439079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813c055a95de3a7a2eb1bca57a0ef4e4dbaf970e80146ee0f302ecefb0f927cf
Date: Mon, 16 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726505753
