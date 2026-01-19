Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F6C30FC2A
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768821836; cv=none; b=K2ElzN3Dn/lkLYuNjl7n3HqdrFIPCC7MaUz6WznF30MqK8+g9SzG24pc5mphwYBD/tSQ8HLy9o+sWLFZeRzM1K40XoAdaLN+yngjoIvDMLQk0NJczxcFvwpW87gfF40qoplrXoxj3XsHMRBs8v49/kdYNipvfqZLnwJLFKB+iAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768821836; c=relaxed/simple;
	bh=zgHtM3GZFWXHqZAdabMLRXKllQCMCodulqpZngm1+Ps=;
	h=To:Subject:From:Message-Id:Date; b=gV715uwkpoSL9fUrSw9wGzf1FdY8Zd2hH/znQrW2RuIGHOvcBSi+Rh0nk9uq2supNaVvn/7plblj5A3YT+2OMHMg4ac1m0r8xNKWP2LZ6b6uU0PBEw8P1ztTh9WUs1U4BULy3NqlnrfOSY1DOSGglzMenxAAgjhGd78OlMAU50E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYpF+ZJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYpF+ZJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D880C19424
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768821833;
	bh=zgHtM3GZFWXHqZAdabMLRXKllQCMCodulqpZngm1+Ps=;
	h=To:Subject:From:Date:From;
	b=oYpF+ZJAbK4XZYcitY/h8TnQBSpgTAQ39tsjYvipbWk2YXltbsDx4iiD9d8W7xbYt
	 QbKTkF6cI+oqmQa2FyDSo/eJnlAXQdNCXC6AffsdK4JHj8kcNPBoa+SJen8RSZ9oTJ
	 6fkVzJCbtf+PKkndVIQ8jlo2rmhrTteyQul8Z1Ti61dGmDm6wUPJcRSLQssn6RdxO5
	 dIFGNl58QVgTZ2zd9s+z9DEkq2vNTzlkEylu+ovIw6Cd4CtriOwC4cO7ndXYES4FhE
	 UfoZxc9vxy9IwUba7wRG3X9kbTxONGPYq0BvgL+9si6L4U4PbE0BvOQjRJvP+eQoh+
	 0DirACmSRwrzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90352CCF2E8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882183358.11690.1714842053219898514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e9cc25f748e8afb3b8fba9264e135f4f8ec861b4ff9e2c207d452d542986e9
Date: Mon, 19 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768821833
