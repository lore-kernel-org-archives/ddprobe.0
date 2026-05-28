Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC233B2FFE
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779973954; cv=none; b=lsOv7607Ctg6TUJ61GpcTSRLfPNGMBj/9O9DB/92twuT3VBAj0ZqByHrb7tfBdPWclEGW8XVhJUDWTS2auGFhWUf0pmTRVlNQJYUZtY3/TXh8bfpCC5UaAksQf4PNL5Fj6nHdJ1CulkxQapuR6IMd2Hcn0a2U5LlhY3PWMIx3ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779973954; c=relaxed/simple;
	bh=peKW/B9W8p3Dpw1dzoPkOF0lxll9VDuzE1uqbXVaxww=;
	h=To:Subject:From:Message-Id:Date; b=AZrgbPiwLAdmEoxDgj4y7uQN2SncytEzj5nBnFVP5I2MSCJTOa9dZLUWUtQ2LVzHrBQrDHwx3uqqJiKI+xpTtW4liar666izJqnIoRL3fbQZBEogf9bGi/osoYWZfX3L9pwKcEEp2Q3ncygibPLfUG+aBco7QQeXeCJ8JI4yWgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stqGaM72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stqGaM72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2676C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779973953;
	bh=peKW/B9W8p3Dpw1dzoPkOF0lxll9VDuzE1uqbXVaxww=;
	h=To:Subject:From:Date:From;
	b=stqGaM72Pzk5sP9+8d7vVHQIFGaxmYLNjVSqapV5BDqdHgDnWx6ASZXL1IOKdx0ij
	 SKEOZ1LI+wZMuVb/AO7lag/4GbUO7gxAXAQAzKPWPX1ztGKtHVg8aYnQIETIcm1HAS
	 CHg78pQHg/O/btTl1VVTgUI2+/07g9zw4O/L2yyh5f1mSs7JeC//p9/zrPG7sEgIzD
	 0l6BP/76G6TdxxyrPvQxUfPETpuAfOOIzHP+8hSuwNFBGNsevFSli1UNR7CbmUTKxC
	 6KdGPKd07Wl+UoJWz1qeT4mm7dar+xQzFsYyz9/UBhqWATHwBu/heJpPr6ZS+ucZh4
	 RdAny+NDxYkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B5ECD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997395368.15781.1988068309757042733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7c9236dd0883978011e46ec1bf8559da45149e9e925d4eaf31694fa27d945a
Date: Thu, 28 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779973953
