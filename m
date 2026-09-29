Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA7D3932E6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790666434; cv=none; b=ll/XwlOXThb+5yDjN21kU8VByfbut62s0jI7IJnpgTOybo8cgOCrByqvExLBS7pzB4V+3ucabc5XvPSFt9nfqUVSVqV8W0MlrdBPcpxEB2PuKeWYN8UCulPtbCuHq6AsPyCL6hhIddd1MQajf5zmrk7g44v+IcyCAwTrx4NS4ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790666434; c=relaxed/simple;
	bh=XU/dZvKojwzqoJ9G0bzyN87hPkabdeB1n7AlfffuhR4=;
	h=To:Subject:From:Message-Id:Date; b=GX6j//p6XWLV+c5hgt9yrdormZRUUT/MVJ55GkufmuirDdfhE717qZmtF49p5oCLj19MrhN76x2DPY+FAd/LrjniZOn+jpEFx7vJdqH2HgT5Vy1TIEO7KBTApWjiqBeWBZ1BHDhdSW1e7UyfLLAmeSwYsOqLShhRAgqQ2MYpstY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnqvGc3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnqvGc3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F16C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790666433;
	bh=XU/dZvKojwzqoJ9G0bzyN87hPkabdeB1n7AlfffuhR4=;
	h=To:Subject:From:Date:From;
	b=CnqvGc3JXGL9MDC4qsiDgt73hZMxciPW8lG2JhWNJffmVMUeImHw2cu3rA8XUlbHr
	 hnSxVhmcNeArv9K3Sg1d+LIiyloUK5cKcDx3PSQJvO3CMVAbE2PXcy3rU9248gXCde
	 P1Yqmr1UC499gi4PsgSNyQDXWL/KdNERT/nPh1M77s/c+gVEYjlUp1mwhLWxae+tZN
	 vX80DfQsvPJX4Bmq8NoazApJYDoy/fyh8aq9b3DBJ7VJxZ0xjiuMNSzPhWyARFujpt
	 rinC66afBg2ERaHEdZwwagdaQzkPMgmLlld/qSe6trfoU7bPN058dxFb5SnKa8jNgo
	 /3VOas9gG/b9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B117DC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066643371.2068.3060445351626545861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1172c2fadb473c2733b735ed9aaa939edd650e7bc46d57d111f844e4ae3f0f6
Date: Tue, 29 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790666433
