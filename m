Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AFD8F5E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748133594; cv=none; b=EpClvqVG23UbDm20wKlamsubmODQo+ypzI36aJriMmG352gJG1FzoOrmUNqaMadXsPyrnkA8uCbqw0JI/00c3QAWRfqUQKuss8nP3tPNuZCcyN35ygsFmTYgvDL18e1fH+3nNY2Q/1Zp8EZtFO+evnseZ1ZuYqkAtuAY3GFNCBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748133594; c=relaxed/simple;
	bh=lcSOXvQogNAvluRAPodiIGhlerIJeLsFqymn4EYfiuA=;
	h=To:Subject:From:Message-Id:Date; b=DwDlEggXreJMuwQ//2T9j9o1eBGwVFi1ZOjvevQptzJH6nc/ee42fC/EV/rrNb9bf0Uj/9FBw68esr3bZ5YNOOFPrvQNHulFXJI13CxesCCk48uOJ52DNTwa9k6bp2wrZY0hcSrWS/RTeIVBxXypLzpAE/u3PaN3z8YrW7vEuyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFuEXwCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFuEXwCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5010C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748133593;
	bh=lcSOXvQogNAvluRAPodiIGhlerIJeLsFqymn4EYfiuA=;
	h=To:Subject:From:Date:From;
	b=HFuEXwCMF45WG8vTsXmakQ4k/IZQASCFYh//XqNmqFXEv4T3h+Y/0hlLbykHYZ6d3
	 ossExz42Xc9rWc6rAP61juBHInX2bTkiSVTc8M/8EqRoHU9jDRn0K0FTvZ+csgNJXV
	 BFemVoJnF9wbXlEsU5eOUWRp+hzdJfTvvg9gJOahcVnpHY66r7i9p3afBi+jD606/3
	 H3ofz4x1JiMAnsFxh35a3sjOWI5tvwPtevnrxZ5PV8V53UpJ5U6gcxFh0hnnn9PFGW
	 K8BfdyzwdLet0eU8IAKzr3Lk+OvC3V04400/e0fjbjbhO3yXY+ClwVE+DpUy9GeekV
	 7sZYxyVSDCBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC3C54ED1
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813359357.15065.13123550981573867096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cd35b529b78695c93f47ae5d09532a0c1ffe16bc5cb5e8937f4ab64ddc46ad
Date: Sun, 25 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748133593
