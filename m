Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140F82EB86B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759920594; cv=none; b=Uj10rsBEuWOVy4tNmr4OLd80JVCwyLoV7yyLfFt5u4FGnT59b5c+ohHpMkoUakynTdJXxCAsSTg/86e7E0PpAdsbx+HCr4GiMeKhs5a7DkntgT5WerYKy5TVJF9pCSVn10wWjKl0FjQXEyCrvVNtqB5twjI4rwcCLMNl3FHXx7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759920594; c=relaxed/simple;
	bh=pfVXt9rlu5xth/pH3gitUawW5xoy6A6E29u8PhFOANc=;
	h=To:Subject:From:Message-Id:Date; b=Ui1E9GEHOZt7x+MQ3raBVN7uy3ZYaTXOaLlCuItR1KRy4w2x3b7BplEXTClPx0PcHubeyWnnQidPga2ykDVxgEkivpyyaeo18lB0cVzhemUNWdmnzOGv4F2E08H9t4knIa+5WJzP35Hdo70O0uT8fvHEJWGE2dhudOYw+TUWRbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+O1HefG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+O1HefG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F954C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759920593;
	bh=pfVXt9rlu5xth/pH3gitUawW5xoy6A6E29u8PhFOANc=;
	h=To:Subject:From:Date:From;
	b=M+O1HefGXtVl8SkhjlvmmFoNN6VL0BkrShUDxOBVCwcvWLSyE46oNEjaSckFpwq8N
	 7alTcEO1o6I+QyBHy3/D2sbpitxZquUpdy0iMV0cEMpSrIa5phYlCR2EICdg94NR18
	 9W6mBSourOscPn87B2W3K3HxffyWc2fSoJ9U66MxaqBVD0cY1BEdhHcbk9u/7dLI9c
	 CQIegGINCmwOeTZfngWa4SCryDeOrGASCHp96/eV9x6j3UNBWsfBbXeU3m+bKkVSJr
	 ethwIlrfnbtOzAk75O6VvcA5ldwQropoTgeEE3wRNaqAxC7aNrPJ3FPCSTk0KhIP/R
	 vp4K+55oFP7AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD3CCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175992059358.31247.6424546078763790571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf45f5f46995df498bd43397876d56cdc90ecb6b412b6ecf5fc5feb93f755b9
Date: Wed, 08 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759920593
