Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D7B44B67F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785515434; cv=none; b=GLYcHZ5rK/vE6LcdGZuf9cYk7ERdmyK2IJX/KHxuasdQmYGvTr4atqHIGQQ5LgEsVnOzk+PZvQcjCvJ4NCTZXnSKsvwhwjaCmuMO78djr8WSLi29YDZVdYEUHyj9yR3EzEJ45gXsAVTiI4CaoUDZhPEg3vq2SACBp1XmanubkUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785515434; c=relaxed/simple;
	bh=efUv13UcFcqMwHd9A9FFyG11ZjoGS/Ox+OPKspQ80VI=;
	h=To:Subject:From:Message-Id:Date; b=FWepV0xV0oWvV6QT4aPaw3xMmm4irg65/SV06yr5CQ2DRRVgW7P6TEHCszFgSkuA1v8meh6qQ7uYLUJ45qlg/69mE4IT0dAkFM7GhzO6hog2s2MwedMiTg++r7ObuIs9MYyKo2iYmPtdEqa4eMActzp/3m4RrgKCBjU1aG4dQPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G66OWJOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G66OWJOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF61BC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785515433;
	bh=efUv13UcFcqMwHd9A9FFyG11ZjoGS/Ox+OPKspQ80VI=;
	h=To:Subject:From:Date:From;
	b=G66OWJOekkkrDTR8eh5YErY7tJtwCTWHJIMhPK3iqC2ziu6sXZd2yUlWMcYmPtmwj
	 u4QgSTjsQt40rNsWmtX/ebBDv8g9PYsp61u8Iik09RugfSenjQc7Mq+pesFKH2oyuW
	 8t4RyejFxKHU6i6sIN4Js3+G2JCy2ZBgnj/wUdfPdzEsFrQT0Bat/1YATo51oqGZ8n
	 b8d/Ioiap9+AsIqjtVUU/5iy3284w1U0FZYKK2CdMXW11wJOjriWhEBkG0bQyy0XZs
	 m1rgEjUviX4ySp5gaYVQoG4k/3IDgaLsV2gZ2cYX2kkLSeJJ5bnKjVsy4wIosg2OLX
	 vnXjhKjKOdebQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1FCC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551543368.11136.11706503483011473280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e67194f794a08fa6e0d4ea8ca4e7bbf8c33dca83e07ad2385e6f4f24d91710b
Date: Fri, 31 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785515433
