Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371DA1624DF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785129034; cv=none; b=oROzRmmFsbMLYCei1d9qIBBJ4MFCDHsrjNhY+6vshVBhCUxHaFtYDDvGt2ti15Xit4Oj2IPEp5Juo91SWpgSKl9JEXjsydEcTO1buloR9DQYk4aw6mrq/HNSFj+/K+sDxUHTD0Sik4zpDeFTou0fmTlboCogm6MDfC2q4DqbhMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785129034; c=relaxed/simple;
	bh=sVedzipX5McU/EF1sFJIrU6zzDIkYVsdJ1sYwR5KSNE=;
	h=To:Subject:From:Message-Id:Date; b=tl8AuLTWqt26BM599zuPhMaLcgrOZa90BV9SUxmOfmU8nizA+BTGzEBpcN0b4re3FEi84af1LI6q38lou57S4fOAT5Jor2muj3P2r+Q5x+Xt3xgJYSBEwRmFQpG7k7KGiCjrUxl4dUI7zTnxfsc2GeCapGTk86/to5oTm5+ZcYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUxROTKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUxROTKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D7C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785129033;
	bh=sVedzipX5McU/EF1sFJIrU6zzDIkYVsdJ1sYwR5KSNE=;
	h=To:Subject:From:Date:From;
	b=PUxROTKiRobA2tLdHEDs8G8ioSJQ2usxJociNpm5VtLIeQJzX5PzGyMCDqGY0x8/c
	 P0lGWvivVI+5PF30ZJo4ONeoslUEzdzmxQNzN54Dcs8EgpriPz6bZhlr5S9PTKv5Sh
	 yAIHbXpjFquB8AsHF84Qbuudr4gwSFLtTiSqhGHs5WZozh1OgnDGUn3crfeT0u0qcV
	 9+Qv2ESM+D+aatBD6dvjbZ64PW3Wh+Qh5EwDlVKNxJvx8W7dPqoaVMB2AZVQhEAzql
	 kJQ6nHjuDwfKQQ/YYeY3CV5BFcSX6DtL9VmUslomM3fPmz7Gkye/o3559wX62cWqGw
	 oeMKshrZslh8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF69C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512903368.332.17217070467178797192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a2afc85ddb6a5b840f7f7cbca0663af0508e1d58d1a80a95561e3b8753c377
Date: Mon, 27 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785129033
