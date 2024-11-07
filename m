Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C64E80BEC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730991954; cv=none; b=foUHBwosByQ3pwMjQrfOfRgTm1SDzthTvFfQJtZRG3H413vjS7DhKRbqWPaC2iqMz/1Yz6SWQCwyZwPeEfKcjLi1zjfN+sIAHhy+EhJr37e1J+V0QIPA566VK4o5C/y/21BKFLeVlNL8Jlm1CVLKUOuziCiNPT5/VwAm9hZzbbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730991954; c=relaxed/simple;
	bh=tZ1rL7ulAsW/JFfImMyll5nle6Ko0stHuNttxp3noz0=;
	h=To:Subject:From:Message-Id:Date; b=TF7A5gDJ0AH/FhvXG5MxFaIcnpzecI8PklqG4e+/CAweAB1xtNoIc9siOJnoHYTz6RLzScu6D46GsdPZxKzQO6yeUURx3VCVNLj47YeyzEZNZpP4xNGuEOz4DQi1loVheLkbKFp4YJ9Tx98oeC74eCpM1U1kwsV/hJ83JV8VCfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNb9aNbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNb9aNbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A444DC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730991953;
	bh=tZ1rL7ulAsW/JFfImMyll5nle6Ko0stHuNttxp3noz0=;
	h=To:Subject:From:Date:From;
	b=cNb9aNbtP0wHBRZC1QT1Hwa3HumogguMIEjG0PTxMW91GLezsPRy12f1vaEkop37O
	 U81b7u2hstNfUXytoYF+kd7QgTg7jH9Iq0SeHoAQ9/gvdtFR/D7i1KfXc5eSaV1LQ1
	 7B2pFWHZAgjRCTSKvwJDa7ggExxzUYuyLFJkyvDTOpRiiFdRLzm5DK1lTrzNqnJHe4
	 Mlr1LNFEwgCCsSew+pLBrEbo9pZ4eeCxRiEdo1dU76+QhFWnMQvP9Go4eWkOtH2Ueq
	 AZhrTOgYx63fokkUny8zRVx/1Yk27/tQBNRVnXBwXplLU4xnO+/QnJkFNLgI/uy55N
	 Q36GYqWMyq6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91708D4336D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173099195358.19175.13901619161927649343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fd8d890c30804cfa307d9bdd4eb42039ae22db38c17a655b7df122a14cdd3e
Date: Thu, 07 Nov 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730991953
