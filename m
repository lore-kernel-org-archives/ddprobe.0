Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2149516A940
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725099954; cv=none; b=GzGv1HOxNIsUZ0WP5XlydHUx4eXH4qrd4qAhNUK99Hen3U88MrImkYd7I2wcPn3jy6FS4lVGA2MOs9Y9LmXuWAGBZ54+BtogkesRV1i7tJTJZkwCyhX1lo74VgK6/Lhe+qUyvUUxhJ0jLMkaz0zi9Bd+HWBDekzKHgmf0uuPHVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725099954; c=relaxed/simple;
	bh=aCahILEjVtE38Esj+uQOdzssLegeaXl4X2J4HWjTe+w=;
	h=To:Subject:From:Message-Id:Date; b=hHP9Czqepg2f2yQQxDUXQgP9/FZX436zQ74Dfv7JRt+wLuSO6vQpQPjpiuzvhLAjcMwykAMGt73uKksBLIAN9Bu1HbPve9PKAXNIC5Y7sXB/7+7cq56k94m+cL7MfkJ39tJntF0fJBwZzWEhj79YzdIZ+am01yei+3kpzuLxV4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRNTube9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRNTube9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3187C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725099953;
	bh=aCahILEjVtE38Esj+uQOdzssLegeaXl4X2J4HWjTe+w=;
	h=To:Subject:From:Date:From;
	b=lRNTube9qQY90++HyT/1GySWH4CBZ4oz6iqbHezt9agjj2wk5l06opFH+nDNGyCXr
	 x6Of5Fo8OVyt8FnQz9ORw+L6f+qesyi7RYldgq6hs5srAI7XJhyZy+4jcyon+VkDw4
	 G9inerj7HgVL0vyZN91qa5mNZnG7wWDmrkApmLRiFa3UH71LsoocCfmpS487Uzf7b+
	 o5+mcy5CellP8I8Qkg6KnlpTMHjjKOCvLGeLcDifXa4pxc4jfJcWasyRZwM/hgvKFY
	 XezMXG7I79Bx/ugQr9rWTd0tY+BNObIAOYBMWtOHXercBj/zw0NUHZUUOj7pYBLLV2
	 j7xSCELPu5+Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F11CD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172509995360.10438.13785761226291975349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b91f0e113249f297ba84a1d2318311f6f42ab2fd623aa40bb3b9ef9f953472b2
Date: Sat, 31 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725099953
