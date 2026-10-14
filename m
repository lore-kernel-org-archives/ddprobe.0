Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F297361656
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791993034; cv=none; b=SGNh+RXYgaffo2SAuv30hwwp4RXbyElEj25v7xZm8FIEuOt4U+5VO9t4yFO4Gl90MFmQ2TsYdZY4aDvMmzE6veAoIjQ/8jrzrmmDcHBdHKCpBy0PoCitOp0qzNkkNngWlwK2zzUrJFZ+p65gzFTzhRCm+2HcIIlNOJk5Dy2Hvws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791993034; c=relaxed/simple;
	bh=xbfphc5d7AC/ACLaJIvdPqPW6P9iVnc6MoILQAf1NO8=;
	h=To:Subject:From:Message-Id:Date; b=dA7ur5Et4HiAixqmRF/tAQKKv4OXRDuEkiBISdUyL56aPK+zdw5t1JHJzClPoZhnhAkXX/SMXl6Pxh2nOXeg5eI6zx8XZVgBbwyAUC6CPmdpr5yPcnW7B20XL88yr8r+g4F/h41aQztSEmObMXCkUWJwUV7kzHZXDPJG1XvBmuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm5+kYjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm5+kYjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D3DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791993033;
	bh=xbfphc5d7AC/ACLaJIvdPqPW6P9iVnc6MoILQAf1NO8=;
	h=To:Subject:From:Date:From;
	b=hm5+kYjLgAXEZsXU4HFpSBahE83+kkWIeKyA4XIQNEKGTnuVqLAjEbRgthHgS15Ty
	 0L1R6P2AeGe459Q6v7elMeg5ELdMOkTsc/sh+3/KVDA3NBkqQ8mhHSJzY6NjdugrJN
	 bhQ3Ell0M4c9PN3tUeL9poheIK4wXlK5qefjOTqYjTpGBB1IEqa1FYT1b/uQi5if+M
	 1Yp3xorHPjxrNqRr+U+sjZT5KV+rt6lMela3ni7JLiLcXKMMT1BIO/JnTpfb5la27E
	 YjRiiqCZfXYG1qlVxZV0r15/Y3EjiquSEWwxZTVrVzefHIvvvdOnCe58NGNC2Fk9/H
	 uEViExmGAvIUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE050CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199303369.18289.894971418919855050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07df95400f8a65dd1dbc726385672620200fe61d020f2736f8e53c3fb67e4e9d
Date: Wed, 14 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791993033
