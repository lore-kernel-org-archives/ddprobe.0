Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D317996
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213795; cv=none; b=dcIKKtwvxqImnXjnaPV4tjzf9gw8/V50l1N3pMmx0jLrYeHvj//95bzP7j2b8S1NgUKOTqIv61WY89tSb1b6OBAo5EfZFU5PB2Tbhr8nxbt+EQlHg7bHYwkKysSE8yMMUHHrzrKVpG26X/AHbIy1E/X2VleSEIqfuiR1yoAkt3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213795; c=relaxed/simple;
	bh=P9eeJ0c+SZ10mntUrC/0V/f5DAyNcRDDstqXk7uYRsI=;
	h=To:Subject:From:Message-Id:Date; b=RRFH8DRCC8cKSifjhZVl7H8XuV/4SBQJpfZVlC8h0uC6SujM5DghAMIrkfXB24DbDxb8HQOYsSS9jvDM+tUR+f2SFiDyoQXHCebPUnNoZF88vzWYbZRsRCD64f0eKHiy19t5fe6AwGNb1ExDYclJ0YGcJDUr9rnzFPoy2piH+FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0omaAmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0omaAmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C3C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747213793;
	bh=P9eeJ0c+SZ10mntUrC/0V/f5DAyNcRDDstqXk7uYRsI=;
	h=To:Subject:From:Date:From;
	b=E0omaAmKtRLAH2PE2orivb3SE80bX+Njyn3FWah6/uAQ/EB0McC1U2ISVJkaKnBBk
	 WjojjgMxp1uWwJX3Cl/Z6wLZtCZtK9ZQpe59weDQ1KUKCrO4Sei5H94xxh8Wq2LT65
	 4+R0T6tmnrnLkwISGOZ184VndB0bfqOkgQKTNnLQrAKbu4svxqXJOrRYVfovTlcpCK
	 uc3jGrsKULFgleSadG7ZW0D9dDPzwK2vDfLMSWo2j+GkPD5S/8WubRL6X6+nc7wuMi
	 WFZxDe17lILrs/wZ1xpyV1YyiWI23I+nwr83H55F7qbNw47p6tnxphqDzD4cbRtrtd
	 YFIDbQynBaQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED45C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721379357.18188.1361869621632739411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a336db00167d84231cb08fbcc5d8b4f52e83256693302ba79fc7d555ef4e2bd
Date: Wed, 14 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747213793
