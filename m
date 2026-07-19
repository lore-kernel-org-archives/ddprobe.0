Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588773563EB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784453314; cv=none; b=ajQK20t4E8MCXyzFFqQnvtA3EOiaD+zt1JdU76B2qItlXzFby6nLWS5ObqaOMB4GDKbg35rjeeW4623JaSwjXDav0QCUlScxVfmYwtXUKlIAUH+qNriY/PwiHzEXhlVYuZVP7vHFGilIStAxOhAffsm1T/rWBpOCxb11jsp6tXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784453314; c=relaxed/simple;
	bh=Hew2xZ73FgIs07vFXVp0J9ElX5pMdFUUKjexgIz1pB4=;
	h=To:Subject:From:Message-Id:Date; b=E7R5sE7cR78wuV9TGFUK/QO6Y480MeYkq6XxmCdF4NoltzwKGbO2sq4j1fGniD4Tegs/d02SOuSYzVl/5kjSPTEmFbKb36NZD6xIWn1Sk6Ny5YS1xNZZ9T120OuVLgeCMpTW5QqA5lY6HW/he7BEjTIF1A2eJlIVKmYgZRcQtEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGPlUq18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGPlUq18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F13C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784453313;
	bh=Hew2xZ73FgIs07vFXVp0J9ElX5pMdFUUKjexgIz1pB4=;
	h=To:Subject:From:Date:From;
	b=JGPlUq18R+SZyvHsr8+tcjX6d8BXPsPkw5zv5Zk9H9mCapwmB8RPCDkkSkwNH5BV/
	 mXYLOrwI25L+x40ET/Ny6Q5pldjtab1xdb5HI8ohP4D0f0DkPSA7YovFDykzbk10+x
	 750inXgPLhGriX9QVb9Yl0W8et8SZlOan8poVcyWhjPCzfYss9kYQGtvt9sbS6HjOm
	 MESM+3Rgu3rBS+2uWu9YSAYGirCdkZRwZ9Hau41IkkwHtGNYi0bPz1fwD8QdtbMdpI
	 i/U4yH0mb7VuQyhOrVFwR16ZamisiRRsaVzK4rha0HYqh+4K0T7VPexjRtpGSP4oQY
	 qLtYUOuYM8yOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF01CC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178445331368.11807.16623598374089039344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bb70d4033a4b32715e2cd97c883698e0ff23136158b9711b90824f1ab82c02
Date: Sun, 19 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784453313
