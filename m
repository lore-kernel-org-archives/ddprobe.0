Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577933806D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792358434; cv=none; b=lnvGqGDzsERnM3Kk/jxkbwUDkXgshoFYXzZ5fXTtjesPfYDD7NiP5ixE1hk2xHsDC5OW5YOMHleKI8uh0cqcxG9p2yzv4WDya1TWP9FTCBpExi7v0yBnhaGZoE0tpyjySu3/hJf9KO5spFgYn+OKus9lG5jTt5xmQQaSFr8yE/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792358434; c=relaxed/simple;
	bh=PcfYNMtS5Y1v1GApB3uoRKlzGmrJm+ojEwhKsqPLy0k=;
	h=To:Subject:From:Message-Id:Date; b=t8Nk4Tdg7z7juQt8chv+RQ4rRXwXgq3HaTVfIA0HlZchnc9WU/RV5ZltXY8Gdn16TSYYSgWKJ/jTW6r7o7e1e/OIki19e8BExujHgfeDGzFd5ckF/0RN6gSOAGRPXV3cExbIPzwPmBsyZbrOFYYc65jElCJL3QRta2dhTBU3YhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9r/eaN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9r/eaN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34F9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792358433;
	bh=PcfYNMtS5Y1v1GApB3uoRKlzGmrJm+ojEwhKsqPLy0k=;
	h=To:Subject:From:Date:From;
	b=i9r/eaN7/qOEJG0e7jV6GN4MXe+Y5fiBS+e/8r9b2K2ivKNo3KsAPm9RSbg8th48U
	 /fiMHUSrYuYRB0TWTkoEE8KQXXn1ybJpSfrmv394q1aCeHrQahNdE5dlK/NMz5UbzZ
	 6XMeDmcO2EcnzYY+EcQyIoyOeXBoJfxGfLKWU9ELAY5rUntdgpLDrGudWWtXhsVNAA
	 sjt5xilDrcDggt9QipNtQ6+OMlCx0RTlGnkP+QA1iSZ3wsYaeKAg5pUP9rkW4gimri
	 i1rmJ/91nxhnweY/1CIzSztpy17mWqqYP9bQzomve1GvNIT6JMAm4K1ewYOzEFZIQC
	 k+wQylXSN3crg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1271CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235843369.1359.2485132514721141677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bbd7fef68885a568bae6c4a477314a8e4790a96ccb8f132e64775f10ea0255
Date: Sun, 18 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792358433
