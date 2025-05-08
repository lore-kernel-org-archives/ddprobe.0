Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2846315A86B
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746710994; cv=none; b=Tevk5gBp6LE1AMiMWpNSBDDk7f2rNV2ySkQSDenY9xjwgMo59uMKAHXOd1d3Nc91XVJw8LYF9hRVzzcnVHFbjtK3qPusV/xg02tVskBWmBHNfUywk1h9pawn4iNSg4aaxKazGMuL9pkmbqJuQufznRnHNyGUCuxBW5HwBiyOoak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746710994; c=relaxed/simple;
	bh=187Ia0h0LDp714Zg3U2oC9SW7tT4Fh993yBvFoJwMCw=;
	h=To:Subject:From:Message-Id:Date; b=Oia/8KiQDxG7VXjg2tZpFZ+/mo/DWFH5bZXGqAxe6RPveOpbO+8v8h8WocyFRm2WtSYEFqWpgynLHzQTKwv1k7zCBihBHcWnLMpCQ0nkbSW+0w+RRv09CJDdIci6UntYE940BmrrTJf9lMTmS5F9YXqpdNojGQsomEzLS+lGKnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbU0HK4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbU0HK4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E42C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746710993;
	bh=187Ia0h0LDp714Zg3U2oC9SW7tT4Fh993yBvFoJwMCw=;
	h=To:Subject:From:Date:From;
	b=bbU0HK4eYsGb/YAIXc96hh+2c7sRTzYsqR4tjOTch6Dp3AIm+YPfgYNGKb6oMhmsJ
	 fBAiPaRVjeuZmXFakn+mW4VkVyv3F9AalYMSwTu2z7XSIfdnL9PtQkgtbvd6LLQBFC
	 G8XuvHGiLU9Z3ozhxHxTiQIzpgeoSmhQnjZ48y0f8IlANCOLAflxNU/dPV7DqkPYnL
	 8NEVwmeKROsbKQ0odVpRX0/clYmLvip1ygdCTeoUdO0b8Lxop6oiyXamuXofNEtL5p
	 lnF5CnE/Kib08TL9I2SCLJkqWpHJVEtub/IrJVIlAiorWfvZiKK3vw88czRz3gZCGJ
	 ZrK4lN3l8apZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92757C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671099359.1389.18179405758796154770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409195b1edcc532aba70bc964ff7edf4c29f1223b08f3cac3865abb6a2186a1c
Date: Thu, 08 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746710993
