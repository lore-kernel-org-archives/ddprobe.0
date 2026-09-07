Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396372D5925
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788816634; cv=none; b=WZUFzFjNyl0YNAwI7JsSxmMjRMVeT/csWPeEGMrUV291dOBV3vNqsE0q+LeNwR2qKm1ALMMhMpfgt/oFc42Aa72TUyNyAZjAcxeOP4eKJ6ArZyuyrpGNiaOWNxsdNMcLtnwLzWfLlnZnChY9sIiBwK7i+B4SYeySBxWhDPOcIbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788816634; c=relaxed/simple;
	bh=y9dxVdGOuHBgq6NWwMMNXCndmbaTYKjsLVY0AedpJE4=;
	h=To:Subject:From:Message-Id:Date; b=WZ9pTYnS+2r2QUpo7hV56LG/xiG1iJpMMnQv7PS+ZnmdTB2ysJpk5qD7tbjLwT1rWjBtxLyt/MjVPCPzV4dh2dZuzzpMpMJ0vET0c3QMhQ0hEfyXDv/Ifn7sAjFo4zhdlk2ehX5Oi6UDhb+UN0ZZU+w1OeC/Py61/FRVlzyVFKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJuq0vZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJuq0vZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D471DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788816633;
	bh=y9dxVdGOuHBgq6NWwMMNXCndmbaTYKjsLVY0AedpJE4=;
	h=To:Subject:From:Date:From;
	b=rJuq0vZEReBWs07V6cUA5vpcZcyqxOT0BzN1noJTg0hCw/HHUxrdirnOlvP1GEvI9
	 xDwNffyq3A/9U0070cT0AX0bsyxptJr2YGbQA8ARAx6Y7Vs9Qi8Xdt69/ZVEoc5F0K
	 DdxYc6gpoxSl7TBCmtfXvtTYbI7TjtBIzemAjYhjuTM4aU0canxmHVkc5ADpYWudfk
	 mul0zZSsIlxK2tutrXV/CSUMe1dsfnI+R6yaISIQC5m69whcfvx77Lvrd09CBMeBv6
	 7zE+DbWEqWu2N4gnTSGI0b7RDUcsdhj/JXsUGcdLPKTn7LDEs8wqQqFrjOJSqG86wq
	 uxX8On3rtaDlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1454C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881663371.29808.11913510347847490441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bb10d95077fdb6c39a01147f4fb64106dcbeaef9748624078457bee5772223
Date: Mon, 07 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788816633
