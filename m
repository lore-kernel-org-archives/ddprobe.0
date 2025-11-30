Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDEB36D4EF
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764538374; cv=none; b=O6zKq3xQZpBcVSZPbbtFzVRjwCLhDWDjgsIk5D1rnMO8nSHZLoLTTnrxY6hsck5ftUmktjtmt4U6bLGNprC5zjn2p480JLn7FvwTLChF2cr/xPQNOgmIGYOoysRxhOFK7RCXNYE2LxfrS5FJBeQRETWYBW3JLKYZ/tCcTPZ4QR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764538374; c=relaxed/simple;
	bh=FjJpyXO3NBRR8Lnef/BBNZmdJSygi9zL3qLhy3vXz1o=;
	h=To:Subject:From:Message-Id:Date; b=imFvyAxr8QFT1D5e7E1mDVqrapaiScUdspnr3J8jVjHDGbj4LYXbRzwHYFByly24I3VWYZbA6DE+K61jcGpKEXM+5IdzVEz0QJTdg6FgGHGH79pbkhW0TFq+z0S8eH3JMjMURbmR4R1nPvN+cNYJz10Cb+lxuZ62FS7eT7E/QEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7JHa7Ha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7JHa7Ha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7D7C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764538373;
	bh=FjJpyXO3NBRR8Lnef/BBNZmdJSygi9zL3qLhy3vXz1o=;
	h=To:Subject:From:Date:From;
	b=D7JHa7HaibZ6sxjHpnrOduhcSR2lHFliz3POF6WNq/XMcLRYxWuuheJHodrFKKU59
	 lRXZDiPHkI/xq27m6vce3jn2p6Odyje+l3jOWCz8TE1EiD0up4cKBpXiY3SnOkOWW7
	 v9iefi3PtAoLy/CGpBT08ctrJYTx8JgMVg6xelWy49vILDEklx5uW2a4JW0WW6hbk5
	 pDbUcyZZ1lkebdocxJlq+j/9LkCm5DxoW30zWJDI7qWMhp9T1dGFV37GcVeIjpCKhl
	 4ks2bAWlZ7OIATgQ2NA8wueATYZq4/lrcaugk0+K5uEUvO81kw54UUB4loHJIZ+RRC
	 jqBK3h1L1WLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D0AD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453837360.22328.18194732057392478784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c2a6aff2759f3036e05263904ba07aa8623d4f0af71a5b3574d55d091888da
Date: Sun, 30 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764538373
