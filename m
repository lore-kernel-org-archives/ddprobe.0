Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2606A31D39A
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789882834; cv=none; b=rYL2lkUem2UOEWj5StFAOuRiB6IfZpOBI0w3j8Sh4EsNnVvN58xTrCL7gGCDXsUBJlHzaZ7ypJzOirXmB5nFHwhgdNT5tgpMchpZnnRPPD9I5LUr63knAMKVXqNIu1mA5g7Fgycb1YICMU9tf9dam2fzuRd4qaQXvDJVYU1b7pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789882834; c=relaxed/simple;
	bh=O7kNpWOaFNi9YIo3UvByrbOsJSLDaWBVe/P3bzte2hw=;
	h=To:Subject:From:Message-Id:Date; b=GLfvdvCkSdsSFG83dkUfKO/yET2eoDdWGZRT1qHVBzwHlbGEbmxWnBl4IIrTDie6UL8K1cu+BL8X2L0zB/6zEzNVL+72YIiUwIOgVfZv7+4XMybTndFS6XAf3uVC8+wb2wIrY3LMhJR55XFyU8P+5UsebC7SBNzjbNpae84dymg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgZ0Kk4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgZ0Kk4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2255C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789882833;
	bh=O7kNpWOaFNi9YIo3UvByrbOsJSLDaWBVe/P3bzte2hw=;
	h=To:Subject:From:Date:From;
	b=YgZ0Kk4VN+97DtQ7gyl/sYM4TNsQXfDxZeg95WjkpNFoeqEqHNRLXp/JZdau8RO2S
	 j4YBCsjJkfBCyU42lGWxkNJn2Pib10JtR0+10jWcXBPAnRjYjRtVOKPpp/QexsNtLH
	 TjzLL2qgHdaA6TcJ7OO66NMJC3ksI/aXJxCkoq+AbYenvi3fRPYHij7cuvgchoxXYk
	 GvdYI/WBuCigXz53zIB5HlYppk7qizofPErST7P99QQOQHi4B3n42Bueyz6ZQjMoMf
	 x5rYSuXgWoG5OBmjD47Yk2z3T91MIcqN3eNM6WXfS8kXnG7gVT/0dg1ok1+HsXbCf0
	 ZVlCAqzGvc+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE51C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988283368.9798.9859794421672779765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba1bd2b32c6ef77f20150aadb9866a6ea4ab5b50d0a44e711c4fdce7ea80f11
Date: Sun, 20 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789882833
