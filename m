Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474DF3AB292
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782946714; cv=none; b=SKMqwbiELyORxct/ebRHzlr9hl1uzidWIKkaroer2NZriiHxlJQ/vmLDCUISG8MDqnGccUoXncseQiNjZ5v/BIFdnUQp/M42r6HyB5G5EKuHJM45CO7F8dQaQv3MoMspJhCYGABmJrpXb/1/mJ5glU6yMHf0iG+arPqhQ8BfgaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782946714; c=relaxed/simple;
	bh=i/JwtTP8Kwy9mvKSGeIK+0EcGN+DkVAyscrIVjE85NU=;
	h=To:Subject:From:Message-Id:Date; b=B4Ag3jGquyPJX5PMzr1Sfr/URAtQpsfwzVonhmuR9HpeYB3P/Xr7cfx+TDXEM5dMXTAWkq/RMhcyjDcdcflcpNP63nXSUeQnCQAtCQ4so7k/SxycK6CjhzErf563xwzzeDYJlxfkHHGjpF+F/NAVbk0JNSL1Y+K3sA3jMpFJ+7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=octhXcLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="octhXcLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5658C4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782946713;
	bh=i/JwtTP8Kwy9mvKSGeIK+0EcGN+DkVAyscrIVjE85NU=;
	h=To:Subject:From:Date:From;
	b=octhXcLG1p9DXm5MULu/Fo2c/mbC3E92Kmuo9nMusMf7m8hpCKXMo1TuL748o+QM3
	 3TWAarS/Kt18IrLSDYtUi/z/W6ibYRPZOBTCGIjW/k96wAAPoLQ2W4n3NowDCYDOHS
	 QdH2PN+XEF2FaGZrQJc2bB9uakFSCi089GXZgWdDlZemiHQG9coDMdaR581m9JVZJ8
	 MIlQB9Z6azpHguZYOSOkwfnBm9z0aL2JqhW4hr9L3CydiJ3Xsf2ka7JPrgEk8YpnGw
	 tVQu8mLFcHfyPskaDkrhLtzBLB4TbEclhlCj/YWw+BCDF8RNu1/hytlUukp/QEgEMx
	 2Rbs0Bn1Puxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5889C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178294671370.31447.16405313527433706097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e362dd9bdd51acf83e35604f54064ed2e1257ea8ea99342c45ff93573d6e8f9
Date: Wed, 01 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782946713
