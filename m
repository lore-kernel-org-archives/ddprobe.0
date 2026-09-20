Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F8203515FD
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789941634; cv=none; b=DR27b9ay8MEUMYfeT427+uTfyEqQJPOAaI38iya+tfOatPE2d3zpzN4QqLzISh/GO7mHJLBC7hzJka7BaKihaXgtxGFKD8zWwi/TcCBet0R4PLca/LQMVzFgttXetKn9u8rv/DCeGRJhnSlK7ZJOUcHArCbLMuJftyiQaR34Nno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789941634; c=relaxed/simple;
	bh=Rh5TCxmflUMhC7wZeTUcpIbuE2M2T0XP0OCY0cplgpU=;
	h=To:Subject:From:Message-Id:Date; b=iSnKOC08O8fnu0OXUDBCHeAZDK3jyIbYC6pVgGFUCuxrUasSbth+XqPNRc0yt9rEokstVQgm6+1qSR57ksjSJJ2hKlknrDKHg5zJCvzd7BIop68CwkqaullIKxaF5e6Ziscux2WwBLlOvOy57S1+U9b8KtzWBN45xP7mO/ymMFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYrRIiyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYrRIiyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE99C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789941633;
	bh=Rh5TCxmflUMhC7wZeTUcpIbuE2M2T0XP0OCY0cplgpU=;
	h=To:Subject:From:Date:From;
	b=oYrRIiySPIKYhn4uWHcWOyxTMd42PrNqWOgf8bsC5wT+JAYz4H2aH5UE7eZAZsxyt
	 0GTSJlwIsRFtfQynlv6W0+DOO5z7PByB2R0LAluceox9hfZ/rv5kFQtVRW2LsNLXnQ
	 ODLc2rLIO/Q/CIizgBPuUvI0cUM4PpR3lIDd+islxeFDUWA2MUBs//EfnsXP5UbNPt
	 EUzpJmZUiz4oKKFsAsbwPaILRhIoyzL/6bL7NcQ2pn549DXSKcw/6uecBwZjZ4sLnk
	 dMWsdc/Kj82vIaH6BUxkkOUhqRRptu57bAbwXO8ZydiAZxOjYwa3wuz5Ae4qJKS3WM
	 2PZjZj/LU8h8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA20CC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994163368.29366.13723867131353912974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e0c6f5805cfbf2c66f5f65d321ec091142c5ccfd1b0885f2670f85efce0a48
Date: Sun, 20 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789941633
