Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9543B8D53
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765168374; cv=none; b=W04DlxD98u+fhJ3CZIW7e89U6TD+uKsSuYcw4FJE7pBjGD8xif6SS7rNRIcBQK/HbaGzb2H0oUYIv4j0ARSr9QtJDHtTGUbSktmYiPYhai2WgY1/xwyIqTcQ/8868TXX/+2CtGh1VlYmC4Jisns4PzckU7x6c9kkT9wip9JTfWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765168374; c=relaxed/simple;
	bh=cmxN7Gp6xl19LqRFfKe25qWa8ZaErflob8/TmidsVeU=;
	h=To:Subject:From:Message-Id:Date; b=gxuHgEhfuTQmmW3Iz8PcQk5J+hramh4jKDpylsUpEnkmYUGGqiiSx8tkTbs9BJEgao2pFbe34oK1XubZ6Q6qPW4v+1+sjQNqyLQUO05aXwWioPmTDS3D18USjlOSRuUGhbNdYrzarK398e4G3iG2xURNQEsB1IQz9JSLGljpQHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pDbY+8hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pDbY+8hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3399C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765168373;
	bh=cmxN7Gp6xl19LqRFfKe25qWa8ZaErflob8/TmidsVeU=;
	h=To:Subject:From:Date:From;
	b=pDbY+8huvUVUAjKLyt2RB16Ja3xowZo4uoVROyO+elF+S/jpSTN0ckb/jbNbpRuKs
	 yY44sKXK3xJEboD9MYS+WIHJvHNyRz9MqdqMhMjq3mb0DloZBb54Tp/W5GrYkneaYJ
	 PwGMVGyXx1xDtaajV5X+8uE8IN20RL46rU4g65Darbo/t+A54zYfEvsc10kJQ8wcTb
	 XZo8XmP/bSMoeX8gU0otzIBDHA5eJ27ckzZuu3fSCm6QM/mG4gi7hBhypSh10Xeh/F
	 ys9KXvY9oBvnsp0weOAXFMAJOnTCWAHSLE0OLRMoq3k4ehY97u+rP0kWYiqpP2aq41
	 fkhZjdQL5OJFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B91CEBF88
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516837358.17948.178970889145851627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d60b3878b0f494b7404f386fd17d935a42efcd01b5d975bdb441e40e155bd5
Date: Mon, 08 Dec 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765168373
