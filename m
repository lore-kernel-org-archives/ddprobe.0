Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA1C4438B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761449394; cv=none; b=T9sByEPBXa5FJqXoQ2ThDRkc8AKRteRRw4wyqkIVS6U79dVpsRGOuttOxRUzdr4J2QeMJr6CjNdns5x75iTIBcpTD8fQ+hC90LVAbCbRk6d/vM2zYAntCshXiuYjl8+oV/QxbvN1EgJJVJa9jEhA4f4ifruExEMhm9Bsc2U/Cvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761449394; c=relaxed/simple;
	bh=h84FYTp4IDjSvt4rBaD5cW4e83ZYOi9VKeMFB1xnx4Y=;
	h=To:Subject:From:Message-Id:Date; b=HgVBOO4ceVjDCOZyC6PqJNfwPOKuUWn/9AspvBhATaVAR6iZ8sW1i7syen5ySnzcAxMoRe8D+hAikvj47npZR/uighf6rEckD6td5mwEE0O8+59TmYs2+lPu3jVuoudn2uEZlUvAdZcGV/LmWWlcveGCDuUX7/MiN0Vs6Hy+Bgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNQF2ESZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNQF2ESZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A731AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761449393;
	bh=h84FYTp4IDjSvt4rBaD5cW4e83ZYOi9VKeMFB1xnx4Y=;
	h=To:Subject:From:Date:From;
	b=TNQF2ESZthHQ5owUdmKvBNeXC9Si0ozkx+Rz+InaB03PTfEe+mpMcP1/Jc3xENAk6
	 //LnE4R2lb0B7RYlw/QcwutjGqa4ZHHUNLaKg6T+8IG1YplqpvU2/x33HNHvEtKkPV
	 /KSXY7zrronJoRuYSVTHorn7qSFL4mlYeMSn6dJabD0Q9noyVRioYc9DnQ6yvX0wri
	 IGMMKniXfK7oDevDpe5T0PC/iEk7cjf9xJl8rQ3DYCj0rQjqU3CjUnuEynGfThB3h1
	 6r8ErB2T/NPg9IT68ACfkmXUO9B3JBXJkuw5r0uiiwjBlCWLWN6wjtmkV/y/tCJs8k
	 inRumNWtMCDpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4CCCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144939358.4208.2584161536906991380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4adc55594fd5b3a42fd2e4378b3c040b4906b2974bf121333974ec6da68c1c11
Date: Sun, 26 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761449393
