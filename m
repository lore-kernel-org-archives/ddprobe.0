Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04F42032D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693633; cv=none; b=GT/vlf92Aek7IzySbwiVCqCp1XMDVd/th81ckQBjIOvGeHYNYDWJLnNiL62f8SsyeGq8K8Ba8TJ3Srs05jSrPce4DioAY4Ls6iObIXDXrIiabe1PcOG9OLFLYT9yhSDWz5tXF6XdLFzZQ3I7G9+eBcs9ci7wVrJ+CNjLXIIhaeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693633; c=relaxed/simple;
	bh=3DWOP0Xs9PK4k8HjkCrXmzB6Zv1uAA6O0KE4t56IUbU=;
	h=To:Subject:From:Message-Id:Date; b=J+p2PCL3HtOue8eKkzF0sdDYzgPan1JH1p0CaMph0ypXJd7BdHa1kYleXOJia4+lVp3IwTkqeA8hfrW3BphmMwGEBVVKHgHHz774BIsa4AxQ8PCqqY1wrJLGzPOHx8QyBEoS9PiC8lbGHg/JtG8PcE6JOAnQ9BRUxQUPW2lFSHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvEyJqmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvEyJqmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC13C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769693633;
	bh=3DWOP0Xs9PK4k8HjkCrXmzB6Zv1uAA6O0KE4t56IUbU=;
	h=To:Subject:From:Date:From;
	b=jvEyJqmYk4PRr5JHgO/mWIMb6+WZ8cmPqWgrBOZCdhwPMAcU4hrYBK5ZtVeWZEJvW
	 ksq49KYqUqyWbGKn9ZIdBpjVN+8pmV723R1ZZqXOx+rtOFV/3aoBYpmNXjpqEES5rl
	 OcAmd4oP+loLwtCSUtVicov8lEZoLCycHaxAQ4W31p5PAKOduSxHqFY6rWbnj5V33O
	 LOfZe321csTc2B/yHaPKgOfXalhOM2wpyvBDOdaGIBlpFZfsmbX/KFhZjrfoC7lYem
	 EN2ArayL95oQzffKy6QbVeCbK53YirAZnWgb+sbvQ8m6Xb5/Hev3WKokVNviaVKVRT
	 bn5JMb+9pAU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963EED61013
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969363360.27337.7186704522132150707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42158778c771d20906952931d07d5beaea81ec19cb4ede3e3ac698cd6386d5e
Date: Thu, 29 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769693633
