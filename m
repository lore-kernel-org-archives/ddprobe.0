Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C71E542
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712935763; cv=none; b=rsB9bkLWs9IS20YMd0zqaOKyyt8qcb7nG8Ee6bflSdGgVGKxwFEoagd8PtvcpivJRGnDzYPLm8H7LRf2VSTxP60yC5XOEf9v+U2RZxqvYRYPfBnJC7T6L12QtNyoBSv17mF8tlkp/+DlysxbQpx1v8OXKnsfjR95glyI+WsxuIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712935763; c=relaxed/simple;
	bh=JoJQnxyxuO5qn2XhS8G7fKRa6wqlKjpE2gtly6i4y/8=;
	h=To:Subject:From:Message-Id:Date; b=ppSOKENk4zUfqm/HUPGJo75bR/x6Zvg38gYW65yt/Y+DyYDbjQRSblXgVnaK/NXdUOXNempO8fxAUCiGoLKxWLaC3fGAata+n7Itc8xsKWcafb6gyzgHueBxFS92tLMjuLvZJJzw18/e5hqWqVIr7No6vfX+cMFJ7pOf7pAKgzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNGWupEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNGWupEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4276C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712935762;
	bh=JoJQnxyxuO5qn2XhS8G7fKRa6wqlKjpE2gtly6i4y/8=;
	h=To:Subject:From:Date:From;
	b=sNGWupEEPYfE1vdZZKUoFSpUY06XPxH3Ey4AFyU88iQDJA5h4GFR0ol6lge3XQjJb
	 1mi5c7o4y6vwIeUwul5htqUZ4dpqizFW6Jl4Wz+J/etIEhhdD34scvYpSv84hCYrlQ
	 IY1l+GYj/e0L3/NFFGsefaCPThqISNuaYhJWmggNXAPtIB5zHxR51mS4RQLn+kdltt
	 au/DfSNtDTvjPwLcTFkgM/dX5kIDVURW/6PPyyy9y7f+OanOhWjwoopYWij5nMbk0H
	 jFaQz2uy7lLAE5UW7T9cZ8664bZH/KhMogJU/NLfsJiewvjY9DWYimBSok7W6f4PLN
	 5Fla/a+pvEjmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0359C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293576277.17170.4004660972764451226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c68174055ff4ef57cce3911fca8c8b6ddd2a4252b6e5eb72ce75da82c9b816
Date: Fri, 12 Apr 2024 15:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712935762
