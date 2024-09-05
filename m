Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC8D19CCFC
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725544554; cv=none; b=rjfqRLHZi+F8p3qy5kBRFBKPioLMGB99rAaeX6FIasS1d1WwtAl3gXEiuWOGcguzL1MXOe9GgXop/6+z8bEhHuD+oAQecfTZE80RiW9kos/Sk6XI0+jvbu50wfQNsYy4jF2YpPTqP4SU6fvIkk1czG0NSoMyM4PXf4RJxXG3LR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725544554; c=relaxed/simple;
	bh=ioFIWQ/KOm341FpFl86zHUGAX1UuMC43jXjPR1O3jWA=;
	h=To:Subject:From:Message-Id:Date; b=AJC06xV7qY1irRRQxvXY4ZCxo8PPyWwcAcdwWKoJEFA+buSS60NskhF6GspBCBjNC8RjSUrzigsdl/0DO48W3k3Dfo7K/r00OtA6ziAjUE+Sqg6Me7n/5+MfOJXMLWBYAdkS2BNG7tuf9F9GKdtxE6YmRnKQ/b1CcfAt4ILRqrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/+EWi5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/+EWi5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C10C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725544553;
	bh=ioFIWQ/KOm341FpFl86zHUGAX1UuMC43jXjPR1O3jWA=;
	h=To:Subject:From:Date:From;
	b=I/+EWi5DBSbZ7MmnjooGRO8FYTpNNvs2ZRF6gS4aFV6tQwhv2GC4kwPrClE1iORCj
	 8AH0qg6Fju1WWrVHkWH0zbj8IrW5sLlQUogNxgC3MmqXkFneA5FlX4x35X1zGsZNsY
	 oWXKWCQJfvarsAIZpo4FIhqKyEXpSteCHlhe+i7R6XaCX0NjzgBRSvjcFX82/VdAGb
	 2Ym8aFzeP8K2Z29WeHcQr6OgOwMBQ24vnj1hnF+f9SvrpvdEpKI2RT/ZRvyi8nFf7j
	 6ZMisYpwnmOMx+kSvKGLA55hTYXAQDHlJGdnWjsuIaDO6YgWzOqwxnMjKxC25NSc5l
	 BKbCt8WgJG5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95157CD5BC8
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172554455360.13961.3017706540219255576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c571a809b0c8352aaeaf67137ca46548e4d473cb5bd89b91c39a4470315d59c3
Date: Thu, 05 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725544553
