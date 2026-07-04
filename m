Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9102D23A6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783187314; cv=none; b=GCcgYZV2Y/fzcaGgXKtCJPKv5OTYj7jndO8yLyvqogsUELEmTutkBvFQ+9BJFsc5jqVAshvPSOqllARY0YqEUN6/67EZcrR/gpFyGNVgCaGkvAtb8kWuiouKan2rmYbPqpAT8zLr3eqGOI594tSfiqYjVoiwj6ENVtoouN6WsuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783187314; c=relaxed/simple;
	bh=oxJ3jjLfLHNHtjPmWeBxJPIN2sv9EA3p/J6XD3OuFP4=;
	h=To:Subject:From:Message-Id:Date; b=F28cOgfMQNx3P9vf0HpVVpFAnjRnGG4Nz008a4DoiDnKa9/J4X9D6RDHd1v64rYpADMG4n2DnCXnU3GuLUVpnB5o+aX2fNKPyTB4I8EP4SK2rj8ul88sVs5weGij9wm2x4j2+xnVZBNfEBeholOEtNgGKmPaYi002QJ8Rmh7WcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaXMgSV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaXMgSV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D085EC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783187313;
	bh=oxJ3jjLfLHNHtjPmWeBxJPIN2sv9EA3p/J6XD3OuFP4=;
	h=To:Subject:From:Date:From;
	b=YaXMgSV4j1NyC/Zh7I/93JXWoQLWlZ/NIzkyor4eFqvJAbMYT4iL9BYpPKt4Q+4U1
	 A1w0JalYMjw5r2kifLcC9heGiGVftoLMD8tL9NmMcjK0CyQyfvUwa2uWXPwMq1vkqj
	 dy3Vte07Zhlf91DGe/27DucXhEMJyHTAlpMBDmYdfBWFcIMxLyYhZ7Opzo6FHIFgog
	 PfJevco70vh2rtmGEQ8z9optI+DfLXVhFbSrfQRKPzp46eh5SC3kmxld8XbiCfqTCT
	 yvydoKlVHwnKjofS0SBbuSuFTfP7CVrjGnyGsyT2AIm9n8jcWQ5Fkx9aHsP+Y2wo+H
	 1P1ieeAZprS1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF15BC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318731368.11208.3592109874356568508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aceecc58ffab6b2de8128e3504de54cc65e4c28ac0a5086f4325a6b3656110dd
Date: Sat, 04 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783187313
