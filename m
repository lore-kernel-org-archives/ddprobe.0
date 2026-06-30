Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F6A351C35
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782829714; cv=none; b=bBadn5NyTCbO+tYQ2bCwK2YWhxgclfyqTXesUD0q6rmCZnCNPI/Oq5L9AtpKeJzIshvrGKMw97Slrow/tscIYbv1CdHIcJ/Ll6K1lxq7Z+5OQFfDlz25Av8zzFoUca6zVOsjVnGWWCINrgj1X5gWTdv/CAWzgU145ZZIBeHyLMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782829714; c=relaxed/simple;
	bh=81abAtbLIfH3U35yIgWlkW4h6VSVOn5XTNr/Ha05I+M=;
	h=To:Subject:From:Message-Id:Date; b=OOtvBUoGc7K7lty9dMZF5X9lUPTsOgiIRns//Zlyr/52mk4zkidf7wYTXvDbVhMeBP5GgFzNMwoT0pKU1Jbhu+wwlaEwYkl0dTE9ZrXO3A09Tbk3QlWH3FnnAZLQ2CbdwyNEWQfDnf4rP/71vENzYK4AFiO7tzFQHIsCYZ9AZ34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDDxuVHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDDxuVHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C110BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782829713;
	bh=81abAtbLIfH3U35yIgWlkW4h6VSVOn5XTNr/Ha05I+M=;
	h=To:Subject:From:Date:From;
	b=rDDxuVHjFweXRJrBO/lT48/DIKLpwkvCGk/NbHo+Fi97jlw7tto0/WAXYcqLuI0Lq
	 Wx1/XelGrMG6sLZCR6DDzFXa8hb8xtjY5GrjRU4GI3GaquC31GqDoLC9Hmdu1YXaui
	 R8HHUUMK3Fdbav3EWEb9YHms4KYsVNFBoiBq1Ukt2sfaqjG0CBhLFbHsa3N5YwLkSc
	 mdKJux8w7A+Rp23UYUusdQu/1fjFWcz18O0zJGxdD4Z4VbKJweDrgPRSzQcvsVKsx6
	 RNdIX3448HA9pFF/QkJuxhXkgqxkIZrlafih9qQkBTAkDWWVTXt3nERJW8bCNk0I8Z
	 qUpFBQ3bJtMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA337C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282971368.18235.5764827583976408007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d25e2ca9c1e9d1fb734907eb459ec46284b17b88cdbed88f87da2aa6c732670
Date: Tue, 30 Jun 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782829713
