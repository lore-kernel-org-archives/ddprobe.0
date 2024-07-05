Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426AF1E867
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720183523; cv=none; b=mcpuRpboGa/nJPQ6QZI/S6Me2Z7HL2OsiYPbOPEWDegjBwLJSXJvI9MakX/KEWhAF0AVxtQdj9wuRtjafl85EZeIBKUqmP3MX2VrMgVFdgJarONmY29vSflN49VCiCxyyk9KAvjLF4UyQ7aAhRnstQpsK3tXIE0WC7PAbN3nlLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720183523; c=relaxed/simple;
	bh=xfeyzjATIDdwYj/8qgn6n5jWA6KE6v2VBw7czXpy0dw=;
	h=To:Subject:From:Message-Id:Date; b=pOHLaE9Jlkbpa9tIKYI/NVLivpJM07OtnxhvyBQWXyH4+VMFv1rlHd21qmVBENQYOsIezRAGXzHe810zf/a/smvVF4OAphyZfMqFEtgWNmbKfZqELFrPC8lxlNorQiFdQXA7lqXjKD06EgzdIyVTl2kIHXXH8BYYfnZa0HlfFwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2CdtVVT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2CdtVVT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50B5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720183522;
	bh=xfeyzjATIDdwYj/8qgn6n5jWA6KE6v2VBw7czXpy0dw=;
	h=To:Subject:From:Date:From;
	b=n2CdtVVTcVGj4ERw2jCl74s5V6qJjvXL3Fr2AbH/FphCOkmhmR/mjpnxRJ1zet7iT
	 sXNdC47VmrfMcH72nH5aNlGTje3+3HLEEeqm9SlluUT22q90flw0AkRtL3hlK6iDQb
	 Y1MttKUVG6pXnjBWTuIF/5UCAoI9r8oV25/diCDPx96WQWREhyyXs+nVTC7z0L7jC+
	 wUrrQ2OfuFcmft6Y5+MZ7NhwWX35Da0Je/a3tRG5zQE/zAI/iKsk4w2n+bXqQwUSd/
	 XF56ngcwz/+sLp4g5EilPik9MUS1Q2N66TskVIfob+EY9q3XMtUTYYOUa+RNd3gkzl
	 i5EQKRW5NJG3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1ECC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018352276.3027.1793189457389982044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3880c79b31c765998264b466dcfd426cb028bdf367947e29a80bffe5426df68b
Date: Fri, 05 Jul 2024 12:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720183522
