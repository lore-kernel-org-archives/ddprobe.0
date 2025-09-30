Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E109149E17
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759272594; cv=none; b=jtvdUekq3ZEENcC0I+HJJjk8d9zZG6TMC2//VLNc/UugB2UhflVAcOVqcB3YSRFXeGLf0U+qy97/9vpOAiB4uxNkz2IhFjZjvohc3kM4sJgXah4ZpKRDR6Go1y1M1QNJHkqupLVaadTfQp4ioAqm5h3CR8hqTcx09+77rIN9G00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759272594; c=relaxed/simple;
	bh=vBeVIoO27/tLDB2UNR+ZnRFr3/SbgQxXEmynztzJHc8=;
	h=To:Subject:From:Message-Id:Date; b=Rv2d3Sj6UoVGPfMCJIXyYawJnSOFhRTbX2UdDFucxenZUmL/qzLlRRqxRh6AIddX1k7UriTVRoDt8VwT2mravp7O9CJzWYJ14sCRBZ9czkFO4DnhdCU7Uccf4XHvY+57u75guEMIjYMqnmrIJ92fZ4CyirRaP8b7+MJ9PfP9yL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQXghSor; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQXghSor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759272593;
	bh=vBeVIoO27/tLDB2UNR+ZnRFr3/SbgQxXEmynztzJHc8=;
	h=To:Subject:From:Date:From;
	b=NQXghSor59JCntrQ5EyPD7U8rJ1UUB3fiip8nMPdfy/S2nG4FiSqcOXuQKrJEcO3f
	 qPjBcjSIQMmO40n4ORnRyeEzdGB4VG+ZhVyA4bJc5tvecTDw2w71oX0k4pDhvOceZK
	 eC1PBMzWjdaEhYgbepF/jETJ5WCPFZqB+lZ3rcxU9M9RFGyCu//dWIGUAHApf8/D9+
	 2DFPPzfqzyPdr+nnXlK73DQWHmDN6SPKcW/ItFUcRiDrh59O0XbkeHVIMHjwS691EI
	 d5WRQz5J/9jtbtiaY2VkCrmdYsrrGOJ6xvikSCKzV1Oa99nyz4j41Elq1+aphDAOK5
	 kj2O2lqR1rGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A292CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927259358.28530.407065452832724210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5348a34c82ace67fceaa170a3ff5fb9da3c62ff8bd50cc80125bd0dd64161db5
Date: Tue, 30 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759272593
