Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A50213248
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754863194; cv=none; b=d/q3BAkjw4ZoWsFF6sO9bZ8JpmWejlm1Ghvu7GHqGGksZMZRgJ/WKjSkIGWlfULsbPwo1q7G/IjD4cPRbAaDZgG8uQiJGA5/sNwXRCZHF1UavrXAmsTGlmTEHkowDLyCjWo0LTqWy0iBRMiA7xGZJgAq1116o10o+Jh2SpNa9X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754863194; c=relaxed/simple;
	bh=RKiz73w75Mc+aLGlpJQJikDg2rLVkOGdFNTVqjZfEBE=;
	h=To:Subject:From:Message-Id:Date; b=N2JFaOR+D6XlaAuwjB/7QSf15EQcIw/KoCTzh7En10sL0x+ptEH/7eM6c0BHsWKcdIMimL6s/L28ZvIodg205kb1vCd7s3EAfZGjYxgowLw2PzCJQeWtGFtPdKnpgN+2vYb5pOukoytqcsdruZRrZxJyZsslZgNSXZFPW1f2v7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORGUMVB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORGUMVB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754863193;
	bh=RKiz73w75Mc+aLGlpJQJikDg2rLVkOGdFNTVqjZfEBE=;
	h=To:Subject:From:Date:From;
	b=ORGUMVB4M3f76RZ+gyvLckEdKqtZ3hpSONWIpl1mmgwSgW2sldQn1qjNzbTvO6raf
	 kTVqlnlZR4v4FUicR7j4pt6dlmEzKJ4mSndeE28AzoUEkOfQOns24UuCeyDpRsA8jv
	 AkKLhRJS5oZcKPFyLGSBnFxDO7pM+HmWamI/ubgvgUNRjrPAgtx/KHPT0PcN4zGNGB
	 /JnxbWUUi6R1M6nJ2VK0LTx2apQlYib6bPsv23vyGBdVofqcHOQF5D5skQSG1b42o3
	 Ra2q6cNT8PPfM4VZrTXm2lRZipkIoq180TbDasDFKOZS3y8OKHOCbrBGA+J+OvjT9G
	 o5M57H84G/yog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486319357.25736.17282463159018716976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69db4a21de824effa1769aed909d2a34158aad822598c26d7d91834f842ca374
Date: Sun, 10 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754863193
