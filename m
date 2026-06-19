Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D813B7B8E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781901994; cv=none; b=C6scnq4Es2hh8Uv8XGtRogS3bwyJ59tYDJm0ilQL/2nK1js/C1zUnzBxlwasV4DycGWwx6UU8JdIBzBtgQzTPo1Pqtwt/On8MRl006WHXwfY/eltltw4QIOTBWZEuk52lPkgjTVUMtooKRz0htOAqvPhnw0GyIpNporKaXdfphc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781901994; c=relaxed/simple;
	bh=UpgZb7aM183BPehLVzvOjvSFkGfyx1cakTiDb2HgEkw=;
	h=To:Subject:From:Message-Id:Date; b=Otk3jQzMF2CJwM/BSmHAT/WxcbW2MVcjaUt3HONim1EwO7PTpkf6n+zMPuXr87mXZcNJgntzpaxDMy43CHNkdv5/p7jQ9w56WzTcc5ZvP0TNcA4iME6Ki1xcC5t+zlqMIlHztvYG5LW35l71N5gib1uVpLfnhKxAJ6iYDcNVc44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSty9XGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSty9XGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE0DC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781901993;
	bh=UpgZb7aM183BPehLVzvOjvSFkGfyx1cakTiDb2HgEkw=;
	h=To:Subject:From:Date:From;
	b=VSty9XGzUf0Z4131BaPAxA7tq0Q73AyFwdr9M0YOvV4CZSAtlqy3f2GhM3sdXEr8s
	 YbRpxp0a/CozqeNXmzWjgj5cLPxhW4pvus7LFY5o8i7GWZaOnBmboFqxH3iqT7gw/e
	 7MEXZoNEID00Gqhq3QInlfHIPiSUXLSOI07L7+UEtADXzG/nwf6mdsfp2F/+2B+VxP
	 77wzlsYZsE48c1gWZEbrYFgxFr74VGlxdyYZF1PYXBbNC7VY2or5jtQibcNLjpCdPd
	 suyFi9tUucde+pAduiC6fhQbVqm3NXTQqFScnhGPn81f/Lata1xJPa1JC3Hl04S0/1
	 pLvQWsHOil8OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF531CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190199368.18358.7614196308721852823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba8492295cc228e59f88e6e745787c6d3f90e19908ca6163cca9de5d371876b
Date: Fri, 19 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781901993
