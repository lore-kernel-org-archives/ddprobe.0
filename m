Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389B117993
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773008094; cv=none; b=YQZ3HC7iMaa8vZVGKxfpObL3mJPwfKXHnChOLaNDK7M4CgMsGotB2y18vGG9Fyu54d6Plefzp2FwRnGnvPq547gIG93rCD70XwnbGYhReZN6KVksfLqAIqTurnqYyGebfRH0xZ/jygtcgQ+EsTvBqcHeuu41CuaGOnQSnIt3ZbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773008094; c=relaxed/simple;
	bh=tBcRqc/Nu6pEhM03sSscl5h/pwtSJy318Nzt038Ef9I=;
	h=To:Subject:From:Message-Id:Date; b=fcB1qyObDsh36VgphJk/scEvHh5yEoDU3XpFfTvxzuxybIG/Kmpv9dOFXGv0XiWBW3FBckSYPesHK77MwVj0FijcSDYn+ovoXCXE3CzQT+g4dzdzWrg2iz48sNYNMZuzmcrA88uzKOSj61AtoO2cmamK56DgoFSv8UaLsh9hB+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyTVAYZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyTVAYZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD78C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773008093;
	bh=tBcRqc/Nu6pEhM03sSscl5h/pwtSJy318Nzt038Ef9I=;
	h=To:Subject:From:Date:From;
	b=nyTVAYZgV/1kBS14KEBuiUNDwWf3MBFCx7Nichh0pwzfJVR83Lq1xtf1EXIq+ZN1X
	 NAYaP8pZvAzN+kQXYNKYixnXQFPYH1uCgBp9X2X3BONY1MQ1205XJAoaBwIU1V7IoR
	 +Z8+6RyBeEksvpAlZ8894VJ8e2ga7LxlvrmoU549YJ5RuVkdSfQ0/BNttSJVGeeTe+
	 uTUH1EwcohJyX0kUU5FKYb3qVc5gVzY879vqID6XHpmKavSPiIChOUQLkxSnLm8UPJ
	 GO1MTa5vLNQHF3jDPbuIBGUVrIDtKHp7DWCQZqUsh3PEKJRKWIZiW0+57EnD6vrn13
	 hgvsiR49bsWQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94612EA852F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300809359.23828.17327695793572047759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120b532b9e6c24b5c9f37fa2b6c58a24b09a8e4ed91597ce56468b2eb132fe41
Date: Sun, 08 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773008093
