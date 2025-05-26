Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46571FCF41
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748272193; cv=none; b=etNX/jzSdw8AxcGIFGpgapueMXdNRjpRuvbG7jvm6dFWzbv386cZYuLn3MV6qceg++ErIIW3QZwvsLvmX+Re0bLkZb90yzgMCYMem1AHcSscvbh3bXsdCfKGvx5Ykp7BmTv17weaRmAKxdZ0zUAfkafwyBOR6IPLcnNudUyZPRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748272193; c=relaxed/simple;
	bh=9ZKQDH8b2u57l2kBFLNkThM7tFj7vBZxL3ikv7jeM5k=;
	h=To:Subject:From:Message-Id:Date; b=LVBWGH53Rt9RuWQ8SGZYX88CoeRaUyxrwnpYaIn589+51El3UGRLrFioIb2EmRUfxpF+SY7YZTR9mV8dvKn2SEpLyqIYGNvIjjB4z0f3mVPutKgUtEeIOmsJF8SCqnnpP8ECRpfi2F9IMrJXF1DoKbd8RVSsrliRWFafU//bnps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ua/gwvlw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ua/gwvlw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748272193;
	bh=9ZKQDH8b2u57l2kBFLNkThM7tFj7vBZxL3ikv7jeM5k=;
	h=To:Subject:From:Date:From;
	b=Ua/gwvlwqLUQB0n3KlkFtC9JaHmk8rqsodFk8VkqMEYXAM6XKd5HAYJ6+OANCCjC7
	 8WmwnIDBOZCITINbDhWPQAjm6M+79jUoQqsQiXmlcZoNE0lRy0cr71omXp7IEwtNcy
	 qFWYlNEA6Z4UJn9jGIYmpY3pcguJbUkGQKmll8sozspLAgaLMwO5gWf6JyLBPraKiy
	 7ZdLJL5aHba65YfhTud59z7NH4SbEQ2WajX5ywLZLpaF5PjEloVK3/IKGpGg+CVAbK
	 AYsAyf1LxJn4OimS73gcc/10qTCE1k/58lLhPhh5yDYp/ZoziYaM5n9Bsf6NAutfDq
	 mTLxfJRW+DGjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F336C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827219357.31225.8033220085564842101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d08a4be70d7fbeaa2d54b0d4646d2ec7cf52348ec65317ce68df79537d1820
Date: Mon, 26 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748272193
