Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B95E30F92E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780774474; cv=none; b=CzovoR1Zeg4jCfejsvB5Lg6om7jRTH9lRfSGwR+cGpjNRuWyt40VBhpz3w6DiZfS+WvJjpxRJ4S05iBrk6AH7ljkIQ9XHBv3OgOLu/xpkNOZDmUBwwd1U2ZKddxkw3TYhuLoFiVBOcoIxdR1uS+uvh+BM2ZoJpxc/+BRTmTKlR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780774474; c=relaxed/simple;
	bh=j3qKd6CAVfziisa6Op6ZRjEPJjKWA3yLywZ0p9+OLJM=;
	h=To:Subject:From:Message-Id:Date; b=tinQrTq9qvV+DVVdP/t6AC8KmcfqiL7OgioIAWylb6eOUqGE7u+TMPCy7ljl97U5lyydgVqHwmYUG9Geyx7ZPV5hGtyTFNT7hspscDytQ1xaRmjYE59QFE+FuQiae28y+n+AtaPmZTema56EbgOTFYHtynMbRWqXp7DySvf5bWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuWC7eLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuWC7eLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB1AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780774473;
	bh=j3qKd6CAVfziisa6Op6ZRjEPJjKWA3yLywZ0p9+OLJM=;
	h=To:Subject:From:Date:From;
	b=CuWC7eLQH0a4spH7gTCEJ4ZbNsnydcZjnmtY19Eo3k3RUHvfMdpAJDdgNZCcimYLK
	 Q7SwywEDHTlAf6FA7du1dRviEnsh+W9TbyajYOKo8IEZs8eXTVTKJ04gIiulOzxBsF
	 hHdZWBbB2L/AnMfrrofQ2v0MxQcXKP5yaJt7SbK/63dAr3nGKLcVT/33RuMM+R2efY
	 tOi7wS3FEMajzBg6cisgqsQ3/fJWU0I8naRhVKHA6KdZba1yBqOx3Yv38r7dqMxRzK
	 H6SAIhd4QjV4hcLkc5YDijGydyoEdr5cyrIWoCE6PfAXvqfDrEuOdataCB6NKYIXex
	 eqPjz9T1HEAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2824CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077447369.6253.12668168269031472519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e31075487e7d30bead35ea78e48cc2d35cd38cd08e5117a0e9b55bfb15a199a
Date: Sat, 06 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780774473
