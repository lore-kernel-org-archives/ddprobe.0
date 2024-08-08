Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315E41C32
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723080954; cv=none; b=mBXjks86RKzZ/WqCt0K9yYIlgFP4Slm0YbZd3MDyPl6a8ARg3fQi3NANvczLIiD7W//axkgJtkWo8VW2KG5ZksLLxqWS0CKb76xOtUVk6pff18Eh/PogfdbPZKVSakYFgBppK59ABOhdfjJySIZocIQOc3aVzgco49ssj5X2m8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723080954; c=relaxed/simple;
	bh=0T79itAYpelNyMZ1VwTwhbnOHS8woZg4X8fqK/nH+Hc=;
	h=To:Subject:From:Message-Id:Date; b=VN9pW1x9Y6bMrCxk+DTHLMyntKJdow13UiU4EHv902+nH9ek83S7bUOwR+KL6DwDofax8E/lPbumjIjcI41I+wiT4AGzlbkgaiVE5XzLNiwnweQDEMpXkT6fkT6UfyC9vsZ5FKQSi4nDtwZN5ksBn6jhcyxea33YKP7C5ZTfY3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcyhwtz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcyhwtz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6B3C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723080953;
	bh=0T79itAYpelNyMZ1VwTwhbnOHS8woZg4X8fqK/nH+Hc=;
	h=To:Subject:From:Date:From;
	b=lcyhwtz9awGwN0JIHwpWOcAfIwNzUJTxVVSZwnf32m1dlQAkdcmvA0lQ9QBzHMOJn
	 MlSPXcbBwDv+6Iphp6KUtyLQvU8DgtuyPRGcettYUTtQCDUewHn4ijGFTNfxYf+qyI
	 6IQeDG4RA0CQkEhJSb+Ei6KPKKZ4eIHcdxQsrM9tXJdbhk1M5Vng2SOpZ/x07vci2f
	 amblIQJsNBWXUED09jTphAN/V/ui8bcwHEo/h+fIVC4UEUN4gX0tbSQ1jC2870T5CO
	 yVIJC3HubV1QNsO7LnU2dNauk/gUzc3QmX8FvMmqoFi4vJ/BzbjVoWLtW7s4per2o0
	 Br77pDMlIHFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99906C52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308095361.15345.1779728432378664506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ec3d30ee49a349922963cb06b254075fff4b06a1ea0bc7555f08b9210d82f2
Date: Thu, 08 Aug 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723080953
