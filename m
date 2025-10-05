Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD251CD1F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759631994; cv=none; b=kS+8xvIi3PknxpLnANBwdYJPOo22pgcJTxCUs1fx0S6vM4jJr04X0+G+mlRAaXrb7uBDXNEMt2kkYt0JcbyGw1kL7g5Uu8CNQ+lae1G9gDfUbp5LeO0L3BORsxdnlRpNrgyzFlI5aJHG/mcErFBq4EVPcZ3oz2XbHI2e37H5D24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759631994; c=relaxed/simple;
	bh=QxV56cVeo25SoJJjejIgDa8DLgldtAsyy78EOir/mT0=;
	h=To:Subject:From:Message-Id:Date; b=Os3rFx4sh1y8CZxuSe5yDAajjoSkXt511zTxMuatgbEgizThh/FX44rrTbzk3qJ35xYV2M9C+CZRq4jM6hu75NIewDipJNZmcZu4CIzr7pPfded5WcGtDzuwq5q0B7dRUe74UIXlXDMGpK5OiRQHW13AsCbBQM77nF32GAV5WSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4XQxKmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4XQxKmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59E1C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759631993;
	bh=QxV56cVeo25SoJJjejIgDa8DLgldtAsyy78EOir/mT0=;
	h=To:Subject:From:Date:From;
	b=t4XQxKmqxnvNf2HbZdHK9A0taGN3FTTE9iizURWlBLhJj6/eMmnuB/slJMigzfOrs
	 PtJ0Vfgm2mGY+v7N6XEeeBUCB/ShN0Rbp/xWTR6AdyWlMlyhWry8KRk6McVq1s0+BD
	 qd2xHdV2pMy6r0SrLYLNPp4aQW8uuugrOVhvHv7h0Oiv5pUi2SuiRaFZFqXNJuOFYX
	 zKTEDK+F6/U98bv2xUiuV2M2YQzluwUIfxd4BRF/o+cX/7UtNZ/wuAxvT5geDhynid
	 NbooUytyUmOvMRadVHpbwiaWmHhy+zoWy3bZB9PIyOpww+cFgcSnSAByBcugasHNBE
	 g5h5IjLH1tjRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF3CAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963199358.19714.12216132620907494056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910e31c48aba08322d744b952564be659ae74dcc4794e0a1b9e057baf6ed52bb
Date: Sun, 05 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759631993
