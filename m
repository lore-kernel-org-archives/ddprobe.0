Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834632D8375
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460714; cv=none; b=MMtFNY+3vP62xHG+tkbu+CZYFY3oNkWyQSpfGEU6xh1sHyNFF6ElsoWCUi8iQ5psDFC/bYKUmr/nlX285GlUUqjDRmo2xyIyZTY4ZYkRFSwF86SiFybGv7d8To2hV/227kYVUuBe1FQRxYWgCaE3mIy0IH+H5j2X+bBJMCUoRe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460714; c=relaxed/simple;
	bh=yHT3J2doKy4PBOA6t1XiCv0GFe1cGEw2zqQbUG0o+6o=;
	h=To:Subject:From:Message-Id:Date; b=cBiJkqSXywmjB1WuDHfda5GdgWGBH22Ic5K/Hngosp+C9y9Qf9LHZwXHniGfIkPfILk2bt5QeyudFM5U7AphVybVvxMlKAyJIv0vXD4uC4bKLWIZxnBhcp/MS9uo+L2D+QMaIJQHeWb/Y4GLjJcQxOfL3Wi3415628Iu+JiHdSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCOhCOl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCOhCOl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE998C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763460714;
	bh=yHT3J2doKy4PBOA6t1XiCv0GFe1cGEw2zqQbUG0o+6o=;
	h=To:Subject:From:Date:From;
	b=hCOhCOl+KEaLzAJs7kpLoFP6rsW1n8DkxmnOfl5wy+gklOYdU0wksSU1Iv/++fIt+
	 Jo6OKxu5qi8BcYVppqjpPyHKMpJ6vMjicm2MM1j1INy3h0dl7+EpaDsr8FlxTokwmR
	 JUX0M5pVMKFHibkhJpQPqHQB7UttjaCKGX6iv1JoWl4qAtp8OQ6Bp33eh1YzvpwWi3
	 8fkuhEit+sf1UtfBe6qtVlKvkImoJxkwwa8Qj5+wCmO9IQL/vxfvDlRs0i3MndRpvn
	 UbBePsvV7QiV8fxsuLClx166INf2X4DAFrJjWSy7SWA0KaUbhLummguNBZ4vriIj8l
	 bdB29XRR9EYEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F0CED265
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346071358.4784.3671957641219169562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52768bcbdc594488d944c73c426a002934b02b49a9c68a3e63d7ea0a18e8dba2
Date: Tue, 18 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763460713
