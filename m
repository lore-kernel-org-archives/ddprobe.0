Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02F60199230
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756270194; cv=none; b=Q79QEE3nKW8qrkiGqKU+cQMFmmrNX1aOcyx0+ov8cjBpAIUSm/Fax4SrahoZ0Ro/mqOHwAK/vY+uU19L4cSmiMfWjI2cvDypfUJa133QBiqrmH6wZISZLXRta3bdVaIfGUXCTPCb4E3LtKn8bVFJVgp9z33jH/E0j0N2SitJ5wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756270194; c=relaxed/simple;
	bh=S3S8UshdB5HuP3AqC+e+O8DvYol1kMliL+Z9Cg9e+KE=;
	h=To:Subject:From:Message-Id:Date; b=NBwgnp9zKeeXtGYym0kwmz6A3TcA9AcsuPtd+irz0tlSFla0qq34fLGIL+vqxvIJ672rJC+TX7qkfZYvZUT7rVq4aKriXOMMGMqsuWxZ5fnmazFdDO9DZv/+SABhjSwdfJ80vPHL0VbQcQ6KazU3FO8hobaNZkEoFP+8P2gVQTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2M1bpKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2M1bpKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756270193;
	bh=S3S8UshdB5HuP3AqC+e+O8DvYol1kMliL+Z9Cg9e+KE=;
	h=To:Subject:From:Date:From;
	b=O2M1bpKgGWTiKqsryq9gE2XeSSihNv38mUleNbzlRYoojzE+3XCuv6wsB0srlkGHv
	 b3GOfUKNCeCviQvMh3iWm1rAX5sV9ShcqLkmVFFSLCjcKz7KI1ZxoFXKx3sFGLMIHR
	 9CuNqbo6cyFeCfXsu7B11CXg6BYTtw4nGXv/bE5i3LO2mbdnCLA5Z79utQCNBL8fpY
	 LoFmC2ZU3nhoPcFWYsLXB2PXCDrJO6/QwAhoQ4G3Ot3ddgm2XUU/pELEnvOYnVbdjM
	 at14GN6yO/Jky8a80zuKGpJ1AcBc3YsD0bHXr+Ff5LaCTmR3IRCh2l3wEhg1sy5mOJ
	 SwLJwCEPhFtJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAECCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627019357.15884.15663849347293778561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18312a1d5f49c04f9b37de11a06720693d85114ccbf147586a40574f6adee746
Date: Wed, 27 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756270193
