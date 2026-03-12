Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DDA3AD528
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773353094; cv=none; b=EkSsAbEW+ryJMWaUuFi0ifqNJCtgtQX/lq4QGbMHbg9egt9BmY0x4Dw5jqdKq3xxLErOok0tPiFdkBfcrMdeXmXCPICZ1gLliWqbT0Uw8QsoG6yC+Ua+hHlF0fQA8dAlu7Yj+ocTd6toRlg8efyExCqfLMxWW0d4KLnxxUkO8MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773353094; c=relaxed/simple;
	bh=4JY7KkkEpozdtfgKYxtdvFdvietx86VxuTLw6XIrU1k=;
	h=To:Subject:From:Message-Id:Date; b=uLB8BKxPXpGlBYwdvjQDtmR/V8vqGg0xjVo7cXoQhaWOIv2/lldAi1V1AKavIAqFx/DUBt3N28mzP/M6R6ILB7qqDM+l1OcCaWTxx03bGcqrga0kxXNoy8/bjrrN3rfEfma4BwiZVN/haniyAc4qrFfNTx4BfszGdxe44YUZkK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqnLz4OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqnLz4OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773353093;
	bh=4JY7KkkEpozdtfgKYxtdvFdvietx86VxuTLw6XIrU1k=;
	h=To:Subject:From:Date:From;
	b=NqnLz4OFtcFkqAbFuX1hQdCGg5RFdmZffmcH+mrmTyecRHFpJqHPrImvnS7wYKMGS
	 Sikep4Qk6YxsgQbyM+ch9+Qshy6uFxXP/R6CmXKzt0tdVsqtPnCSYCvjBQ4WueEksa
	 sFXpDpJLbCh1FrO/vtwtsGmsKbqqPGuvYQiySHCaM+7I3ldqGeBeH28yBj9oZEZGVj
	 qrqNHB8MlYy9cAeh8ONmac6OT1XKOqsdQoPkqUbfXYkyENWxHCtSRvlnUBVR6wVRCH
	 vqD+CyFQ7HSWdNycAXaXDT16p4BR+mrIxescEz7Ga4xxY7yYtMz9SPlASzB2rars63
	 P+n83uL9AbJ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE62106ACEF
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335309357.16884.3800324951108872378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3baba5712c428005a9d7963b844b90b1024357d35af8158020c0ef21ca0d6651
Date: Thu, 12 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773353093
