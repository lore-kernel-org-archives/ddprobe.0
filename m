Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2384372B3C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774106694; cv=none; b=DnYZ70dDcmctBBKDgs5Ux55Z82CnIgs+XGWx6nZaTf2/jJieORmzpmx6gtoF4GEXT/YU+AFKzZaEgXEDguFaRSJgHjxkTgBhkNOcbwlCmgjIcquY+D6mxJvPxgob4GQlhu/GjEVo5NJ095Ba3XTJKllWBgEJliMNRtlG2jSMiCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774106694; c=relaxed/simple;
	bh=iS7iQ6V3b9Iv0k34GaMdyIfEHK8+7W8z9atw8/BsmMI=;
	h=To:Subject:From:Message-Id:Date; b=J11C/SMchufsKg2VLhmkyJcuNUmvmtXeQO50Ee9+fyYBTfnbAHbt680X6qHR/SBCsEmrcL3sjDGRWbdKfhBgbO0Z4qIJVSHyAS8yUQ6lyhchDGbRKEl4LhxM20koPuX1du+GQPEcgJo12aRnObSfU0MIC6rpVU3v095lDmb0rSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCmdQRrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCmdQRrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D44DC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774106693;
	bh=iS7iQ6V3b9Iv0k34GaMdyIfEHK8+7W8z9atw8/BsmMI=;
	h=To:Subject:From:Date:From;
	b=ZCmdQRrZPzEZKwl/9AQ3n6WV+cbEqsnLcqUpL0ruyo09CTH5TvIy7Y5x80T2mJvWl
	 aegjXPtfAgA2c9U3XZIH1Z6gK8WJLnPZ5EB1f0CiUTHmLiyJ7NgSitEoAuAlIjJXFc
	 a9g62c+g4FFYPrjNKHANjJZKXMNzvFJnIa1dkrhzPMDel9N46p51f0PyqgNiPjSCde
	 Vh6W11K1AZJL3ZyiVIN+2BPk4bun7DJyyTSfw00onbuOC6K3/1wa1nYSUWNXhOzK4y
	 kHT0saIb6HUtndZmP+DXv8Ed21zGWbKxL3taKSPDn7t2kq+ncVuM35iAIclr9ZWP27
	 zYp5THUYYz8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E33F1094486
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177410669357.7102.16197561586850922323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896baedb9bb33d054fb3249d81ef0db778a24da1da77b10e1ad92d1b98d86801
Date: Sat, 21 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774106693
