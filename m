Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B1C7E1
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753840794; cv=none; b=tHnaYhUfnHfU8+mNzvSDTwI4mVHtLDG1wd46n1dmK5gvDU1/TG3SYBBbNmf3bqwZAyNllCfnocakdgmHdfzHsoYw5U1NYuql4ebar0dvT2DBd1oapEPbP+seGWovHwDL+bhYQC89zn3TpkAX+xujgG/X7Lb6tfE9wpaoAmj+7MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753840794; c=relaxed/simple;
	bh=w5bk2MR6vzGEcKkZ7qmz8PzGeL8qRN2ga5vaXOP1Ojw=;
	h=To:Subject:From:Message-Id:Date; b=tLKX25F5yo4x0+HQEYOJ7TdWBOaArpimVzcLnitekKln0j9u7AvNdXW8OHJHZENJar3pdtphUe0rHI5x6D0fBahZmTMzCqDvWaQ5gVlJ7LBrUKej3QO/eTtlDE+l+R9BPX7qzxzEPxogAm2D1V2BlJVaq7Vxbk+hbAMvLTo0jww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of8tv+ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of8tv+ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9814C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753840793;
	bh=w5bk2MR6vzGEcKkZ7qmz8PzGeL8qRN2ga5vaXOP1Ojw=;
	h=To:Subject:From:Date:From;
	b=of8tv+irodV0vCuY9phD0/KKswjGuVJ3w6U+Ko+Jkurkmj2RNebz8opzfXkZrcFON
	 BNWhwI4eY4gR2/+zgpj24LI9djqRxl5NsxdkObdrnpHuVD2ocpot2zn+TKFjwIi3qa
	 2iecB4UOakjlknrDPHcICFJoRbhPuZo+PS3OXF24nap0pk0NhCvgckcHbyaxOqg/N5
	 RbiPSkSNQGj1HO7KdvgWj+0B/MoRBjxszHFL4t+mA8/8AuqreXLQVqnA+2kzqr6MAZ
	 4GIJZi0TcPXl8ou29IcmPvIuWbCg1N6lrgm3WbwQAwcyAmLtncQGcDARZoJ3qfKf+q
	 uC1wp0fUMPVqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED5C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384079357.25366.17115397856370378516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dca31edb4b27f31be2ad223e85496974ced74cb3ff58dc8d045613863251776
Date: Wed, 30 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753840793
