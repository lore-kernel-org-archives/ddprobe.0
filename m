Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCA23D297
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776175054; cv=none; b=IrqZ7DAgluC2tLqHm3mhs839wysJvm6Xymxx4TxIZcoijbVMRhBYhqPanfDr3K8DsIytIoJ2EujJlbz6PBqXTaDdWN5WwDi7Ue6MVM+OxMv7/911n8seeVX+Cg+bLktgXnwJrWrgw6cs8VlVunTF6EQezU+3RBqIfrXTZJhM+Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776175054; c=relaxed/simple;
	bh=TwvIW+JT1tuVWZA1mrgvlDMs1XMiwAU26Gqk0T8Kcwo=;
	h=To:Subject:From:Message-Id:Date; b=vBAf5RPLiSFuy0cdLGJ111nA1eEpE3+mnyCaeQeb+Eu4yrCahGQ4bbngBZwihHlVADn7Hg3XpJ7EccAln/aUQOzyh3sj8zXKCGLLrQ9sDlNp341qtRDLQC2zwHJRcwVQ2TN8Ny3tiG01NUw+WmtegUoMmhmMlxGd7t0UZ8J1Xys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2Czpc4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2Czpc4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FCDC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776175053;
	bh=TwvIW+JT1tuVWZA1mrgvlDMs1XMiwAU26Gqk0T8Kcwo=;
	h=To:Subject:From:Date:From;
	b=B2Czpc4XI5WeyTRsQeS9Vp3Wm0EY54tXhCwQV25COY0cGPELDF8BziE5SlZ5rxXaV
	 4GXcqsH3FjZJKfMs7WA+gFhUJ2whwKwYCWpjshRfElAVqd7mtnXgrkndfDsTgiJGak
	 BSTfn/50nbFaOpg0XhZA8vbEMGV3e/Yhaktgk9G9zEMHeH+JlKrWoly7mxJiqbq4q4
	 oqXhaK4PGMWWronGIMuQHw+xAlMX/tgpvG4VfLMXnEksmkX7AUJ3mfprCPY2sgZnNE
	 zWyHirg7ZCxB17fxeqQHxXNrG/0kXpXFsVvjQ/KAzldcHfyK+AmT+ooMSSoEp30hyc
	 8fazzV/jZJGmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B4F9D0D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617505368.24439.971596942692320737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25295f801a87371066245f98340c8d132da11da5619b8f7956b2d30bf01617ab
Date: Tue, 14 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776175053
