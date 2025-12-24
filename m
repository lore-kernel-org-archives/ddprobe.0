Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394921DF736
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766597034; cv=none; b=hHensbpCis7n6/OHcpF8SVpAxOV7NNCMmav4QvwWB30vJk4LOhs+NWt8Bghv/LEg9pTlPxO0K7wfCrMayXkHXoIT4ZCX5Pn5iU0T9GnQxwvBxWXI3UhQrFtYZRiQxdwmOEVFu6L5l5KgCJZmPNuXhjYpBC+Y4H9h/D8DKOnb35Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766597034; c=relaxed/simple;
	bh=JO78Zt/8KG3X6gjfkAoiTlUGniQtvlHWRZrHD0jqTms=;
	h=To:Subject:From:Message-Id:Date; b=dnveG2i2tCDWvZM91QOuiLvuvunFrC71X91GRRpClHOdImua5lrIEjpmnYJdI62QRDnIHb0KobehJV62efcm1cj3m4dCZohgVJJ/itDHbhvF0rPbXkIxsCzTGm0MctA/ouCFoZuEmy+BpCXS71CDycTlmvwRXSpPvBLalJYbRbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkUJ10zL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkUJ10zL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57D6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766597033;
	bh=JO78Zt/8KG3X6gjfkAoiTlUGniQtvlHWRZrHD0jqTms=;
	h=To:Subject:From:Date:From;
	b=fkUJ10zLcFvIyl3ozxfrWmYvk2eISJtU6G7KW7/MBvj2JIlnDnHMLbV2OxEgnLhUR
	 huwWRiu64gfX7G7G84vv8oWMDDR0OJw7V/WkArW4/QcR5apAxhMTcsLRdLY1CgNN46
	 1T3a50WIuDU+AWbohFociMJjXT2ZK3vKe98xovs7luVFUZmgDuN33lns9RmNqNoBNa
	 8xulo0hOdMKZK0RYbMhOqZS3p4LV0ohb9AaA+l1Ys7YN6cw+ChMelQ144DuESL1oSS
	 WaY7mqYNgTkSYintJqVhUrEhyCSivhLsRGMQayiQH7lSfyVR3nGvMPg5pTI0u/UCtQ
	 3p5HjQzzAg6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94433E776EA
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659703357.5882.913708278540771944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b263e5728efd6139db254f38452a95f27a8938dd93e4cf51c9083ecc5bfa526
Date: Wed, 24 Dec 2025 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766597033
