Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1885C78F2E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751198994; cv=none; b=ei5QYdKS/S1G0OwXwOXQbYOT13eHH75xwBAVwBZ8hahG0QMbokmoDUUNQ90JPxM8QEY8GVufQlo1DvZtIVeGlX83uNWyicmfyqo7TtKoxDOo50Xzxt8WLqDCMbaMCYUnGaBfz7xgv21iSH0qy/iGA5IHBJmDM6ExlxUETBew4iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751198994; c=relaxed/simple;
	bh=HeiBGsnX0px5bxVtMl2APP+uNezyC0cmRPUTsVyrMbM=;
	h=To:Subject:From:Message-Id:Date; b=Qmm2jMswDvjPFu725fxDccWPMq6S43aFWIg1vfEdofgInrdjfL1wyDqJ5tRDewbrOpyhGqIJ7DgbQp3OIb1SetLDf0AiTsDHfsAKWivdHPUMoKjx/gZdrg99AzOE7XZE93pw2DPYwNGQtckIQT4ptYMH0SW9/uXA93uRry1fqz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1YGi8o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1YGi8o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751198993;
	bh=HeiBGsnX0px5bxVtMl2APP+uNezyC0cmRPUTsVyrMbM=;
	h=To:Subject:From:Date:From;
	b=T1YGi8o/R+Cc1UMgjobe/EnQx2Fs7Dwg0WufnYgMUMObf1X4BSDeV/tF+/LZKb+pe
	 81tidMcCEtO73W05cX42bfJNQfScqTk4eAXGnmVmFvo5oMp19rzp8h3Bg9NlpNAIJY
	 oInkVq3r2aBybq85sLc2dx4rjiOTu5HoGSlmo5OxnaRe2sanxvG73b6wilMXDcl/GK
	 DAqwuLKCZaGl2aFbWDqRFtEZrTqUs/6hUKK27On+mopS5+MRaLfqnCdfmjTJpBJBzp
	 d2n4EfTBfZ/ao6R1Q9oUTd2SHNDo4X3BxwcfeO5Lf8Wig3P03QshU1XiCd+bLmdi2d
	 LKgXfNgkR4EhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2D4C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175119899357.6661.14140643153095118499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be3ef8fe6202be41241e65c3f0d07cd32387146dbe3f4541898b046f5290064
Date: Sun, 29 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751198993
