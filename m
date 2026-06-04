Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4425447DF96
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780580674; cv=none; b=hgRvq45sZvwDhZBJLhewqhcmylSdTyxuYSp1uP/1+kew/zErEzuCIYek0e1KtAVxcq4CUnjMK9n2f8Pd3pn/vgYvA17SvW7jq6VvCkwis2BCHmvil5K569qSABmepq3vW2CF+9fD7YHRNbEcA7x+vIGBfH0E+gVu4rakYwHgwNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780580674; c=relaxed/simple;
	bh=ncOS4fsLTe/NHysg2b0uBCwJg1wJNJaFHgenGOsBwhQ=;
	h=To:Subject:From:Message-Id:Date; b=gzbKHQkTp8jmzSnwtZTTi1PzTmiD23Ju3mT+DpLxyLmyhOm8EmYxwrNrY8LKEXvVIbDnLpF45JIR1wF+HfVTFUHBK93mrkITA9UTuquYHzQznRpWrgNJrsJYuZ5PhDO76jbwfuznabFXemX3oCvIMvy6zQqQqMXvtkTrNqY76lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTj84Y96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTj84Y96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37F2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780580673;
	bh=ncOS4fsLTe/NHysg2b0uBCwJg1wJNJaFHgenGOsBwhQ=;
	h=To:Subject:From:Date:From;
	b=JTj84Y96z0wHh4CnMxju9lbjQBtXNbW/tAtdXPZijQIgS6qP0wrbK0xXEg1ct3goG
	 djtjJ8Auf+tSfEvbb6CYMsUxlVsftW21Okz0XmAfAVPxHatViZ5rdAIS288bTnBeDx
	 A+O35ARVSH377ORSrmF11NngBn9kwLW+2OEewmA624pvK4A88Vy5JSchvzaGFHl0l/
	 nU4SKdtxF8wrLRgU9mtKKRnD8pR7CUupdT9TGHaiZ2QWvSyMX+jbK0g7Vgo+Wj1qxm
	 Et8rDu/3SVC4+JQm7vi3mkZydlOa1sAh4NMbKkwHRzxXU9JEbo3ogTuPYx1G+iJSs8
	 y4f67i5GHRZ4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA900CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058067368.20104.1421216965179127434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72dcd5e45400bf787156a4d408bd483b9f6e30ec44cf83404f25fc01ad0f0051
Date: Thu, 04 Jun 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780580673
