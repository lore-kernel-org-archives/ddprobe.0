Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC632746A
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740361135; cv=none; b=cYLd5nm70ALe4Q4J1gcGPy7xfuBH37bHaFAp0SaGTvChMLwzaz7Ixc8MXQ4HGnqfmwjiWeJdQ2qIogigFUJDIbZa7qxx3FutbGbBTUzWiqIXjymd4mKuKS6y5QKTuKIxJ1uAqggKtBXBSnML1wstmSnWRMrU60AdhxdXFL32ZUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740361135; c=relaxed/simple;
	bh=SK/UYeYthBWvrP4xUeZ4sDeywNPrru5k9EMdIeskbRU=;
	h=To:Subject:From:Message-Id:Date; b=VGWk4duwHCxgabLcp2FxctPhUnCDc5v+BfMcVN115hCbC7A5PJT8E1Sn20v39lUeGgm13vqtwVeTnkvou9/5HoyX9IY1KdB2+a+HHCjtS4/UUHLj6gd/UZxf3/LtMosuAOZhr7kNER76vk+SRQA1ByUZYI15qF2tApzX4J+ppqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpvyYLyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpvyYLyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE8AC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740361133;
	bh=SK/UYeYthBWvrP4xUeZ4sDeywNPrru5k9EMdIeskbRU=;
	h=To:Subject:From:Date:From;
	b=LpvyYLyVPAbLMbBYF23dxtqNXv6H/IIOGEN38ohl0NcDAy8b7FQ7g9XlTt9TvPzKF
	 +YcdtQijKa7Vnj9VERNQdAi6Zsbue5k6968HG8RbMeUwBCVmeGTgZ9n1RAZuHZdtBv
	 bh8bA45ybYuD5bGuErIkcP4tnf7M8USvwNxqgekyWqfI3jxR/hwpbce+00yK/v12Gq
	 BE7DexIHGmY8zcJL7OuwYDVKEfwC9rGuuvFE7yiW2xtFGV/fOsBTbuNqtiVIrbUlRc
	 1/jO7hJE3la3VgP1aSzxmkpCiS/28wl/Rgg1w47F9j24ZsPnHUJNRaba1zyV6EmD7o
	 dLqhCVVbhXYqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588FC021B2
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174036113360.5544.11660792630270168904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ca7c8979237c7bf40269a81f26fb56c73ca3e47afc861cd8779519281e5ef2
Date: Mon, 24 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740361133
