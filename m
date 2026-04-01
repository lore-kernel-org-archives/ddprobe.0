Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA9331213
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775075134; cv=none; b=Hh4lrrZOh0a0nYopnH6v7FqmpM6tdF7aF6nbcn6AlVXOP4Cm8vR2z2WN0tWKXG6lxqxml1q8P5uC2daCjT6yxJ5p9jJlbbmM0Q3NyHCchvHuy7qRHBVQaXeGKUzE7pWfHjbEVEHzIe/fs/hODqrvaYd758Ya1Yrw5yHMq4fcKPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775075134; c=relaxed/simple;
	bh=H49ZjJCd7Z+TcAn6ijWn10wcL2a6fJFtwOUQ7+n+DKw=;
	h=To:Subject:From:Message-Id:Date; b=E7BY6uiXOzel1fOqV3oHOevJiEtis5rj32hKLWblM0WL4t1JGs7qA9dixgMHdaUUkyorP4IZgohUFquQ7kT2gZ/Hu99B1dv29UnZIFeed35UIHmjT6eZRJp58DDaJRbds7or08PS2n9OlBTO8q/ssf+TgQeAETFPBmA5w09Jw1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoXS2kXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoXS2kXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC7FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775075133;
	bh=H49ZjJCd7Z+TcAn6ijWn10wcL2a6fJFtwOUQ7+n+DKw=;
	h=To:Subject:From:Date:From;
	b=VoXS2kXqiB1zwFSJ5d/L5mMT8fz/2AY1RWVGWOMmBbSL+wgqsPv2vlj7rP0BkRT+0
	 khcq90Ozh67rA38EPd9IkJ3/syawInPQk6da+c75MiJcAQJmEKfLO2zHkmg4Q9jd2+
	 1ffLc0HLVMltA0lYDP2DbuEyhwKTTy+zdKA983IBZdPwyOw/QuSH2VbNpLNA5uBdwc
	 fHM+H65fXvjg/mblDunwi1pcp71wRjI06AnaLnbbpOQsJw/4XMbZFI7dynf63jDd54
	 nckSZolTx1qf8zzG4CnDWpJ+EuaDVJgLnvGfPRAlTsr19ObMaYv2pU5K9eXb2YnyHX
	 bVEB3CuF+HZ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB78910FCAC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 20:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507513369.8700.11896960838889637480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44158d17ce3ee8558639f06c18bbc241c0da568cdefe897868b676bdc04f21a1
Date: Wed, 01 Apr 2026 20:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775075133
