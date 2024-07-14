Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D21481AB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720987223; cv=none; b=styR4oWyVfB/4ac0yaHdf2twxVERTR7sTApP9IJm1dY7XgWSB/7T+h7EhF6W0BfV3MLkxo3nn0AnzRj9QNn50+juAYUQZH4OiUVq7GmGOk960YSI8DZnBrr59Bd5I9D6uv517vbK31A6hKVqHTZpfXgQ9azO18/6a8ktz3ua2sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720987223; c=relaxed/simple;
	bh=kRXMSGaVnSF7xOvxWK5n2ksjlScXTsEwKKdkPDaffuo=;
	h=To:Subject:From:Message-Id:Date; b=XLWGNle0lVlpmK3Hu2Cd66ig/zwHrXwiwL1I7nQaM2MJZhfIO55yH4+t91ApCqV4usug+yNsMseD57qMhtndzF9gYaxf5ySdWYd2prbw+4z2SgYmBNEIGk/q21E4D2rOj6QX1j0MEk0tLS3jgBHO7qrdXO22YAcQISJjD+emo88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=innQkJen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="innQkJen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0C1C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720987222;
	bh=kRXMSGaVnSF7xOvxWK5n2ksjlScXTsEwKKdkPDaffuo=;
	h=To:Subject:From:Date:From;
	b=innQkJenEqcM05e1XovvFIwjWanzAk6fFBkJM4apRKJwCsNU0Ipcla9f6qGAAm8H8
	 g1Wg3bTeHlr9Yj6xH7FflFfC97q1LbizkxUEClc/vyQaC1JFLcDIPVIqjF0wz2J7UR
	 Kn3grsAYq9GJuzRQejhhLERnubACxjlYO+jKZROp6bIekdxL5Oy/+wwGnSrsmv0hIq
	 M+Rx9Nfn8hjb7Il3Whtm0lHbimeVuj63b0+h9nmwE3xHNq2+ocVdteAncknNCQ8u2F
	 VDE4bIGra0BtLCdOGTNyAxGAkO5xUhjcPAksKGvBuaKpMNzWEa7U3QwozM676Jmv2F
	 300yAfGMZS6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58DDC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098722277.24986.130052719316182765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4060381ee6650fdf325b5f1d3f5312e685a20d1e67e2792c0b9331af31815752
Date: Sun, 14 Jul 2024 20:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720987222
