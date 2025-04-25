Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757E215160
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745604595; cv=none; b=gyEmNR7ilc/QKDcFcAgFy6MZszEl+S8YTJnQmhEIrwQzhjMn+GHw04J3Q3K+6+QOtcxPvAdyuYQ0MwWMSiBoESw3+tuYrjFnI8b1pAw4+qkVl2HprWHazybDexkv/Rm5qJPeALxePHGNBUC/7HfUem/YL6c/MdlHQOsxOtg6OgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745604595; c=relaxed/simple;
	bh=flXHiAsHplKcU9w93YCz+QwfTch/pxvOyptkDjgxC6U=;
	h=To:Subject:From:Message-Id:Date; b=SeIoP21AuX+rNEFbuWMb0KGYsiIueKTTVedlCNdEbFy9k1hY9PT73Px/nHFBhta0nqGwGOEtNSPlnd87J54G7LT2JjV3HrvEXfK+8Yv8iAyIJS0I8g/SzTGDz/1WFWdTbc3ybjiFgdRKhdw8QwaEFeTJPOGhDW4X1yctVskFK8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OboPygOZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OboPygOZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5720C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745604593;
	bh=flXHiAsHplKcU9w93YCz+QwfTch/pxvOyptkDjgxC6U=;
	h=To:Subject:From:Date:From;
	b=OboPygOZwlTQJEpLUlQEyrH53Qq58eGwu3plEhlIa/pYM7o6vlrUXJsRRdaWyiBCa
	 j9V5y+ArJg7LGYAyNa251xLTmM1sAmtmglUtfvl9gXc/vc9Z65q2ykD607Vt+tT8tS
	 wzq4A/gSEA4oGnHTSrtSBEeeZpAvWsCvw4zG065iduIqwIer2G0Lf3SR2VaDjoJGmL
	 1xSarebQdXSI3SOLOfKrjyjCmsTpFFZjeyaEo7YKLyjXwQloRq/iH1ekvMAu3h/o1I
	 +aI3yqXYel3a2epmeYQe9YPQwoNaro08+eKI5oMtpjiz84Nlhg7WxkbyGKlaEBSbTh
	 uWWWtw4EoYeAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F615C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174560459357.30276.15189493993307855893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb5da852f8819e0bbf4c4a2cbb6b7157181fd08a6c477b7b89f61eb32f1aa91
Date: Fri, 25 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745604593
