Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0338B15E
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785782434; cv=none; b=bkZZDKMzvjth2X4EPCnRrutZwSvGYyDIAHpw5woB9CzML9tWVu87cbMt0La+zKdV5xE1n0eKSD5Mqu6bch9IDRQn9lJ4DutuLalCYMyA/CE2+nQXGzIghrdlaELNQsEnKz9yy4d5XBHTLMT3Etucb15y7R6FNt2zBNqjKyjXHcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785782434; c=relaxed/simple;
	bh=BuEUQiEzg3sqeM+bTFrifqhp5DOngVRL+Ebz690E0M4=;
	h=To:Subject:From:Message-Id:Date; b=qXzfsfrw2hgi11RxaVTgdISlfd76wex26GVsit6PpzDm7ZPXsVSk/qLFMQT1fHYOcE9TIyzYTudIAHHrM5pAFxLYLhljONQioX8eFpEpPdr942+8jLigfNEDKu8r9DUoQU3VkR/Q0sLOP2eHB7PmijSqvhN58VR9xuQqwFmEm8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbHYk7hq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbHYk7hq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B28C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785782433;
	bh=BuEUQiEzg3sqeM+bTFrifqhp5DOngVRL+Ebz690E0M4=;
	h=To:Subject:From:Date:From;
	b=PbHYk7hq+fcYL1bCglwOIcI8/tdtIN/H5kAwfZCfJk8teE+sNSmRfldv1SiyRGlC3
	 Kkf+jhCWlbC4rhPiMHu9gL9R1Vl7XnPE1e970untqX0TJb/ueYdhoQ0Kx5bXVFzBcu
	 QnWK55NtuF5+t0xlloDPbacVaiOhuUZui0OFvESPC0i5xv5RzmuMBFMXAhUOt8xBzr
	 QQwCyGOuGOQ93w56525NV2wf1cLexl8Jvrtry15APabPM8cI42+rxxuDSyE0dZWHnV
	 9KbFrVXYn830RfvrhjXTMegR94Sc7/HUuH3CUl6aMANUKHh150IFGqUKh06Nz0sR5c
	 BX8YjlcLWrcpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB74C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578243375.1756.8611126890995645909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d2574cdc36896219ec2ea5735de432275aee1da3ee7a739974403b82d90f97
Date: Mon, 03 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785782433
