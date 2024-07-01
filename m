Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD24E78C8D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719821063; cv=none; b=bYCBWmhSaS39b+hinMzJI7unKiR2QNHSDI4IybIC8JlUkVR2ttS8AARESjx+4lxMzSUEVG1xoTYfMu3TjexnQuLZPyyytuFrFRUgd0Q3/q6nG2VCb87hd6DZ5BLqG/YL6X1aZbVhAMa1JQLxdbq5ZtmWEdPaEwnQz3WBU/xG0vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719821063; c=relaxed/simple;
	bh=19eTu0l5J6DmWAuhAsRODYWKLRQry2zoOzxeEAgzd/U=;
	h=To:Subject:From:Message-Id:Date; b=ut0E60nC+YQCXT845J3ObYXvJf26ndy/Fa+0QdPwC/a5tWPSHR3N8v2s0QxP0VMILrsEFWx+dZFdxj4waBOOPrcmYhU249S+Qdv5O6OTkMVQn6SvQQM9TGzo3429gdtjBlFhZQk2IigDCMTw8IogjToYQFFqj4kiYAl+cAgnGUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLrNuGOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLrNuGOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3439EC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719821063;
	bh=19eTu0l5J6DmWAuhAsRODYWKLRQry2zoOzxeEAgzd/U=;
	h=To:Subject:From:Date:From;
	b=HLrNuGOQB28b/5gqgOEchmUF3k6QskSyEmeIXFb7m3wr3zQ9LPjyjPoEGWbT8fjGq
	 troW9uo3Uxi5N3Z0DU+gcpJRX2DlO9T/nGANoL29xclU2rlV35vSaMTpNrfs3yO+M+
	 P9nLvyAhp3H7fLRBbH88xSplMvGWwhCMqqjR2zqBrU4g6p7Yan08/WMBSzf27OrXko
	 UVSGmis2ASd/qJq+RW4IMwnNHgV0Wn6o3g7wYd48SAqqbNW1KQCcLj3F49SZUhA0b/
	 0UeeNsYX52Sc2OVmsyn3iE5GDmFh/uSs7W7W237uf5qC0gc31msYr2xvW1u4nsh1KL
	 VnLDnvpKC0wpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0619C30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982106290.8571.18192328416034294354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060eb89f44cf71ade8c2d20aabecbe5d3d69c27cfd7db303bf2d9c01a7d0cf04
Date: Mon, 01 Jul 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719821062
