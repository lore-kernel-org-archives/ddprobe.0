Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FF4325712
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762889394; cv=none; b=KiSHhF4yZICDaUqkXEQRLgwUrhk7H5IdnE30ZRQXponbmsetruh3gU/1wTYg9WCz6vMdgZNNEGfLiio2pX/qdt8oZo1bUpNr8RwlMBdaeOmBV9ZT4GBKlP5Wl8BcFLmWO+3X6FgSXyOES3leW/YM+h/EIwrXbi5G86/cXnbtI38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762889394; c=relaxed/simple;
	bh=XBp/XGdNdRHPt0n4NOPvfdxRNPOsrD+pB+f7kRGwtIM=;
	h=To:Subject:From:Message-Id:Date; b=pONKE20mUEbuY6rDXZXwNdqSyn0aO4M5oSYkwNoR9vG0O+7yrzDfX1HFS/0sL6Ej6/NmfE1uhjDTl4WuHAASzCcab2hgtmVo9hxxIQJQCXJbhZwvKiLj86V3KC/BJlIoVSvqkS9NozbU5FYEwLhyfxG3uNE8Tmgcz+ilzQUWIGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdjSnPD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdjSnPD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90CFC113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762889393;
	bh=XBp/XGdNdRHPt0n4NOPvfdxRNPOsrD+pB+f7kRGwtIM=;
	h=To:Subject:From:Date:From;
	b=FdjSnPD2Vxu5j0vhfnozvolr/ICMUahQfg9CdB6BPHaIMce3yqSStmec4PW8+KH4y
	 CJMAqoA++Z6iizCTL3NQyfxkpAZwi8MX5IbHoQO4sjmRRYqzi1MD5B5a8EuzKEsA5a
	 ct85E8jO3YH4i98dEQP3q7/0jnWmVvxvfhR7UzXPRwWbzeGwOE8xjUlgQhjFPij4Ow
	 IyrgQBWSbSENO8Xd8A4vygC4L19a28YS/AiYwdmgizE0oRIuPzKBUQ6nee+ZzYDi81
	 QHxBfG7mEtclsat7hbCxyN7/4ZW/6lno/4G6fJa5m5v93d+CauE25wgo0InJBtVkPh
	 f6LKDjxizbDMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C3CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288939357.12566.2758898600358746568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c806f7583c5db54be4ca009356052d9b5a46eccfc7f851c7d4ad7e832af2426c
Date: Tue, 11 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762889393
