Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF87245005
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752144594; cv=none; b=Fflah3k4EcC/8LGrxPqrQRvZqyXigGP3cdT5HT6JH2vo6lO8xX97FZywKzT7JImGpINJhiJw/DUGtor3OPZm005xioNS5uf5+ZcN6Br9AiLDMtq2/WgUQEAOSo5847xSIban9WL0NTLerdATjTY14B6TnSxmcG1Frx1dseHMB48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752144594; c=relaxed/simple;
	bh=8V6iqd+/EALkyxhrLyYMQ91tBTgg03N0vm+fOTUlWsI=;
	h=To:Subject:From:Message-Id:Date; b=gT8gqXP4LsgEjMyuzVSh9RoFvyJgrsOauLI85r0CegPCZ+SgCfWS5DzOHeZ4+J/FhV6hbE1F2p2NVjKk4ZNmqQ6kF3F897VnKbs4JagKzyrFZEWXXdEiUV2WMbo9dHyodqVTl0rAqiVP7nhz2cMsUXY0ulsTFU+RgDKivq740C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeXueWgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeXueWgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56BAC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752144593;
	bh=8V6iqd+/EALkyxhrLyYMQ91tBTgg03N0vm+fOTUlWsI=;
	h=To:Subject:From:Date:From;
	b=GeXueWglA24ptpKQK1rpdKnVJyXnf62cdue4LxC0cAe9cBm6lIUutnjzdD1+m09+J
	 bTzooK2avGL/0gFspZ5yEST+SyzoeynlgMGfvRRq1XEjxrYaKxL7ioLq7fCmRL6WV1
	 T8rGkfrhq3DX3wil3+0rGs59RMerVPicdF8akmTNIySkW6i1+t3DDAr7DB/Cwab6QS
	 OTd7BRX9wqcJzv3FA0Fn/JmaIZMlwMy4D2T5Hk7Orei+URhN2bkEQZIfexYab6FeY7
	 ywiO9YTIDLeTUTzqQ/PYGNElf0uPZkZ1MmDFpWLrpbPp/4HEYKTAE8NlGtxwsCnbhy
	 r2z7GRwjKCOlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D1C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214459358.24174.7769616393651295325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e3b60ad3077c4ad92338b4e22792f5f81054c31f27897119cf34ee0c97a43b
Date: Thu, 10 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752144593
