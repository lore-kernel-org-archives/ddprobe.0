Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F541F7580
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761106794; cv=none; b=OR1tRA955Ifg6atwPtHbglhgghWvWFZ0mUbXwtTkLqlYGvojh6tPmAN6PG2pMTvB9tA4ofIgwikAnLkCbpvCKajLd/Ygdzv5tgJZD60pCUaRUZcKLvDcp46uYiauAn/x6d1UKfO2aTPqU42hlO+ohUKnQb/56zxM430QJEdhczI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761106794; c=relaxed/simple;
	bh=jb/o2t9ASUrn65l1sgFtGUzGyxpuCH/t9MxLdBOzE3o=;
	h=To:Subject:From:Message-Id:Date; b=kqEAucEdd2WPgA9ELe6HGQP0MNGGnu4PZypOg8AgpieIOWk8BlVfg7UnCzutK5BZGUnwOa6w+mRZlXiJbjXlLIxr/CnnMIm2afsnGJEsszBdNXqMS5Ds7E3T+KpPXoPgfntzRMxKX+lkV/mmm0ZTkCJIV/c0nfh4DcpdNAduDlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5+dsskv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5+dsskv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B510AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761106793;
	bh=jb/o2t9ASUrn65l1sgFtGUzGyxpuCH/t9MxLdBOzE3o=;
	h=To:Subject:From:Date:From;
	b=n5+dsskv165JV7Ie3K+wHwwtmBtX8FK3YquLeLBMCqu6Dt3PIuPm9sT9XFmS7ApPO
	 UK+OU9/Noo5y9O6dY0jYxL1IllyqMTCSQvm//BFjllEE+pdfCLrromUYeoGW7wINnn
	 MBpKjNQ9g3kbAbXF+q8hf7xyAZngY2rPJ5hbFWqJnQTMQKioquzdCqPSM3d0Hv770z
	 kWp0Ltz3uqKwKCLEtJNx1UbgK/IGjyNgluOFCLeG0O18TErbjRRLx+j6oXQFc2zkcG
	 7QQF6YYiT6cfa4Qr+w3CqnevcyJBU4bMztMc12APd2Zui/9EqvNcNoU7PqsMPMJdAz
	 zvZ2Ws2A2x4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3006CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110679364.1357.9732004838167074644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8df170907048297ebd60a116d7554d77d31e771ccd5637f5082243c135954f4
Date: Wed, 22 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761106793
