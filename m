Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC281272C4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706633896; cv=none; b=FNx4gLukvr4okeWVbeV3BvQShUlhbepoVY40KPPDYn2AWLdJzU5jSqTFYJKL+SD5rzrvwMIpS4yjLbxyoQQ842wBEARnGqbTRQgrGg5P3Wj0EaTcnvso5eFNjLpBOSJFuas4iv8Ot09HLOjNvGBghTeYh93zHiPFuMeZ4oKw2/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706633896; c=relaxed/simple;
	bh=tU+kDY8UJrgfPzMHutS0IPbsdZCZYeaHkM3m0e2bNck=;
	h=To:Subject:From:Message-Id:Date; b=QHe696OGMr4X65ITZXMTHLN9AHVtAIia/fZUocTBmxRQe79Q1oeQrAnlQYL1ZTt5zTGXvNcOa8L2qU3Phynvz1xPK9fSbGZnfACqCInVQJ9fEoT5dTIBBfs/5MFqrBx5ExKWWgYPvMN2/iU40zbJ9WyldgTSJujc+9nPrghQ818=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckhl/E0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckhl/E0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724CEC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706633896;
	bh=tU+kDY8UJrgfPzMHutS0IPbsdZCZYeaHkM3m0e2bNck=;
	h=To:Subject:From:Date:From;
	b=ckhl/E0odNWp1evxab8QAnzQYb0ew23QXdfv7OAONf6MaE+TxZfJ/gF09608ITorz
	 DL4vblXoQ6pzCbIz4sy7oVFHdv+gnB6iCJ/pVZZHyfmRLY0QCPrDf0ezH1QHAHg67S
	 W1f6+lWVyVAjvjkDVLJIObFu9eylhv8HScEC28ec2NDT/2yikUvP3lccZqmTS/c09P
	 BlqsYpHuUTX9tCz52nXuPyNVKDNliWirhQ+q437rB44pX8JupY+frxFWyGqNn9Z1o8
	 03I4aDns9A5tuoPLmOvQ6y6hPhG2r1kRoUO1JQUOITJD7DkBHo9tc05ZhL/yT7EoS0
	 FIuHkLf36xieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB3DC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663389637.22664.17664224919523544315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c077c3fd9094e882a949d8e8fab35fbc4a8c100475cb950aabfbdedfbd0e8e
Date: Tue, 30 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706633896
