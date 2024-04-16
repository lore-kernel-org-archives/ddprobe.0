Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605D012C534
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713277763; cv=none; b=DKlQgSB5tn2RGzlxQBsXyi43tHRlZLJytQ4F9xRmQ6m5gNEAyDgSyxJRimJaOYGakKv6wb3rkvEa+7yUlTGXfCpWF+c9TdJSuiv/0tFtwVFvKrQKiAKM3NhsQOopEpZXrXNF1l0wSg+FjI/8fLN9dcgluuttnF+3jDAel3SgY4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713277763; c=relaxed/simple;
	bh=9I1io+TTSLuMt/xNcr+9q/JxDHVsgv0+OcJOcYKceig=;
	h=To:Subject:From:Message-Id:Date; b=jL+T8VSp90U3faXgNk1VbyLQBC3BgmR8AtwTRpMSgxyNuNz8nBzj2ToO1seWkDo+8bFCOJgk9mNQoRsYLQktWpLxV4nUGTMnNOjj+wyMSSwQfLCQTwvUVKR1DpYa2I3Vn1Sx3Il+68kgzgtVO6W+4DKnmbrtTtPUVWjr2b7I2ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czenhkgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czenhkgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B2EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713277762;
	bh=9I1io+TTSLuMt/xNcr+9q/JxDHVsgv0+OcJOcYKceig=;
	h=To:Subject:From:Date:From;
	b=czenhkgre/cVkhXzr1YbutGGj2TYowdWLfjL7VauyoICZ0vKA0Izh2arvAMEbgkKI
	 38pTLDG1KYv5j2xQI4aam/lLuVE0O5xIR3LLx0zFopZwXqbStckhUZfWCY5YJ5RKEe
	 W43cbeKZkFqxXGBjTdHyrWpN/leN+TZ32swc9YwbuCFpzjJukWNyLl5Vwi30wGYD1z
	 jH5VsnEbmipd9NsDLBk3WYVyRxkZIMyejRwxeLQjkQZZOwgnQuAqdUbS7SYGkxzNAn
	 hEJmW1ULNy558Ev3SbWfjw7khQWr9bnPVqTCJ/00yxtoVeWB3hBVz3uoCXta3A4FTF
	 umQG1LyQX3rBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73EAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327776280.8087.14576729520432329395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3b53d0445ff7d3ec8446d600508d0260f4e7e2479660d78890603a97d11478
Date: Tue, 16 Apr 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713277762
