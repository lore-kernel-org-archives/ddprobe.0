Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F750239E60
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782092194; cv=none; b=NSLdOsvLPP1UoImQwJyZGNl36SRG4QuFtAFT/Q6ENO5QJPi4sIK9iooobXsO2TJcqK4FeSTKmfuwtIFA1cuwuGly9+GJQXnDPfHtwuBvVacAJaeweb41jVeDMQGpSFTvcRWxk9G02VCKsj0oo2/mF/bVFa5IPEl9n1qyrpMg8c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782092194; c=relaxed/simple;
	bh=DUffJ2RalJL1kQkH1HakVhn2KlcHH3SinxoSGM25fF4=;
	h=To:Subject:From:Message-Id:Date; b=hqOn7WC6xXPq+SxC6D6KByzQ0oKYdYNDOZ25TcmXHDWJRG0gziT8071UTW16ZDUoD7fxPUXRausyp+w3R71OjbFhc/5uww8bdpAhlVWwyuV5Ql3BHyOkDHL8VX1Rgs4qBqI/O8X26ufG9ATYd7bKA78Ak+RFbIRid6g7bqAagI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQH+hjXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQH+hjXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE15BC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782092193;
	bh=DUffJ2RalJL1kQkH1HakVhn2KlcHH3SinxoSGM25fF4=;
	h=To:Subject:From:Date:From;
	b=HQH+hjXXzj7L/XnMNX7+YZ+IxPV9VJWVzG27koBNzHddbxVXBAllb7vbbEYM0Ud7l
	 UEZO28rdS+BizzWUb8yoKdRlL7wCFuXbJdMoJfqsL5U5MspJdpFvlMuoPIfoj2dIxL
	 JYxRMyVEd7gpb7zJb3HsD7CNFzmUs1CKWdgjcCc3eMVkGyAq8XC8yI8WGwMZcUNp1u
	 70vJYtT4RtOIt6su+b7tgSZt9mGZbkLJiL4tWu4cGq/Ea8ua71lkS24pH+Yuai0L4N
	 6s1BApCgqlPXp+y9queOxUlObmGyOIsrqDvF2MFAIES5R8HPNplwiSnLiyAGQWm6qk
	 EVb+JIm1kKtZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB39ECD98F0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209219371.4606.4972027270147959280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae592d79909dfab55965deda792d6fa5b888bd848c000b0174b338a7879ba2a
Date: Mon, 22 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782092193
