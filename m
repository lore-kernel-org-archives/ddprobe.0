Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2406D81E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728070554; cv=none; b=ofnzcjW8nC7BX+HuXC5W6hfwQqxUHNU3GZmDfpWxoEEZYQEyzf98W/vh4uau7T4w2hakcv8Cs7bk+NGOQgLoIJCH4A8FxsrEj2wfjl8BVHsD9u+Dr6bzhzQTylviiTNxYGFlILFGf7BlNhfQxWCZSC8CyD3WhVigv01oOblZudY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728070554; c=relaxed/simple;
	bh=ipDOrZ1JjSuKRmfGZgNVYGWf/y731UjY4JbqSxSVa9w=;
	h=To:Subject:From:Message-Id:Date; b=FEsJbH3FmGJgYHQwWBwYvE3DBJzxMSWVKGlkHfQkcoTpoJqQUaAHUmqUW6a2Uc0GsemMcWq2STl3MNMM+iP/QVy6Dbj/vyFYDC5L51GkkKN8niPRIwpyxH6X0OvK3xbUelWlP+3cpYjSxjc2C23VcrfK3G1/BSlRBPEmnHtUMF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5f/9cRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5f/9cRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B350DC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728070553;
	bh=ipDOrZ1JjSuKRmfGZgNVYGWf/y731UjY4JbqSxSVa9w=;
	h=To:Subject:From:Date:From;
	b=R5f/9cRS0G6hsu6f6javiCaZQkT0ZTA5hjanI71VTEqE2/fuIDtezO+xQZxW0Ze5t
	 LSRoO6a+nsTtubaz4bw3otRX3Zipm4fD40Wt/fPV94rNkAeycxuhU7sC/f+yyRJgk4
	 APGPFSAgBQkVPzbVRZJhCQA3XqYGjhk1VE1jXLNRodMRsfS0hx+hynPlLaHKbSrNqP
	 OyQULxAEOj+nQjm1OQFnijL1XOkYzllPNCwtyYZFYSfCCpYvTxwh+yNS6ovA2uDsSR
	 6g+Gflgm1CSRpQnIV5a+aP2D/uJFZp4MPh2RJQQmK/uCWQEcZtJLcf/9+zXwjJGBQA
	 3th49ITnQQMVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9899CCF8857
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807055361.2853.836209817736688436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f3be6f2c954de4f5373a0372518a0c09c5020713375ac563df60fa364bf377
Date: Fri, 04 Oct 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728070553
