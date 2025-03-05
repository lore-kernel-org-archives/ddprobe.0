Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D2EF4ED
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741133934; cv=none; b=bnWkiDo0ajpftNwJ8TLkFFxBAssFywMQ6rE+pcBQPOIWkVWsmoYFR7MGRnvm07cZ8TsQ4/8VYGAp0YkBtgVtD0TPVcVTRToibTftoLY0EJIYtWE/0wsmw8zYyu1u8SiAUXbekjnNisspRNbYFtcVusaEc22LZqvV21gY5d9UQD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741133934; c=relaxed/simple;
	bh=wQ8kvRSIJdtCl1PYljkxTYQfsjAPc52O7/pToZVAC38=;
	h=To:Subject:From:Message-Id:Date; b=CBCPdsA2HgBQvL7pVmgn4s1BLDy/eH9lhgqbbV/S8CJARUfFoLrwOxPgQz58NE+t0cHzq2ABAYrTIw9MJe6EUXod5hcU/sab8KDr4i7C9ONH/mKWWy5iyAzm06SSFYABjcXSU+A67xZg38OZGGhclSpauqlVOysRVHvL1ezrt0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZP/yNQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZP/yNQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A973BC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741133933;
	bh=wQ8kvRSIJdtCl1PYljkxTYQfsjAPc52O7/pToZVAC38=;
	h=To:Subject:From:Date:From;
	b=PZP/yNQz1Mk/PxzdEaB0IGScTwHvYojrXHtU6gagmoP1rRTVFUp9KoWlqFmDVK3W9
	 vnRWx7qAVX1lbcywia+AwjIFk9BdJU7IB92ODg06HpY2DyhD4VStV9i3Za+8btRxFa
	 LLrAuIL+Rg9+iBMVAL2LgdYcsFlpLW/niJUIbUJEACr7l894DnPC3TAj6aovCe5MgC
	 Z7HHLbNYoRGayrxf8Ho4ye0E6Jnxun18bv7cZ4T+JXZvQLp02b2Cjj7IMV/vWU6INO
	 DFvl7z8bRTWq6oKLgRz2Uc3uv0L6uPI5AY7bwnj78mgS2rlbP6n1dZtIBWz1qO3fIA
	 MeJ5aD7LpEvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DDAC021B8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113393359.2000.8260156979749116771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39152e9ac13aa2f0bcd67935e5edfcd8e5fd27565f02e5b8904e0361daa2aa64
Date: Wed, 05 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741133933
