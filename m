Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A6DBE49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763099394; cv=none; b=UhVE+U5+ZlH7xqQFohpr2Wq8TyozR/bm+PUCgHABKTeHyUZMOv7UhdKxaNAt1EsiYa+YLjogkgY+SCEukaTHb9Lji88Kc7vrk3n6RXQcg72kcFX3lvbJdR8nd/THHoUxvfbwKHU1wRLkTDMA02eUqGQPf91/q0VwyhC67/1kWh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763099394; c=relaxed/simple;
	bh=PKo+FMcuB7dkIvrIP2SeI1+C20pqBP6IXllsu4W6kCE=;
	h=To:Subject:From:Message-Id:Date; b=smGmue8vbX3Zt8xryfkcXjWpMem7Y14pL9TOxtFOGNqeKL5cbQSz/wjEU2HsXzh73u4zjXJrixGjB7V8Sv0sykLVMOvCHCZ8cOObOfQbKjMp1JDddo34J3QWuP9XkB5ORMIskWeGzJwWns3eAK6rZ+oXITwRfZXQjPKaysPIxlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cO750FTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cO750FTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61BDC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763099393;
	bh=PKo+FMcuB7dkIvrIP2SeI1+C20pqBP6IXllsu4W6kCE=;
	h=To:Subject:From:Date:From;
	b=cO750FTnKImNFbCPLtgnvhVZpWVCq/E21ACVgodd3WbhpWflFOCPYhUdKlJsgHOQM
	 TB0rVS2n2xlyOKai/xyd2DG3rKrszEEzdOm/K9S+jo0ZlaMRCsHAUiHvj2c4qpOhXp
	 B1Z+jhjjs+zWecTFOhpsyBXODq1qs4gmmTv8GuLtt3WI9h83ys93oc6Qh1sb0Ln0XA
	 wvgcT5qE55/VAO8O19dYrn0t3A9fzQTWKn5QkkyfXLN/WVcgbrATIishkU6hpHh6aZ
	 SxbQLJzd1pWoPZ0VkDIjjkpw/f+qayMviLzc5WlxoN017sLkxt21/ZGm93SxoliA66
	 2vr5T6iURIAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9812FCDE006
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309939358.28510.10911202856177127160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79cff62126b498c4fc8ecaec83d9cb1768e276117dcb333f2345cc75d2a3d3ab
Date: Fri, 14 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763099393
