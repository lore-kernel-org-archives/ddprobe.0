Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A363101A7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767083634; cv=none; b=a0uMWk/GwzxzHxCx/SF5jkRLrLVaUKpEtLcLElG6fIPnP0FXq2j85PG/YxTXEOdtqMQcaZbTxM3GBgdtW9s2OfUhpWrCyJyLD5QusV+lUJpizQR3FcbAMY56zbW0DM7fITlmeW62DRe2kx8tmjKDb+mKUzJd8cuDMO2g/hXvSxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767083634; c=relaxed/simple;
	bh=ZczqeEDGBC1IRAPTzcLD2wQubdQ7TvDig8N3yeMvVJ8=;
	h=To:Subject:From:Message-Id:Date; b=pg8woIEwLh3iCNi4uhyteZlH5Ww2Xi3Hv3f19DROoOQJHbC3GkpGkc/qL9xSY/4WTr0lZ0RjO2FtJJWxKmuUM9WC3Qc6n1QIA7uYTDQHfDr30CIAiBwyruux3D/ZrhSNlwR3c8EYSUUPGokOqsW6RLD1CwlF2faEKDn26dNhTJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/Gztf7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/Gztf7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE98C116C6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767083633;
	bh=ZczqeEDGBC1IRAPTzcLD2wQubdQ7TvDig8N3yeMvVJ8=;
	h=To:Subject:From:Date:From;
	b=S/Gztf7BC37LZkTwq3CpcPZx6rRrcQwMyGfKsGJZ3zoTxj09wdoi8tClU/Zbqxpt7
	 p2nwD2HvXYG6YGKOSq6sDDS6qjiKo3r1UCNUQvfucrcxmawDwHUIsfwAhq+0mvWQTg
	 xpCTeNcIWucfDFXjPwM+wUZFq/nNb/yypmTTR1wPNELOnZ3nEffx3cUa/4zrQgWfrL
	 w9MRl5+zmpSxC4M9gSxWluJnfmFHuJsS7FKd3jn9xvEkQGPC2dKqYvA/QtifbS/3bF
	 8IyfnvRjJCURm55YdlaKFrpIQdORV1Hgz3OecFDi6zRjIHND5Lt8tvdbSA6uYlNklJ
	 hEgDhT+k5QtmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9EE94109
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176708363358.9538.1105453952008574680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca3fdacf5d0700f3488687bfd2b78a004d26825fc64374e61c9fbfb69ba52a4
Date: Tue, 30 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767083633
