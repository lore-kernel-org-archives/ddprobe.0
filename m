Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295971F4731
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733246754; cv=none; b=ds8ahtq7d0GFrabneZ20uBKn8Y15NBIKPQ6EUApnAChRkFa9X09W679wwmW5Ebv1xfes/9vwRaFvsSbBjkT7d4Zxh1A2PtLI1HKnPe7SNuVhb5hCsgzMfCidmn6RhoEZ3cMJ5TbdwzerxIp7L2rucG9cd9zD0WUtT4QSvvgjBZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733246754; c=relaxed/simple;
	bh=LRBEW2REVRH/UAppXGgXhkk0LItICBOfaIMfYzy7Q2c=;
	h=To:Subject:From:Message-Id:Date; b=Ewrfo2HrjPKBlQ54KmynBZ3wDdiTKfcPBrNBaFJSxG09/Ta57Y57z+M5XuSyhx1VGXTOeM18x3L8aWA2V+IXP/6xeLLqojJ+3d6qi5yS8PntM8uCyHWryc13lCywbAgPvV4JPMwn+a3FoJA77+skVb6BiBr8zUpw5zeTWDn+bXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm1mkBa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm1mkBa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1744C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733246753;
	bh=LRBEW2REVRH/UAppXGgXhkk0LItICBOfaIMfYzy7Q2c=;
	h=To:Subject:From:Date:From;
	b=Nm1mkBa0HDZODQdzpgEOScDG00JIyKvrgVQUxCr3XFICPLMuvEIILHxoux2HXUG0t
	 xldcV65UcX4aVQ17mTTB8kf29yu+rnU3F3WHfGjs3+lVMkX6qJAqECyu8IBmzl8j+v
	 ay3x2wG2d//pzE//JYibKS92LWinzVWevJzMxOEcZDotsj0MG6+pSzN5bZAexZEq7g
	 HAz2lt565vzndeMj24urYJrgsfrh4dDVHd/MiKkRuha13QEZIKcaUY6sTXZF3mhgL2
	 vLNr/dlreNJWqGoI2/nKbEB+C3loYeA83B3mT7NRQESdoQXwqLhOmJNUtyQMxiqLKd
	 UxgD6l1zs8wFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7EDE74AC3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324675364.22272.17621993972500335720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf8cd56487e52ff40b951709d38f6bfab2e92af52a449b6d870d4a69295fe64
Date: Tue, 03 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733246753
