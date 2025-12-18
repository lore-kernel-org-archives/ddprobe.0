Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6522F34A3BC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766066634; cv=none; b=p01E0NNqmsb3mbt61uKqGpTXEvXYe8m0xLB6295IQ9S/yJRuD8q1ye06qreWk67sDogabE+8G07ltxph3Jr+9Ph6WfY/JgpMQI9373VMYhbZ1jTS3eKa9k1PmHzlWkcIU3OFhcSKRQp/frpLhd9sxFOQc1KaPqM0lfQvUEmfkl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766066634; c=relaxed/simple;
	bh=7ZUndHRI+Uwms5J4NQIaE0uX/fxKLYTLz6Vq/GsP4Wc=;
	h=To:Subject:From:Message-Id:Date; b=uAdwjxnmyNs3CSF/Fvo6rmJIgh/8YgL+eHB3GcNdALbbW8lPb0FKnhdVEWseF8Q2aTbHLTixsyRD6fHAbBQ7AsimmLfV+1Xlo9VTfl0QCNmbAtXHyncYkBKIR+tkawuoS5q2xb2Fkx+X8/R7UiVxnunDIDF+8GuukonCDkwchtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDuDJhR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDuDJhR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2182C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766066633;
	bh=7ZUndHRI+Uwms5J4NQIaE0uX/fxKLYTLz6Vq/GsP4Wc=;
	h=To:Subject:From:Date:From;
	b=cDuDJhR7lAP7kuLzg349Q3IWYAoL1XD9eeYjY9tN7k31jZbys7VZHqpjsy3CUnTnY
	 x8g22Pvu2u5C1FRC8bMWcxdfV3cg8tiUY3MBjSeYSOZboxoVla7MdLQkxRcH9M1gv4
	 WxRRQGWMjlDQ+Kc6FUTxms+EqpbQrEIuEFry4YELMDj5RioCS6Ox9g9pkw3fVrjAvx
	 TA4ktH2F6n+qDrzdoHIJWSqbXXsH8usXayifWFbPlo6SCPMmDCtn3rSm2C+EMu+BMv
	 F5mjrj50GLVbEaa1QXOdg0KiJCWNzED9H/TQv86OkK6SkLiLoT1dYi1rPd+lC5sz1y
	 dArD2PyCoJaiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90983D6D22A
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606663358.22057.9056823344603334288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b801a45ec84e8b12e833dd9bb3339c888f47d204bfdbfc3c5a622fb836bd153
Date: Thu, 18 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766066633
