Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3638F7D3F1
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724817354; cv=none; b=YL8HjloxoKY8M2ffzmp5RZNxkfojpi2bb+p39pyxAzCodeOlhVwDqIF+Q3RLiY/cjmZmoM7fty55Wg2hRDfRco85ACyJJYUZwAp4gtXk4UYCKdg3vRLfKSf5wZ68RxzOzGcabGGxiJOU7/Nr0Dmh793HMnZxSGvrT8AKkvyntvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724817354; c=relaxed/simple;
	bh=wkUydG6E3JZEYbUPi0yMIaj1+wp1wC1tU3jkne6BYtM=;
	h=To:Subject:From:Message-Id:Date; b=ZwKUjHwCGKyIE8HHOVWI/nfFk35Nlx0jwj2sHEwqeECZuMiaakaduco16iAx0skCp7LQkSiJ5RlJvHq0j8PDAjnui3kgTz1Z9A4XkZhmc55Z3OUTYveDkD8UrRGEuyqPO/dgqY+ioV1nJBfdz3MbvYOygdXXtriXOWtV024ARqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTh+sJjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aTh+sJjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5171C4FF56
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724817353;
	bh=wkUydG6E3JZEYbUPi0yMIaj1+wp1wC1tU3jkne6BYtM=;
	h=To:Subject:From:Date:From;
	b=aTh+sJjJs+Sjnq1wCmg+R5dI0yZOXsW7QhNw/bPZ9aHLWyjg7NhYyRjaX3LkevimJ
	 DhMNlBWNStRAFTHO2jl09NT3RFCZ/i1Arbbc5zTnIpSRtc/ylm8JxDRhGdy2A8I0qB
	 Y0/MfPRbp+fax28lDrlCOeua1bETgEWu+3wzAjb+m8UcusUhSfvA3qZ4E6nOwMcJqb
	 mXbkj/FO35mf1DiuGZkVsccWSzCWCoXfYujjKhC/2/TgcsKUQXQpGbjy8/frxGvenl
	 rOOMZW7U29sr5ynb0L6QT9GUa0vq9Blai/gPPJc0k52Xxk0GKDf7BGytV+gwoZAWCa
	 +Ag/mSXS1eQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F2EC5474A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172481735362.30705.17841495946716431411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc51b732be728a76018c91a2acee81810bb6eda21900342de6b7c4e5959ed76
Date: Wed, 28 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724817353
