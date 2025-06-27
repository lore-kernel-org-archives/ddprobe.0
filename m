Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3282F1A239D
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751041194; cv=none; b=MKyoeJ4n7pEfZSczLNtwd5gy6ObSyHcBxHm8szGsAWZwBNiipUiPee091/Qu0rce1EoG6ftNr0e/G0ht+1eRa49mR2zu0oQItoCVsynq3cVw6VV1WWeqKdUhJRW2dwOxL+vj8EqbK8ab0Dbfw7h+X4zPw/fLU63uUwUA/uhSrmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751041194; c=relaxed/simple;
	bh=gfo7zHjBVIu8i8yamJq1lDAbLA9tFK+JVizk5+6KwQ8=;
	h=To:Subject:From:Message-Id:Date; b=nuvT3yiJCiUVeVQEAQRaVBOuIIVixvv5ONz9lAEU3ow+qYdr31f7Dx0o6GKFgzbJmCXlggJiErs9XK0DlWT7+CMBPNsa6m/6FhXIVKedzO0VYLL3wK571ylUORSVX/d+Iuob/1Te3V20NkS7h7zt7IFzdfKoOkUicUspHOagydc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMzF2xiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMzF2xiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37B9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751041193;
	bh=gfo7zHjBVIu8i8yamJq1lDAbLA9tFK+JVizk5+6KwQ8=;
	h=To:Subject:From:Date:From;
	b=bMzF2xiQ+2CJ9qCOiJkVpnTUK6sHFFCOW5omP2Ge/YQZGMVexxXUi1l121GqjVQfq
	 V2LkAJxBsiSVEcO9b8x3blASS3pUdNz7NKYft/cAf2ybxMIVdd+4G9L4GLPNFzRsXD
	 lTeUWiuQiToRjsdxsHR/k5xRilYgBPR2JIE5U/LiPtUaiBOTvFJ6+No6FD7Xpo+l9v
	 gD37Nv9VZ19mdT3z+PJnSteGuJ6AFXX3s6ABiC7rVpWnLAut9cL0t+nTuh+UNinDXD
	 213dCbfpOrPQ06KIl2TKvNP1xhG0VDJrJFrPbSaMeO+ifDIw9RGohEO/OvyBTnCNYe
	 hVbvHTYbpDmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFECC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104119358.30324.4599199985051581634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c378dcad1a260935f8f3b01aa611daf0851b96fe1b7beba5aabd1b1c8e482131
Date: Fri, 27 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751041193
