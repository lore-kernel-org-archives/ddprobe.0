Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0CF282EE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750113594; cv=none; b=auipHqF3Zs8RSqJclji4ZuKw9hIJ1Zlfg6O5W3NZUGRMQSAf6ZhQqsHxeaZV2DSqfR5OMOXw59a+8V4r1VDUq6Ez2H83qFPMti5odYEPuaNLgdPh6DgrJYYwtGTwnCmWmW22U67Vk2cMns4Xs7eD4p7s4OJNUpqMyiJFt6BMGCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750113594; c=relaxed/simple;
	bh=wAuP3GtoWe+EFTdYzjd3kQPBPXHhOd/CZFtuEibbHTE=;
	h=To:Subject:From:Message-Id:Date; b=hbDW5hAtc8FO/cXi5iDkevWTfSgr1LfNEhqBx3p3xpJk+74F5bZd1BQaGJnx95ocyflJtPK7GLc++/SewWtYxhFb0hh19gzZ7TsuC7jT3aIAapR3NPj5kOa+7DV5YPoLp7vFacj9HfZLlg4nnSIfPn3+a/xGEC8kxz4wG6TxmVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2jn8zVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2jn8zVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BBC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750113593;
	bh=wAuP3GtoWe+EFTdYzjd3kQPBPXHhOd/CZFtuEibbHTE=;
	h=To:Subject:From:Date:From;
	b=V2jn8zVYnloMhIZq0FhYqb8XXumeOLMRG95/cWEZ9d4xwVLE+ujHIAKKYIjx06Exj
	 DDu7irWdpeI/3QIilXPMwZK3ietCz86Xt46jbmIE+nIlBFw74Pw3B0vE9UkeJYbELH
	 BCYkOhGwVTckIhZX6nvbyw1SExDB2diPuuLCtdNY+MbLWaTXBlEqiPM9zHCSqSGnpL
	 brtJui+meRKlALAmKuE21vkl/xrewZRaVx3l03WR/Ckk+/3qF12vD7NM2hjkf4Ld07
	 ysk2uOZC7jMcqxOloOPED2+le4r6py6k7CCrgsI8QZ/the50h0R+uKNhWg2OCzxTFU
	 /Zmu0bTylpgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91666C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175011359358.11848.6105310036098469265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5f3d6ed5d1ee87e7d8cb43644b6bc0c9e05bfc2f10f60d928139a59dedcc00
Date: Mon, 16 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750113593
