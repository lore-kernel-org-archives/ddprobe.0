Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8981CAA62
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750114794; cv=none; b=c4Se5K0crp0+fAv/9ohMehaI8I8mhJSxyI686kIJyvnpwsUQvcGbnRWknnpttFPqWZXSbrF+pGTfnGe0pmkWhhKtC9jtB7XkAgRdMdhlLCUtICF81wkurDkA2DX5Xs77vZYEvVm7Xg8byuZw+qYQu9VH1H5iNLGShKj5sdSAKCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750114794; c=relaxed/simple;
	bh=eaqp+lrdYggcICf06LLKxWYyUZJafwpfrWt58dw8b6A=;
	h=To:Subject:From:Message-Id:Date; b=PO7x/TaM2KNdASgm7K/7GLkMc2bPCWhNj9aKDM0eZkbO1qwemW+hW2lATRGxrCAIKB+xBwkfF8izdB3hb/QxUs3TmaK0EIMUlxjX6TkaqczPNml8dl519Ar+m9tXxnbMz9SfT3rJnmYY5gujazaPvQEJ5pxYUWyjM/URQETGe74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4pOfALA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4pOfALA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98BDC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750114793;
	bh=eaqp+lrdYggcICf06LLKxWYyUZJafwpfrWt58dw8b6A=;
	h=To:Subject:From:Date:From;
	b=s4pOfALACB2fzcCA3U1mLrmYbR1+nFElvbqfMxRxNa9FGNyIaluhwteNuhpsjVQxO
	 uP09oAUYwlOEpvN31apdhG9NuoF8NLYMy/zLxvABMUo8Xm90a9IOO4u0t0TWlQXrNm
	 tc8xM/QudD7EeCAmQfOX1hwloQHoSQ0IcVzqjkcIPD+DmEyMqn+bHFG7AllfI842qy
	 a55aMdFmjsC0ZcQcTvjCSZe8u3nzSAvXtdN0FMSp+LEj1B2owNAnbMB2SXbLzKzyFm
	 7Kw+5iFA6Ytsyr8ZF5gpYFZK0TeKrIlbe7yjP458EYPo1k8y0NjS7MbvuOM7XEyePf
	 yVODTkntl2yfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954C5C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011479357.13401.12344917378736436029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6792a9fcbfc83170720eee63aa708287b7ffef29c54c431f874ba52f312a6f
Date: Mon, 16 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750114793
