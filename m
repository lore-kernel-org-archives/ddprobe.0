Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0631D5160
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775962654; cv=none; b=hyQ3l4ew5QAlQYTD2Z2q04lQINxZr/6/oTbZkDmwSJaMMqq+BiQBf7J4skx3dOkd6lLGgixP7E9dfwXIG5FV+glnNl2sot1F/Oy8PGPNsX2cI9m8IaEEAZibjW6t3tm2BIz6J4qCQFz6jCy3m2ek2RNi4ql9RR+7+K+0p6pTAgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775962654; c=relaxed/simple;
	bh=uEhRpMcR26vPooEh0KnM+DDSEAAKkCZp2ocbdbiBbmE=;
	h=To:Subject:From:Message-Id:Date; b=KB21eIihkTnNq0ZFRCr1cr/0M0KsdQz4eu1WpwLBjeZjOTuoN+CXe5RHUY11Dot0zV7zLN6fBkNaciVzMcXWWE7dusXG9d8YLscvtlyBX8eDYwEvxJruXwRAqBWQES8+F2YfvazHX97cZorsAYwf1vJLMnrRiUvFBXOkv9ubmMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRHObtVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRHObtVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE7EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775962653;
	bh=uEhRpMcR26vPooEh0KnM+DDSEAAKkCZp2ocbdbiBbmE=;
	h=To:Subject:From:Date:From;
	b=rRHObtVTJHAhDudBpV4lHrTKSEhuge43HHVvV6b/w64A7ci3T8f27qTOx7l/NXhPg
	 irqpHA0+cO3H4j/a0nDFPWvQXW89QOZPr3IqCLtgyY8fx1RFGtDC3tn44WA5++9LPI
	 STiKRo4I4bW8sV777B/Q0AAASvN5Zt1A6oGpZt/iodU1/DnW0BTUtybZ5JujilJd/a
	 JGoo31r6kVgOK8EKahFr+RoWttXawS9ShmEt8/x1gvEns7X38+SHUHrOVMyp2vc7Ka
	 A5f7rryFTImvyC7mDEJUuB0hmopKSz65wWbuUByExkdIoE9r0Vsv4b3UduBl/bfELF
	 Vj+IGgJWyDmyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBB6F3ED4A
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596265368.23676.18406393114236604948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd0bd62b4457939b2d5e484e67752a5474868f1f3129384474f001c76fd81d5
Date: Sun, 12 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775962653
