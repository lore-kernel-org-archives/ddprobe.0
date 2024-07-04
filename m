Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556D11A01DE
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720088123; cv=none; b=pGnK93EqEHxFnTap0eBZOH2b4j1RnqZAvDj/+QcLxaLxRmt9EzxRJnH/NPLtspzNerOkZpeJTJZ9Yl5WRbM8eGYlHc/mtYEizaNfSu4d8MhMN6Nh5Bs5Or7aSiM48NGYDcyc3190A50tG3l0nJHN7Am10+W3jckrla98+lvLkIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720088123; c=relaxed/simple;
	bh=molZF1KAiGWEQ9NUbTAGFZeXeRTN7pjDxTL/TSXD4Eg=;
	h=To:Subject:From:Message-Id:Date; b=R6qugfHok5sHmL7XLlQI6ctm2Par4iRaZBcZUFT3FyLPYwvLAIh2JLNI3OS8ahiC46o7WVQP2Em+licNsT9697uwtyqdB42pFgXEQ+KdFD0Noq0WHa+IANLC7c5vCmO9GUrQmBUjqFp6kmGCtDzTyBM/ihrWd9At+zi6wqO1COk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQVdqG0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQVdqG0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE33FC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720088122;
	bh=molZF1KAiGWEQ9NUbTAGFZeXeRTN7pjDxTL/TSXD4Eg=;
	h=To:Subject:From:Date:From;
	b=OQVdqG0ib1M/bQnFwinqqS5KX8P8i72k4DM7RP+iKxN/hbJ5HY4jXiOKRUpl2fHxG
	 RvTjU+7HEz7YEqn78Sc+KWaHiw9hmZdZ+DVVQFcEZ+pxujQV9tf1e4O9TDRT06+GC/
	 Z7YkrhNGIGvXazKr+aO33cEQmWsKjnbY4IAkuHah96phSdRdWuCm+ri/V44R0unLDP
	 DrZoBsvI2/9bRdqPRSAkekcRriuYGeTnJD7vz883gYeXH1CcfyGb2c0Bi+5GJjmk5a
	 uxPkTEXx0sBf2X/s+JVUaIyEoZVNa9lQLB7qE3mEqoMJJ1+VCzvLeCCJDnLcfxA7kr
	 0BotvW2pXMqTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7478C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008812280.14067.9898677321020964042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c857be5bb5f9ed3bfce07a26cd968aba9b4484a667bde88e87b0bda15d8b4f
Date: Thu, 04 Jul 2024 10:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720088122
