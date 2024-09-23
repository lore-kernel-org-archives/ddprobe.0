Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D57C194132
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727081154; cv=none; b=pNRZY3sSXjwqMiXaikjSyTilUuKtsprimWHb2tTpjARfQKNX41n9gPGBTRo/dEI/MHwqz5DSY8nQ/UsxDPzGqx/fsoh8gi0Skl8QnGYvhJwXM5xbAHRXGea3Y7NLDvCQ3K0U4H1oS7qWUyWRZVduoFjqsoIDb9Lw8iFBYT/TBuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727081154; c=relaxed/simple;
	bh=x4Xsjrpi3MBnYkcXMEMxSxKD0vdHYJafys+uoIHwbEc=;
	h=To:Subject:From:Message-Id:Date; b=ktjtZm2MBkimSq24Lbu9N8XIejHR55T3U8lm7ipMx25psqqTxruMLWVpjAfp8Y3oFsmp4mgpiOzqdp3/vpCo6srRFnfMqMz5q+YcuAP8iBd6F7faOUyZMWD5EaVKl18XU/nZt5sJK8EtHRYVZV7MZQTracAv6ZvQs7iRWxayQ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6qNVcJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6qNVcJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6988C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727081153;
	bh=x4Xsjrpi3MBnYkcXMEMxSxKD0vdHYJafys+uoIHwbEc=;
	h=To:Subject:From:Date:From;
	b=n6qNVcJ0MV0/fho2BS3gfwv/Xp+VgQeJ26jEGw8TKWnzR2M5M3fULIg+MI5hFFfC1
	 2zIk5jYmG5G8jP6qXgvc2CJTYZqImi+4RaDFSpuIy9gSStQoz04yIvsBRsVd0Lvy1b
	 Wffnpa7LzuRIMel0mwVjP/+icsVYiJ1O0jfwbOPny/CgRf6mPnxq+Kwc3CiS7+1avk
	 TtBCg86bFRQNQjLYw2MuHU9NGCmawcoAg+Pn/yXVT4+UsmlvF0u2V4wZJtdcH+qbXr
	 y8Zt0mWVZQD8m51LB8xIvwlG6WY5uzln7OCdngu83yxZ63DLcsH8PninippGYKQMd9
	 D+RJ/w1gipiOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C012CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708115362.20323.5112809897885629778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5c9269c95fc853539a1872d68f8afc2c9d9c26286bd691c82ec62df22549d3
Date: Mon, 23 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727081153
