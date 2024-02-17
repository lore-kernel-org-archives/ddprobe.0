Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162F22D022
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708165697; cv=none; b=nfLlUZuARcPoBgPevCNvIpsXJRMrs92vJFhKMWvJMPeoNaZtT7kotHNuHNVD2Is04JnLXJKY8Ckswbq9Mm+hYJpzXk7fO6oWc0GyHkp7aCS+cpHWYj7+tJ8ksJvX+3Y+zid0whW85aDwIIb6IdoIPHt+ktNbR7EeQxZCWZfS4OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708165697; c=relaxed/simple;
	bh=YFFjp6Oa4M2hpOHGbDM0SI5xHOmFSw6lfctlwICeUxY=;
	h=To:Subject:From:Message-Id:Date; b=Nh+I5mdRSc81AT8eo/PrURWZnv6oR3yZ7ZK/ElUHSspbupqAJWkthBRVkErYYkHyDx7PQxHynE0TzpOlZL/0Lg6IbpRBYngiOQnCz8/Ongp50gwI7tdlEFN/umDMVud3dsFoBSiQqhmQcKHeXex0in2EV2RFfEctqNL7V8OWTPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7RKHxHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7RKHxHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFCAC433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708165696;
	bh=YFFjp6Oa4M2hpOHGbDM0SI5xHOmFSw6lfctlwICeUxY=;
	h=To:Subject:From:Date:From;
	b=c7RKHxHA54PiGat1VJCoU3tOhXIwXUsFEcb7xlHxZLIei2J7zjCuNiZ5auSDChwEi
	 C5bFE1LPdBaMY8yyb+Ohra4dbJIhOPH3yTG0/Hd9xkQncLQCzc3SNgvTxNuucTwio3
	 yES+vYggcDP4RAO5adBzd9zEvFvmUeXV6rAYvJE94q+SsyvuIzXne5TDvK1DQTh4fG
	 S1Jj6ahI4XQQgnQ3qhYPmp8LvVUy9lOE+3HeMusmfIcaSg3/5Oyj0bG7ZboPtAeXCb
	 eyxa64JFs4Qzgs+4+2OgJxuWul6A1qTkQl7+Je1g2OSjBStPJAmLZrcvcA/1fn0inf
	 pJJIA9xO0h4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6385CC48BC3
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170816569637.32767.2106961019965712282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21b42d9b400850c7ccfc33cc48aa6b1ca84c5a3f74b7c5ce67bc055e2c8c57b
Date: Sat, 17 Feb 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708165696
