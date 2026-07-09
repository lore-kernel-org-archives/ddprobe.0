Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360D93C454E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783583914; cv=none; b=KRX0yw5A91UxiTCaSKoqAj82JuyV0NE/TXfzLmwyFaRmTsepn9Zh0BbGFysHKVigKYE34B0K9WThuZVrNodLp01YVjOTulvZ1M+74AoygyAxvK+0KeQPXYjgliQKDzV+9gLhGuVTd3N+ymIlE+8+ImTrHfrJAOcJppcyhic8g4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783583914; c=relaxed/simple;
	bh=mGrVLD05YtTk+lDPoRjelCeOvasLQ79sm4crNclXvwQ=;
	h=To:Subject:From:Message-Id:Date; b=Bk3xFMtF+WFoq6lbp6SjP7wX0grBVdHX+h+DgVkozxyrr6NYzOsr1XqNNUCqwJdc27DIsmQC8GnSiyCKzEEhqv5grCE/jiP81HIaXOd6Jk20gHNjXXrkvtR3G+PuEaP71u8cqcZr78kN37kaPSMq5OKA6BcTDSe01v3orem9zvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNu5zJUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNu5zJUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3324C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783583913;
	bh=mGrVLD05YtTk+lDPoRjelCeOvasLQ79sm4crNclXvwQ=;
	h=To:Subject:From:Date:From;
	b=XNu5zJUC+hQAK+R7aqMftywEiStgYi36yb7WBFl+SpKRdp1cnhHefMP9RCSgVnbce
	 L07v9j4JeAmnaz8lg55tfIaqBckayfndz5fIvZFYfxG86kx9xEdq4IRfMZja0UFQmq
	 8kTW00SbNIzBNfZibWTvoqrHfU/W2vi6jXWyorgb3Jx7oZechluzrGCAv3gJUqKnZl
	 0xiO1iIdOqA9ZpzujyIcpo+NzfnL9SUSu4dJR3ema3MgrbGSZhKcVtebhXiE3a7utx
	 xTCDf97QK+IGMXEwWE/UknyUAQsULD8H5LZrDwVtauAiLN1goOXP3X0tDOohLzv6iV
	 lYhUomylIqxug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD2C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358391372.11478.2782862461450074890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06092cfded3975444eae53e2b4ec78484bec0e4edcd6c3328e391d6e070b0dec
Date: Thu, 09 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783583913
