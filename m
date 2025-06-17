Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B28635D
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750120195; cv=none; b=tuDfGhFwI41D3kRZBZItliSh4hS2/jqmQFEj916XkKmRXzRmpo9KmmgPyoy71HJFLS6jgxouFWsTUV7vVtCeuRG/am6eWvH3eqIYCmmk/VYbiPuSW9ktJj31JZciFGC33pT3EAZlzOpIWZ79p5CmNXG4UnUepljgar68XjxMpKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750120195; c=relaxed/simple;
	bh=vrm/GBzkFFVErt8GJcxngiw1+Nk5B5sesnxiX2d738w=;
	h=To:Subject:From:Message-Id:Date; b=BUdvNREdrkyILxcaXwAp6mv8bf8adBo+pwLBgFGIN7vqAAaIu99aeJ4Q8j9s9xxYz0lz4TKn7cSyGx0zFo5ZCReP4dmQ10OqeWNrbdPf+mdECsd75+m93kRzChfGq5ur6251Z51HvNwi3/Epk9/DeM5FHsNZLNZq7+KCe8EmqPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUAx8VAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUAx8VAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750120193;
	bh=vrm/GBzkFFVErt8GJcxngiw1+Nk5B5sesnxiX2d738w=;
	h=To:Subject:From:Date:From;
	b=TUAx8VAYQXGbOxYk/G4+dLmSI33EJL7JKHpCQ78Kxah1K9V8rX26nArmSWqBwYVrU
	 30K8tx54vyp/gqJ6iRi8pdDzhFrbukK22XvpulONt5SotzkQzpWknWzvWdLs42KJ7D
	 3mpfxwherqR2h1CASnasHv/IAyw1ze5PmdSluAfWigAU3iiZyoEfVr/iw/L0s+ZftD
	 bkTo+Jz34qY2U5vtG7OkKGD+x9FY8osvvq6A/16MqCmA+DCo+o6RLqz8HJwuZOAcEt
	 4sLagbbYCrW2I9C2h1IHDOAGxJDRmim6P4Le0A90F3fC2cPbKpkYYLQ6xn8Bou4jt9
	 CFTKY++d5WENw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90928C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012019358.8699.5111229053255778455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f113169153868e8dbe57fc44c5e42735d79aad866b3d69f110c9a18398751f
Date: Tue, 17 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750120193
