Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B14B219E8D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750418394; cv=none; b=AdR5xKcUWDu0A8fX53iWXIs6fM6mrKwDnNIo0DISYYPxA05PdTP2RyDIOW+lY7naXYRCkR17neB06gbQ2ybHZ9ymy3mVq7cAz2/5t9tW71301Ax3a0DepSiuEaLgFuVgMSHmV2KQ8JQf/OYLL5aUiEj7xD4jzJ/cDWfBfU7hVqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750418394; c=relaxed/simple;
	bh=BkWUuRDx6+tWHerXYE0WRkYcU/yfAkVdXP8dnv8GlPM=;
	h=To:Subject:From:Message-Id:Date; b=VoK1vD6IpSpT+oIIW2nW54W+WoQ6L5MwA10eo37iyjyRgtja3LIS9S4FrX/5YLbPANeGDn/gI6tXrDy8RWsxoyikmsMv4Il0L0DNlsHFG5ZT36bOtkNoLkP6AYNMediyoqLm3LFZZQLmifJGdXEqeUQsC8KGKmahWxaz7LPgcKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmGir6ag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmGir6ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F16EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750418393;
	bh=BkWUuRDx6+tWHerXYE0WRkYcU/yfAkVdXP8dnv8GlPM=;
	h=To:Subject:From:Date:From;
	b=NmGir6agiY4UCEE9CxLFKLPJ3pd0g7OC1YUdtWvabEPk8o47xT1q2cTsPJu0DVCOt
	 CgLidxhXPhWBOXYE/fXJ132zuQNSUdRX/kqWHeYXOF4iYkk0OeX90s627IlhQa29OY
	 r0a9PrMdrt72nTJLYlHknSD8/KM/qMqU5XdFMZ91qZVeDa66DCkTdVInYEOofMtFyd
	 EL5QQh67a+h9kyKtUEN9jdDHjAfw7es0ptOnN0NLIamW4e7EDENPrdACXyWvQzwCtU
	 Z0uLGKtBOjbjMuvA/qy78c3tOf5dACNiQ/js428VEajEPyfYJ/Z9sy32H/ArxNGSGR
	 NSWnY5rzp8YVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76AC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041839357.27434.15901552861080797507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d279ee6c804b11bcc15c5249e09fe3ee4dd6c6a8da284f75593d5c2dc2043de3
Date: Fri, 20 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750418393
