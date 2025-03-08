Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4089A14A8B
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741404534; cv=none; b=pJGi4qqKmuBj4pJd8pavc/tZLMTCH5wbGtwrMraZf+CmWoqptIpWbjnwKclaDFYF9bLQaSxCEdZP0hJi4JXgOcHvKXwgNLghbq/5+XIvZffvIrAC5j+iCn7Q0KhIBeVUHTl0vPMYW9jZEDSSBO0wXrjVzASyqG3RHPiEvlSxY3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741404534; c=relaxed/simple;
	bh=6IO1VM1NeHjdxTKUPbduDF/QTwltPgqp+rDVMafyrbA=;
	h=To:Subject:From:Message-Id:Date; b=NbGZ38PTbLLJdK7iZ/wByxhxtzxrXTIQWL5JIJpN/Blk26rDhN5YGTtrYXhj/5FyC1ciJ1WBXkpMXUj8kL2ebT0iyntsFMTx48a+CkqhI0NhAGpg3gHxKMJBs56hOJpvBKr+cKBrruTiHmSqCArfN9vd7N+X62yAn3bPHKz4HM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JEgbsoDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEgbsoDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C3FC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741404533;
	bh=6IO1VM1NeHjdxTKUPbduDF/QTwltPgqp+rDVMafyrbA=;
	h=To:Subject:From:Date:From;
	b=JEgbsoDBOt/kNxpvumzkdDGw+I3SyNbZSgIQnXPmSW0CFidZGnY/iwkXpu0tDFWue
	 LFXyFA/E4YQhbs2WpGtNndON0w0ST3MRXj4g8vUfQWuuDrcYoueToOlAVfSZK5oaNQ
	 pSbzLhNZGMTopub2oCtBC3fEJDP477igt64XpYP9uf7NWhmf1yjfnsPs6HiNmYQraY
	 jkwfqEqqZQQsNLAzGzL+q4YCVPpt+OWpNipzbazRWGwXkNNjJsQ8395a6pKHpVImZf
	 OS5E5/bVp/8AWlnqSDLF+dBha/gRmOr4N/jgidPpiLK26W6BkGMVm/xxhR376EwSGu
	 NKMq9Fz8aDoDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F24EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140453362.2218.10374485256541154228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918308c4783a956149258d15be01d0eeeae8ad1915d0f5c4b15e1fafc4de8b0c
Date: Sat, 08 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741404533
