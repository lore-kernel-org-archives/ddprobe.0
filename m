Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF80C478E5E
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786632034; cv=none; b=fPqQyBLDqyNTv6DWbOrDT0m40oSbsHv+NyjU8VTPhlaTOtSWKtwobIEtFL1s19NZsl28D8e4/J3xHC1yZs/Mfq66tlwu39TywPLSSHfcFoWlyBx/2ZZersQT9jcD0LL99v/ZVzHUFqEqtaM2ar8AIUjf4GwOgn4SxgNczHNhaxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786632034; c=relaxed/simple;
	bh=7awbPHV2yOm8xJi7pYfkmB7/hC0bzrS0UU/M5dhb1Bw=;
	h=To:Subject:From:Message-Id:Date; b=prm5K63fio9cFV7HmpHmwZtIauSNEwl68ouF4GkHxJP6yEF4ntL/4H4h8luEudW3DTBYodupSrn7Duc8PVFes3DrIZCcUCWpBVh9vdybR+Hdua3yQCYnuQTDjDiCjzb4j+T0AuCqZKci7qVw8ojbpEN3gJEJpeFRb9BEPVWujL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1Qea+YV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1Qea+YV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489BC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786632033;
	bh=7awbPHV2yOm8xJi7pYfkmB7/hC0bzrS0UU/M5dhb1Bw=;
	h=To:Subject:From:Date:From;
	b=k1Qea+YV2xPA9nb/5btImZSpqjWkJ+//eZoDHPbr7PiHdQwl/8S6p8qlnmcjKPIXN
	 rRBZpW8EfuTkP5EqLU73oNfabFyBVv9Po8r1bixydpSiDc9plBMguRz9v8Q1zFXY3b
	 rPk9x7oF6wiTynqlvRK1ohDPcVtSE9nLbino6dn5B2FgpR4DvFZ2kGbbT+IzUkF5TK
	 809AFrweqiQA77zR0Ys2bshlZRx1fcofOA6iUJCbSnqgrrE/aThA/Zs4Hln8QP1Src
	 +lE/x9ZKJRV+DXbR9xAxoH+fcCetD129jjOYdiOGDAffXAGna0MsRF6DVp+ouktnV/
	 zy676cRo4AbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6E8C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663203369.2153.9578787472114222551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2cfa28374b9522855b3d3a92253c90f6e8b6323b738553f384631657858669
Date: Thu, 13 Aug 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786632033
