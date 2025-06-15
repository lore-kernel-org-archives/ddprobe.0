Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE0F2E11CB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749984594; cv=none; b=CXO6m6noYSD7QekmjohRd/kESUgTRokQnSXXK/64a0AuKBMuo5zwBdI8cmImRbnE/MywQtBmbrRlNl+U4vK+YJ1Ou44DPUDEtOwdxzRrk/Q2bSKDJbd0AFb3SIJVjhitNURHrXsIrj6DHfcCdTyTlIMoY+7r/rmqS6Mpjtj4Wk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749984594; c=relaxed/simple;
	bh=Ll9bNnc6sH2g89pNc6YrJhp6/Ut3YD3sulJkcPjFDss=;
	h=To:Subject:From:Message-Id:Date; b=upODWf8K0/TbtzAbOqh+oz91WuSn8XYInMBmvnbLHHsnWdXJRLVqd0BQNRY0UVBtljrQ0HNAAGYRf0lJOt2RR99yRmB9kpsNXSav4ey9ZU1pjyACxsPIaKgYErr4nxFCukLagd1khS/FdZfOMmURVdSUuYMQw9HZ0/mS/NPH+OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhJTYHW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhJTYHW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749984593;
	bh=Ll9bNnc6sH2g89pNc6YrJhp6/Ut3YD3sulJkcPjFDss=;
	h=To:Subject:From:Date:From;
	b=hhJTYHW7v+CsCy5dMK+9N2Yx9E6AI0chEJFR8Z1xAfltohF6RikDCtMcdtHinFNZX
	 66ybshhy6/e4q8cNkiydr+1w5sTlUuZmrlhEqQkzYWSGAZ8gsWsE/HBorv1td4xs26
	 j9GHG6zwy3kOu5Ct3hTrdFL6BZTI3RMe9CBmZxFLUCPkEzIhzADaGXfwZm8h0N6NuS
	 dgw2L9kDUy/KZmRyGgwosup9HyKOk7ohMr/1YsEfSPSxn0eVPvltMiOKDoexCiPqpG
	 j/ohqFlwY4bBZrFuL8GfOjs803N0TR7J9xG8EBtq1Wkcur26uT/OCkp3Wmnd5F8UJj
	 6GUeQGWlC3zxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBFC71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998459358.15554.2197102248567797896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0373461640331d2191d3bea203b229cbd9b0cad0c63139ab4b930ec708f2be
Date: Sun, 15 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749984593
