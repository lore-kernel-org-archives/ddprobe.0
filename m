Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B8B2BE7C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768513433; cv=none; b=UgW2h3GMtxmvz4Aqoz+Vs82rnNjutHzALrKLaYXmrUbtEOcd6pKhTS2RkXcmYOk/NsP77ilecdETYdasOA9Vs938BdKIodcNUxJBji+pawl1gP2ND3LV1JGfSApL7GNL1uylLE7nQk5yKWXu5yJjPwbaMBX9TKhtPTbMbswb20U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768513433; c=relaxed/simple;
	bh=GLumBUqFnKleo/ZFCLTQ9CjyKDxsHkMc0af5i/V9jbA=;
	h=To:Subject:From:Message-Id:Date; b=a1AP1lVpORoHCtIqS6VEIVPzC32g02g/9N8uTCm5o7rclzwcHp1Uqy1WSA/I45YM5XMITlAuFSkUq+xOhgiqlv9SzWMbscPpTrRiWh8rTGMMJvvoRYPxJepm+dOD/L9Dc3g3FGhYcdwFg4KBPDxk0GVa8I+PDZheLa8jedOhH2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o712Zfz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o712Zfz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7BAC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768513433;
	bh=GLumBUqFnKleo/ZFCLTQ9CjyKDxsHkMc0af5i/V9jbA=;
	h=To:Subject:From:Date:From;
	b=o712Zfz6U//J3nIV68RatsxBMqqrda2Fy6KkwGuq7+IV3lKs55HNz3WkdXqWzbTEL
	 NdsY2URE1L9u8iwO5TUAExGPxOeqIxkpPKzOc4rI/DfsJspl3UkVf5Mjby3EaOlJ84
	 Hclk1Zsuj1g9zkICnRRQAKTQ8b4YFa/vdl3FtKSB1jbpTW61l2Fl/odNI8kd+zqCJN
	 ABGz1Fq9SJjPWg41sL/8rZfGzRkNWHN7+1fIViLw77wPP0s2M+DKmWYAVfpTrZdhJd
	 7PejA/8pI1gB/OkyP0vV8VsiX/relzacksL5iz9hjgMyQ8Kc6GT0AY/40afcwrVGmf
	 Ec+Ci9wXU6iSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F327D4662F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851343357.29442.992222987601438066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d9a8cf11e96f0b325459dcb186469f69fdd7ba1dd019821f8289f5d04f0fe6
Date: Thu, 15 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768513433
