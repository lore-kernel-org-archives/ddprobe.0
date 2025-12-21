Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECCC1C01
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766282034; cv=none; b=OjdPPRkEm7einJMmxsoD2nxiWOXFvW7I6dgT0sykreqEy/D0er6cEblSnb7WOUhpHTn+hTcG+hGLAhx/f0moBgwI1sETeCuZ2gUjoAZzR66V5ovRjR0yPE+uwMtYbQzOJJtZZPz1ABTLwDhkOpWbS0H8NK9HseQ6HyFfpTTIH/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766282034; c=relaxed/simple;
	bh=0TTJ1/BX+gO/0HCtKRZ8um1v1/vK08WkKMAVboCKUeM=;
	h=To:Subject:From:Message-Id:Date; b=fz1Mt9uIABVLOd8BXqLg8W+qq2VK8MNFaUDlqVnxHh+waSDZB1Qks7QFMf9kRbU4+GeZPPo+wSCCOf0AtxBmCT+KuaeHcE6q2zZAp1wvEC4avXvSN7yRCiHvYKmiZGp62fRiUpao61drJ4wZA7sc9dQP0Jz7Z8nTPgowNVRhh1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYY+sQYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYY+sQYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622EC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766282033;
	bh=0TTJ1/BX+gO/0HCtKRZ8um1v1/vK08WkKMAVboCKUeM=;
	h=To:Subject:From:Date:From;
	b=bYY+sQYX5iOeUvdc4XveZPAY9zJnjui1mzWPvFqDzQy4LfaTuux+MVLvM89myrX//
	 hKo5f9bAZM1DMS6DELvhUWrmktsP4ujzcNrRFuhtgnzAQpAefHpCnZJWHySF/DY8qv
	 wWgLSJ9ybrYSUF4AFO7jqEVv6b8w2CxjVury5gWjDaQhGtfpNsBah8EdUYKvQKuEQv
	 fC1QXXY60JNtxjJw2yTaK4qatBHrNBrtNs1w+8Z+J/zvIDVbXYAkj1iycZ0iquVrxf
	 gHFFG4fcvheFzsxUPL5MK09fN42czdDCiOwDu+UiUYmrVrgm4XsSTW+Kne9httEzZK
	 JqCqH6r/vqeEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93471E67496
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176628203358.21514.16736857668407611504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12464633a3c3d4a317c4e8273c0a1cf64a76f4a881fd730ea58540fa9311a853
Date: Sun, 21 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766282033
