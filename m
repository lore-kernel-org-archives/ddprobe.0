Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9491FC7FB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764910374; cv=none; b=gqDixuu0TunRCNY0rrzsYFwrMdmfxvWNh1jsUFzXC3s28MyUfCyS2tnpxaJviot1Joz49/4WMjjMgwBxploJr6zY01KXaRHmln4GaWRMPGL/EImKZh+HJ7njL6pBTTSjVeqoLgVedi08FwL0q8kNiHdiK34iakuIB75IUNKPp/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764910374; c=relaxed/simple;
	bh=cgbylzwqjq8++UV6ARN6gAPzLMr0a7FGy1X54mVWWhw=;
	h=To:Subject:From:Message-Id:Date; b=l9g5ch/dR3z8UlzTYOmOwv+1ub8VHs7yCe9kWVmAWHu8XQ5YEDAmtmlSAEhq2Vg0ZvFyyXDSwv0uWAGjw3daaQGI60uT7LrC/LKHslvUaOT2XVJUgbmbc1U0qsKmCuWeG663Yrp6nt7AoiePNe1bbmdj6V0tYgc5zQkkjEoQqtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKodKAlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKodKAlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB94C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764910373;
	bh=cgbylzwqjq8++UV6ARN6gAPzLMr0a7FGy1X54mVWWhw=;
	h=To:Subject:From:Date:From;
	b=uKodKAlbFlb2hsJqcary1kWwN1UvQIM8GIFQpS6VU5y0s2E3X4/ZiLXnU4l/inthc
	 ZJWVD/R/9yiUovoxmoO+xroGJxIpr0aNCkLKEaO01tqKOUTIA8nvZtm1COTl7EsYle
	 9EsNpOOXGJpb0IBe7jjRulgzJKJCDtJKm7588Ouyv1M25eFnnPc5Hkxc0W6/lWG8rz
	 SjGCPE+SzJpTDHU5kwwz29zVjhTNPcsTu8N6NTHe5iwhc2Vg9APnu3rN3BbNdEJimC
	 ac6k+ABRI7xH57qxVGRZByRAUsbxn7CT8VD3SOjwiJdA9wYaepgm0zAOgDWU6wNhqA
	 xccHF3h48f4uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95692D2CDE3
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176491037358.10728.4664936364318074463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74af015887139e1bf9aea80a98d544f98cfc0f5694df71e410c3acfabc2aae8c
Date: Fri, 05 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764910373
