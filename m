Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D356A920
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751239194; cv=none; b=WNS89FgaOw7iCjm01aqcRk3BzuHKN6F0MXAz5VLRNVsKKfMpDR44CXpV/0t5AGpXirIOtC1huHqIbBKczghKGGzJggRvm704eG1Kg2GFtLk6f2RmeSH3M67fUma6vOhjo+bk/D77VGlIRYNmB8uY1saqAO+QWDFTw8bgbraqTKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751239194; c=relaxed/simple;
	bh=F+hlp4IFEvLFn11G6jz/gDFca467IiLHOAMiuN6w0bo=;
	h=To:Subject:From:Message-Id:Date; b=jo8A3PbknVx66yVwhpfTrwoI7wdqZJtB+WaeMGczx6jci9QIMN2a9PRxKyafQNWRVmGT9Z+AmOqPvaGgNE5C2XYNFIZ01r/23U+5TZTS+Bn9xrvBSz65UtwoHr2Gu94NnvoaZOUFN8AFyuuRaPcGaWn8GuOss37FsNgcUrmrZmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZ/f6GcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZ/f6GcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6A4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751239193;
	bh=F+hlp4IFEvLFn11G6jz/gDFca467IiLHOAMiuN6w0bo=;
	h=To:Subject:From:Date:From;
	b=WZ/f6GcVco5eZgD0haZxsBx71f0LJ/HZkM2X6fE9Ajv+fLuKVM/YNDkYG3HgD0yvB
	 WwRsltHeHukh5YvGlcny2EXuYKl7k/tvFEU7fAxUwehjaORJB3/KZhLUZfj3C3uy+D
	 wfOwjTkoeXsPpAioGuCNl4KqsVb6DBbprhB/UGRdmLddeco1GslrW9dSGTpB8a7qYQ
	 u9wftz8HvRyztiLtT61S2F8TTZ6otvAFx/2St1W6gUQ1hXBMazEwvvRMTgmzVr/I06
	 7JYP8eQJVrNWEmRdihnnGfh5/3a5Nb1v8vMf7IKYdlAvWNj0z9yso+7nPK4aHMLevh
	 0Lx3sqp8nXX9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD1EC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123919357.22477.8703093164033943639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70130be554c01bdc802868ed8cb4aecd54978333ee3b17c05793b07f78c6b7e5
Date: Sun, 29 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751239193
