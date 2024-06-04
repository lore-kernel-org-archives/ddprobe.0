Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D1427735
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717478723; cv=none; b=C+zJRF9VK+d86ygHvv2QUIWN6pjS9neClZaMerPoE4P2b/5wVkBfRBBQOCk1Rb09biQ1cgw1pI8i1OzMkXeV3NoJ3D2a9mMPQwvs2rvU3xoHd4bMGLbYcqQm16adWIArXmcIgYa/2TO0QsWKG2yhh5Jdd9fP58ChNRXoHz303CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717478723; c=relaxed/simple;
	bh=m5WYDf3YS45Gs3/4K1Lszdk4WPv786VFFdo21eAfNpQ=;
	h=To:Subject:From:Message-Id:Date; b=MMtWXxXueYJWIon07+WBZ55mnTkRcAeTcK8fkksmv4VjoToLvXD2S9r4gM2pMyVd5GGO7dR4LFuVUgXE9xP38/lM3+NIxhqcnYqHJZuawlBtHt5i9AzgfAXbEZo+suVp7yeJZbZLwLu49QgvMAkWSoFGTRpnhgdriRnc2AsT+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/19wPJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/19wPJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7553C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717478722;
	bh=m5WYDf3YS45Gs3/4K1Lszdk4WPv786VFFdo21eAfNpQ=;
	h=To:Subject:From:Date:From;
	b=E/19wPJHnV+a0QNP65Q6HgFxvAjMDsPa2vrmRVrrBa5IZ37p5YODAwFUxoRd6TRpR
	 q4qnQUYLg5zRWFJxyGnXqR5kqnTkJ9SVNfoG4aupFTx09WiGUctzYV1svc5XHL+0wQ
	 tLFSHokjPKwZ6Su7qSKsrgeuNnJTTaWRCM7gzpNugSqC7xI3vD+aSxlciVpdec2dJO
	 ppldJhQmO/dvwoV5fD5sUh0VQxvXHRbXmLsE2eojAJu818pOA/3CVf5AZ4kOqk0h/t
	 idaNRdKcFlR57jXWQyvolS0lYpB5yGsbJUiComMgjqR443/pVe09u12BpzNSj9GUwb
	 Vbz0eDtpBikvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E2CC25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747872281.18758.6949759179820777960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acd41e505bea788ac47c0f768cc7550a42fa921b6cab0a86cf6b8c6e528001c8
Date: Tue, 04 Jun 2024 05:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717478722
