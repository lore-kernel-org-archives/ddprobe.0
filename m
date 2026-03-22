Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086D9303A35
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774173894; cv=none; b=ZUb6H7X3SFdfd+bL2KGOXhQlaxKc50GzPAzupOG30L3m1iPqdxA69oIvjBOz9XHAVN7z5Wf1GDxrGhxH8YcURs9MbxB6igFK0pYDfw9+xBc661IbDsUWY1VSPDziNGpw+nzjcIsiUwO1LtbpAbtvhApXZhzxNfdY0lCchrH6xes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774173894; c=relaxed/simple;
	bh=028qglBDtBdkSdfEKS3N2QXIayFOmFwsmwuz7Ko312o=;
	h=To:Subject:From:Message-Id:Date; b=ICqGdiLT3J5rYqHgw68a5NcF8WcVBCVcMi7A80mRgknRY+sVrAqVbN+4nyOgYcWvEs7uU6Q8bk4IcIyfdadtec8fGvecHqvGPLO91E5cJFrtCJUFmAKBOkuZPiTHgyhAQhCfUz/VuBcjtxrv5DRD9zJS2MqPBqRWOcXLof70Yss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVvX8eB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVvX8eB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE3C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774173893;
	bh=028qglBDtBdkSdfEKS3N2QXIayFOmFwsmwuz7Ko312o=;
	h=To:Subject:From:Date:From;
	b=uVvX8eB8cG5wcebIbFrq6EgF0ItnGZW9QLEt+vWnrq4pnk7pdkhIqpksTK4jeo/Bg
	 5oQpIVmrA2i3+oXB2eUN7QGAwyBtsV8nVeF1DMYNrHL7t7f99yhnZ4zw0yvFyhrhzx
	 ByNa3STDnAeMdRJwXn6CRlx7UKPVQ6w4ZxIjx3Lx7g8dIiFhrH6ErnFW8qo99VaR6d
	 Ds8N+Cf9Y23Ual61dpVJRS54ZK48WVniNv4B90wh/Y8Hcnoht72oECT/KMRP66o7ZG
	 GHyVQgWZY8kkLCuLUdb996JBPTUYH1lZbk505WNDX0MtL5Lofs+VJcXHG/sYLqP6ks
	 9tcckC8f6MYDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA0FC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417389358.28676.18302557719721746080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e765443fe470eb07cbae954de1dd01b952205c5d3264915c6708781712b3af85
Date: Sun, 22 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774173893
