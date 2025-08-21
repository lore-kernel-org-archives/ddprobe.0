Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A1B284696
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755792594; cv=none; b=taUkE7sBVfkvyWbbzhRKwhtKEuHXUAi7cweCc5Pvaj4rhhsNc13MU6a4u6XmL7uTYa98RSmPRlntSZA1R4Z4qGv9MP7DWkLOydMk8ZeJvP5w+MOWFHUrBXRH6z68kmKXMn58EjapTsmY5vJmkhkAXtuvb4o98iWnuHdKV59J2zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755792594; c=relaxed/simple;
	bh=1vGq6xvZIfaQdalr5iOYdlag6sKYnrHZfAwB56twnxM=;
	h=To:Subject:From:Message-Id:Date; b=PuCjChkpM8G3wM0mTmfvObv3FQVZjStbfDa41/58x9w71fDzHX0ExC4YrnuBWVP5nKZ0H3WEvJuXFfml5B2SWB1JQL+WE+2Y9N3aF2nkDZ/tkOabRYR0kznb/P99QJMDcHzcE/O/dCiTxjBhqsUlF2BNS/OTyrw/qyGseAqaHVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFmfLbNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFmfLbNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8489C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755792593;
	bh=1vGq6xvZIfaQdalr5iOYdlag6sKYnrHZfAwB56twnxM=;
	h=To:Subject:From:Date:From;
	b=oFmfLbNqh43Wzg+jAaVc3N7fEBl+wc6lvMYTOEhkLkbQxhd/ZRSjRVoFbeV6+aqT+
	 i01tzlNK+lALs7atSFWEOBgk0reeP2iAmRJB2aYdOd7qLH1m5B0zIC8LMtuX+/NwSh
	 V/l9PTowP5NkEn2inz9GeprMICTesNhtXShjELes2RhK+WCUksWpULCrDY8oIs/Jjh
	 bPfyrWyMSXh0+xCej9H6t+GXZkoSm+ZVWe2q/pdk/tblwXdvpkKEA8Nyhtu2nFTjEd
	 8S2dEk18WnM5CDv3nGELVXXGFBMAJ3QR+mSy78WabDC/vB2D9S+rp/BRVrXH0IbZ10
	 dL8gofQwx5jbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94877CA0EFC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579259359.28522.12485732213260878762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6028f3e8d6592d3f208ad85dd61a235ad8d8820a3fe5585337d6b3e4a1f9fe
Date: Thu, 21 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755792593
