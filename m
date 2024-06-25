Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5814AD2B
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719320003; cv=none; b=srqg4LkBW5ZK1AACzyXBedsEV4kU6buR/K4drP4OvBucR52HvMRW/17F3A71uWsE+K/gYzm0/0V2n11cohHxSTvm0afLQ7UflyD8fXnKi7B/x+GFVqqo0JyFj5k8G4KL/yIE0EmoEllHQZrvFr2R9khYpvCF8p59CVYBsjH2Kt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719320003; c=relaxed/simple;
	bh=eR4Q2BGrk2j/vcFjUbIK58k/wUEbscDOmB345IPZ1rg=;
	h=To:Subject:From:Message-Id:Date; b=Ntk67yOtXTnQQsPovX0Qk1pqCi43GyLUFz49yULeSufxSl5bt1CNhGNLccJMRP4GhaNzpvPa7NiacC6I8U/lQhCQcHut91WSJgG7d3LajL3hQEeJlJntto0ViZNQo8IBVh3EOFmTgRhBZZ9jaFV60JkIF77rhbBnUIElWvRFEiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjJZw1hR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjJZw1hR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D574CC4AF07
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719320002;
	bh=eR4Q2BGrk2j/vcFjUbIK58k/wUEbscDOmB345IPZ1rg=;
	h=To:Subject:From:Date:From;
	b=jjJZw1hRBgnquSEoCKMdwAi236X0kF74y2UKdJjX00tVD6umZm7hUdKigUPdFn2vH
	 GkNsouGVabdXNkvkKHg71NQkGEBom//C2HxGMJThxYs1F4Ep1VTHJqy5YlHUvvWlFI
	 wn49jqKKsUZxhv6KRYyMJEu9drRB4HHCEdljOeV0xpIrQ9yzzatn84OYOLNhDlM1GJ
	 EecsmehXPTG+nSm9txfHczIZtJlMBFdIQztZaJMdTtU2nnkAA3LQksXkiXG4g86awM
	 D8TsR0w7TK6iODoj6YcpYkNL5pDXs8sEdBvYa41GDRFEUZpGMvQ69j3SsZ0a+nM9/1
	 k9uqIJy8pwNJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5ACC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 12:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932000277.29316.15663887710859399814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abdbf369e1c594dd945769f132046c3a2ffac5999f9297c4bbd3a0711d699f1
Date: Tue, 25 Jun 2024 12:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719320002
