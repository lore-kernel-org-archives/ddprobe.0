Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8DE2D8795
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774980895; cv=none; b=jH90wtodrEVLPc67O7vBLVA5FPkMldapvqfdIiOn1biqxqNzcSjr/nKo4zWzhnjDEZSnHE81ELheGMf1tq6WDYlfj9Bu+eNI0xl9jpq3EIh/uLtr2p2LBUBYjYfui+VpNZZYt5U9cMgg04BcYVJl91UBemWM2t13BM/kfLmhxyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774980895; c=relaxed/simple;
	bh=GjAh649gwN9CleappwilUQ6G0wugaFZ1mcgw9yTOQOQ=;
	h=To:Subject:From:Message-Id:Date; b=UXLc1aU0fgR9lSYheGH7ki4cEwGSpCJvsAT+b6SZH7tIfDD4uP8fxXMaXPFceha2IMYAx76mCsXOmVQSwfmgEs/YRwDbAUhIxLycVd480gC3Fb2HCdZm5ZQGLHeWyLNpxUnaskzvjJNUzNH5NoZ0DkrEpgmlGUq2nNOxLU2pfTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGSOJGuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGSOJGuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C5C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774980893;
	bh=GjAh649gwN9CleappwilUQ6G0wugaFZ1mcgw9yTOQOQ=;
	h=To:Subject:From:Date:From;
	b=nGSOJGuXRD6VmLwa7G2BXY7BcjAerG76W3+43wLKpnb0TQNYfMIZloMblbLd8D12u
	 vupyCZIMfYSv0jrt2RGsY/LFeo5u7rj+/LameZKATBOne4dPncjLo+wcQNdctwuXYn
	 iuRG9tDE4Vy8lqC6UaxmKxDWtDTlc5BttylhHy4nFBMYNYOG9X3boLHUNmtdAk9LDP
	 URNYN+cYe6wWz+19mW7UePdr5rTywTwkFSexlzOQ3Z+6fOOOgg674PFufWk2n+67pS
	 voLq1bQXibXiz65eV5DDnkgn8oi65keHA5Vf374LMjLTuENDTYbqqHiXU1/AINg1dg
	 DTnGGKtUrkkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937B8FF60F4
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498089359.16731.17125685292100254587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc650f4edf6d907cfeabd5f465811402eab811501044bf53157d839b21816a6e
Date: Tue, 31 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774980893
