Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D54A37206F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787380234; cv=none; b=PDTFS4QNJDLHrLTRZ+bHmV2U36xmZdqVDyp0pFsHEQ4G62hfEkz5zjQqpOkp6EsYrQdbtUtPa4VZasPUnb8zaQ9Iroh5tYa341SC/ym0VUzYbKZEiaq1sppcHUPeoawPNQcOdQ5KJPTfn20pU1KZ/wa53+l46egjcmdE2wv7HX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787380234; c=relaxed/simple;
	bh=pqi0z+xbhfkcX/3Wezy3fBD8APj72EOU3/lKqwM1k5I=;
	h=To:Subject:From:Message-Id:Date; b=rzazGwwG+j0ihtPh/s4pbH6w07fZbPpm6ZFPIy1KcfwqIqI5sASeXVzpPatgmCpCAIUe2aKcDzmkaIdllOvwrRGVd/H6FkDqC4Kbw6RFdW/hOqgPX1lNljqBh67judMH4jrjXU5kKmFaVTb97HnY8gux6I7MCq348gvJNH29kb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZhdluAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZhdluAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DAAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787380233;
	bh=pqi0z+xbhfkcX/3Wezy3fBD8APj72EOU3/lKqwM1k5I=;
	h=To:Subject:From:Date:From;
	b=CZhdluAZP0c26ZL9/0A/3bpSHp+bvOY1pVwU6On8HK5yCFt+xbFKQfQxvf1Vlf4Bu
	 9Zj7E0bvnTky4DJ2z+d2TQPDsYkRPk2otfz/Jq3zDAOkboQfOMGp34I3VdZk8cwDDe
	 PktCNRbaXS0VTHho6CscWxiYk7wmvJueAMD6cM73yudFbJoLGLd0D6Jto+clBZp6GP
	 57IYvzNEIe9EcXYW6LWeudJU0/J4/1l101wGivAikXsRtAdcnHRzCTqLFq7H84QQK8
	 fHRjjZRQR/uMOIF7O2RkahJ6WN9t6w9NQkUGp02NpZ5pswbEC3Tg7CGy2ry2FpRlqd
	 Weqa4UfI4PWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17B9C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738023369.24920.8311925591219351998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8895d851df1b6cad5e869084d9b459412843ecf7f779ba1f774831d1555a12d7
Date: Sat, 22 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787380233
