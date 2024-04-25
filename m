Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612FAAD2D
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 02:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714012883; cv=none; b=nsEzCy/3kOWonT7h3sezSd4VgPpQyFd2Ry8A4k9VmO+MnqHUHfNLT1FFXuEz4cmuMpcOFPe/LvGF3c9x65W++g95qb07cw47Um3F+/Zc8qcg/yWiQkROVIzrkLRUlPPIJDqHTn+crBYObsxn2q/D3Zlb3TgfKs+xQhxAAoz4xHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714012883; c=relaxed/simple;
	bh=GYMKRi5BO/+E0AMAVOXZyuN+mWSJIQwDOVxmvCP4Jos=;
	h=To:Subject:From:Message-Id:Date; b=QxFc5FKRi7jDc8YtQTkkwUV56+FFnGLBAp22P4xXZtkxvkqmdf/hkzfhdRqWWt1kplOYp9hrJhJzkVrp2nLDVZe7LMEfRDceUezJcN3wQdVmYetbUWlWoXU7kBaLD3kuPN2WBqk45up3FF34RaYI3IOZkrSn+4d/kQ/P2oin+Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3fbqxfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3fbqxfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A22C113CD
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 02:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714012882;
	bh=GYMKRi5BO/+E0AMAVOXZyuN+mWSJIQwDOVxmvCP4Jos=;
	h=To:Subject:From:Date:From;
	b=j3fbqxfnfQHoVq8A8fyX8NzFolP7aO6nJogspLv4/WsiqKTA5NTeD46wQnq9CPJiB
	 gjKY8ZRnlXm6gZYrUtzhShh6AfPWs2lCBxT99fI/30k6mVPHAaGX9yHxA9zihDeW2h
	 z2kcN843IxLz5iuz33dpw9KrZW86hsIKfvwyDT0U1UEihS9024cI5V4Cm9g1jKGm2B
	 /+i2ZqWcj8zXmHXoud3O/vF1AOY21juQZdV0gWiFnZyXQ3AwErN69WQSjh3bWP9Y7x
	 hsRwFZFxH3bW1Xm1mVMiouczUgviHMnyWBg0CAsc2MhFGHq7h29JFgFWw9wGX0D8zM
	 /mxa7/3otVw/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDCECC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 02:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171401288280.1349.16281766051380148677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31a64167a458ab8bf97611fc4c9ec5eca6379d77505bd2dfeeff0ea9103f07a
Date: Thu, 25 Apr 2024 02:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714012882
