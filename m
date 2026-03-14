Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2561957C9F
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773525894; cv=none; b=oNwJDbC0hb1ZY2JAeu4beDxxyWZLxZWRJ24Q6YDNq76NyyrCS6aXo6p5kC7lzkGmH5F9wQQxAn/0MdaLyZ749EW0Nu4M+kfO9iMg7H5eXpsgKexhx28gAZINl1gDny3eW6t0pPQ4oKzPgJ+8nbTX52jJI1lI1stpIUamRJN52hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773525894; c=relaxed/simple;
	bh=BlmDbbTsRQuV0D4gmq79yFFc9FAahhSObFAKlyhahsU=;
	h=To:Subject:From:Message-Id:Date; b=YS8S0pvKi/NOQLFVIqo0Q7CdkgdsqmxcSk/BqqsALJYWB0rudz/9hVqAqA9fNZz5YMUuKalD1/fAvQ/P12BgU7/axpKuyMCqPU3Iu2etwpvJqaPxt3QE9pw9m/EVDMzP/i6aPKTTF4TYhAODYRJBtrGkHFIHSBjUqgVfzS3+OCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjM793XY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjM793XY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A5EC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773525893;
	bh=BlmDbbTsRQuV0D4gmq79yFFc9FAahhSObFAKlyhahsU=;
	h=To:Subject:From:Date:From;
	b=AjM793XYH/lqv9oAk/68DAe0xZJTdRMYuub3cr1u1JjYiKbABAPPowUsoe1tI8dNw
	 DOPxXyrzIm4Qnvgpq3VbSd1yLAuGO9OD6F3SDnE6t6BPQsEocXse6uwZkutLNYf8ZB
	 Z7+Sr6DhJwFX+MxbEUcSy84dz3zRY93ybVuQCd6sQg7CYf2pXX9mHPCZxhSJOApcGS
	 Gbo/fx0kDo8+WAMBrbNtCyXvRW5Sr/fwc9e+tRNL/wWbRVFeBkYKdkH+rHW1OQRnqW
	 YrngP7MtUQyiPrk+5mDD8gsXoPE67DVq9wrnwA4HOachcqyq8Grv54PnFVszfbAD8U
	 wiVCSgkRPn/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE6610854B1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352589362.10641.9427975844118066190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8fe41085314c1c96508a794a2c95169ba5f981804329ac06690dc238a03767
Date: Sat, 14 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773525893
