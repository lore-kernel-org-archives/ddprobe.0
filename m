Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A26234A3DB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769061234; cv=none; b=MpYmvnqZ88/bqeVUdoesT6GLz/MHh+0ptRSbqw7rZdF5MCq2rAaxCC4TRPJDMbOxtL+V/hNMPxRLdmhd9rkoVlSroBG2sN2KeraNOX4Mu4EDx05GGZJO5uqcCJW+vwWnuXJeG6ZCmb2qvz1pfKDs7xo6/KwcLZ+3aOZOe8F38K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769061234; c=relaxed/simple;
	bh=gIRSZrPXBDMCR9ucf4i5N9QPLg/c5rK2siIikwX/9wg=;
	h=To:Subject:From:Message-Id:Date; b=jWZlzmP0dTx0puF1jlseKNvFCy1Ed0W+FiIFjrwWeZ6hH4gQkHSl92yplt6OSWfSoerhoRQvTzzGFlO7DG5NQy5YA8YtoidqE80PoXfwdzpqLhENxYvEYbuc2qCJK6F5R71MwNhVXqqpkI6unRF1s/1ttHcbfJ4J2kCHb6y/ZoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhDieoOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhDieoOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7E2C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769061233;
	bh=gIRSZrPXBDMCR9ucf4i5N9QPLg/c5rK2siIikwX/9wg=;
	h=To:Subject:From:Date:From;
	b=JhDieoOwp3KYIPhds6h53ibRP71unaMXwlIu/EeFUHjm/dWRx+gadG9hC7xAumpjU
	 TaErpLi3CnY2Hl1ebHbUb0uQvqGIh6yNeqV4n1NOnyhj2M0+2Fr0VW4XV72rjEo0lR
	 3JMjJa4CPzDecrDA/1Glo5HHDBONd8DHpVu2Z6c1CVj0L5NATFxt9sBcsg/dYT7GCT
	 /o7zrHZud/r1Hya4RgJ5yIDdoNZ3SG7hlPYxSvnIeBkYRCE3/QckkYlgN/0YuuQdcO
	 sN7q7apYeBMcL83G2E2yORSpsYyePck1PnFpG4Gj0a8e42sdqvP7lzgnIG7nZL1yA/
	 LV33CI6W60YRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC04C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906123363.5984.12560150197623304736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c85bc6d21a421cadaf521390b6ef93925c660000f5443b44a5aabf867813e2
Date: Thu, 22 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769061233
