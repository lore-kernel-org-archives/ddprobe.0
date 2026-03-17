Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B0634F486
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773747894; cv=none; b=gYVY/wrlG7AdNc5ZSiEScP2Zd1pGBf3Ik7PDNfFo+J/jqsMOq6ykqi/iWpEE2aHqOgDrHzbAEj31Jl8Og4o6Rm0zkOZdBwcpXPKT2oemzBASsrP90FLgdsElN4uzWkTPpP69MKbpV7gXZXNAU1X73MSSQwKxiv+hzivPsPVEXhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773747894; c=relaxed/simple;
	bh=eIFogjqNJKxL8dKgD55sZkdju8fj5d/74u90LsYJzIY=;
	h=To:Subject:From:Message-Id:Date; b=r8HZJm3WoJBJPXt7lqgF5ojZPm1JWfdaKr8lEFzHaWJn+X2kdLLxBT0X9esxBJa49lAtRbQpIPKvsxfYLr2svAtSjt1DvpeYWKBjVONnfuLlkWcRQ5VFdPdjEQfqooqu3C1YsSYZ8bze/TXpee+cyk2C8dc57nz1ec748dKTVOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMdv99HN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMdv99HN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4847C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773747893;
	bh=eIFogjqNJKxL8dKgD55sZkdju8fj5d/74u90LsYJzIY=;
	h=To:Subject:From:Date:From;
	b=AMdv99HN0tK3kjJRqqAis1wBs1DNqdGK0R2/7cTn1VXUEe1yON2YP1sHQg91N9TrQ
	 mMoOoPlXt7kJvYhXPdoQGmWcgx79H/Tx81WhsKggsEVpzU/9+PMxEpctP02TXKNTA8
	 uchqLIuk8tKkIsMJnv7FoaGUawJ8gtqp4Ji1KcRr+ChMtxSFOEqacNMaZ9dG6mU0xy
	 NL5FXgwgTzLl8rNMmaem6w/EQD6ouf1crHgFGP6Iyk9k7CpQwtkT6i2FwAgyw/SoIg
	 TJd54Y+DTAduEXJW/OG+jQsSiHjxGYmN7ClCn6NThXX2Pr+NOCdBKU6aroujwic65N
	 6RiH5lXx0NEuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947B2FD8746
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374789357.19214.1068766753766264976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b64a80d7bcbcbbbe3917290d08f55140e3f860736772fa80a5dc69e566be03
Date: Tue, 17 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773747893
