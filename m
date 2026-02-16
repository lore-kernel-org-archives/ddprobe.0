Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4015D2BE644
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771241694; cv=none; b=a9bXjQGV7STJSMgqt2yMrpMqhcjNJ/9TZqazZ2pchvSiMebOI46C8NB0WHIrRVt1OGD0bGDb+VX0Xytlm71SwhjgcDJ/2rvkInJ8VK+Bve3o1ST4PkDf+iVLHW3MTPOCGXVj5RcfGYTyNSQeX3Q8rh3uHpO4Cxumuo30NaOit7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771241694; c=relaxed/simple;
	bh=NT5qtJ4G9cZVmEwhUIWkXFPp5KBdUFJgGx0H/b2QeIg=;
	h=To:Subject:From:Message-Id:Date; b=I/0t9y4QQ85JH2tB7dB+hlFfTWI1lHI11SEuj8qqdKxP7KqdLA6WBpGxvQbeMXPfCyY3vyMBPg3C6n+e2omoPiJAKdQSSBetaxEyAKr6Bbt4ptYE1QH4b/PNzDxI6pfowE5dqgDDragBEvYeofLjosSAg5+aLHkEZmYC7Cj169Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fgl4RxbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fgl4RxbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CD6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771241693;
	bh=NT5qtJ4G9cZVmEwhUIWkXFPp5KBdUFJgGx0H/b2QeIg=;
	h=To:Subject:From:Date:From;
	b=Fgl4RxbTQCuH0sF0eeMZi2UzWWbU3zny3srFtlzS6pimv8QgodMhBX3ZV0DgTNwjW
	 cu4MXkJtBiRC9CvWPfGV+QlWpZoK4vOoGGNEyBC+0RQeVnQh5BaQvmJ09f1WZRozHu
	 MHJXd5bkmB4vtwlDN3xFZ7QOPqeD/TuK9gMPfnvOAMrEu+UXsd5oThrngAWbped4vT
	 rShy/78hF+gu9ZB1XmwiCnwD59XdVS/2jXZp3NqGR0Stb/0lcIuEl6INOqqkMWsS5w
	 KsSMcYshbPGu6qKaiKXEPf2zJIHedc0LbBfDjdm4ZjL9cM2JbPRx9Z4eOHYVBcr8Nh
	 l4t0Pt5pTgwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0FB6E7BDA1
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124169364.10660.3307543157153924991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdb67da82e4156bc610ef27de452593827d81319f3abd39eb7778700d0ac090
Date: Mon, 16 Feb 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771241693
