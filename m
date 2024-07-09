Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E2A1DA2F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720516583; cv=none; b=spQ8eLFSMCAfWGwqyMjv3LcQn8ZGq0dj1wtXPf/hrDNntctCG7n/vxtsiJ9YA1ZUia4SZDswKHaEbe4ym5X6FHhWmWGs9Ty/vRurXr30qTyD0gUUkhcdAwh0LgJjWqywYwyII0VYiZQcYj+Q5LNeF4Xb8fLPTMI1ldeAdisdFGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720516583; c=relaxed/simple;
	bh=oevli/+MhYc92C7ESR0yDHlgwDURgwgaxaG4wu//Ds0=;
	h=To:Subject:From:Message-Id:Date; b=NVcIWucLr54oIYqhcjiVgVhjzSRc7rrmt101TE+RijjotgwqM+nz77EBgKqmCgx50zbudGj6W1gb3eSv2wNsKB1dCuNeIyo6uXUGClDEGOYng/WtPUhANRDfBu4EE/m74s59+ikvChfGMUGXwjqluTCimfFCkVzF9iUY//1DuTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEArcJUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEArcJUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3C5C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720516582;
	bh=oevli/+MhYc92C7ESR0yDHlgwDURgwgaxaG4wu//Ds0=;
	h=To:Subject:From:Date:From;
	b=bEArcJUCvWIYnc9Web44ZvRS0TjYlzG3pjBVh7zvktL4cJYZaBjsfx6duw8Hk+HPr
	 1v01FVGmKiJYPfm8Ovv8EmVQLeO73oRczZkS97ru6UQ4GUNB7dZpMCtXjcMHWSczGp
	 iduBfdL1IZi53bTtrrGlDZjV/6hbHcbxaX/oaHOxpjGOjrOdnnFhoEWCefBN5yJTe4
	 lZ//EBQY5ERlAictCAGmoWJL+HhJ4Jfy6n6lPiVbEcaTX1yqlfD159EejqhU4TXKV7
	 ArldurpVloFciNx7+cmz6OFJT4B5ebLELRAio+3nFMzmQ0F1G4VmTyaKQOAxRUzP7e
	 /z/0OQHsmx4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9813C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051658281.1501.5401770942987633635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ebf5ebed632df5df518d43f6615d458d859ef165749ed8ce02f7f2392b9854
Date: Tue, 09 Jul 2024 09:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720516582
