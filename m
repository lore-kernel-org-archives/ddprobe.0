Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212E923C39A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762566594; cv=none; b=arO3tW9rxeNJlX/xoKyEQ0ukixeP/XTD77y86vVtLCM7TyDvfcW9Afl/uzcCqHSJ6yzuoEwiBKOWIinU0PhYrwRmDF4Mt7WzUW4sG6axC+VAzivCAtZ9iZCeok8VvjG9ykNgVhiQ0Mc0RFdn4CHJzRRAZaUvm92bmIvLb/wiJ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762566594; c=relaxed/simple;
	bh=tB+HcJxM2GlQseS5I1YTh/J+k2F9hx0UlvXMFKHuOdg=;
	h=To:Subject:From:Message-Id:Date; b=SBiCi9toq2h6m9JM1J0KAagc055NPse4+qKBeCDbgfQY6N+ccwVRcsVW0TncJxRATBdwZcd9woFLfY+L4j+GCysFIM0m820P+y8bAT8ep6zcr4MZ4F54hPCzyTQ348cOgVIiSPxacfQiPk/OVtVKsNvGiHIRVJHGGK6VXZNPlsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEe5GvBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEe5GvBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2E4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762566593;
	bh=tB+HcJxM2GlQseS5I1YTh/J+k2F9hx0UlvXMFKHuOdg=;
	h=To:Subject:From:Date:From;
	b=rEe5GvBBf0bl9AngSNhJjfWHN4btiLYZqJKPHuzghgL4gLDACQ9RCz1NOGNZ3PGLp
	 AS/yKqkH6LRX7aP5I06fBqzyWu+u+//w3qCv5SyCvt5YyKIgN+TY0kP7DoPuiIIBJy
	 VpvowduBp1Ig0IkHKqEvHW3dkpX0E6e8oHu3DrMSm2IZFr7WwhI2yHhiFt5tRmWUtU
	 cZL3vsISySU5ErMgacAvPi0zr5cPTgNgQL7LpewRKrTNvQrE8CmYliax0CPVCQ2yVs
	 CJ5kb2sKonUkLimVXEInVsLsr952i/naAmDQpx2eAM0MXqR/wDEsu/bMK4m1jh886R
	 zaXBLhM9vacYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A4CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176256659358.21836.2746826770296024634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431a3e17d528801287bbbf52acdf26d7564ed3c0a09aa7dc6326be501b139774
Date: Sat, 08 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762566593
