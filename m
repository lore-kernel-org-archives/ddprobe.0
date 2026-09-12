Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D1E1E1DF0
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789172434; cv=none; b=uptLojSLUIL+hopN2XGk3Rrrrz3btbaPMEFu+VepJKy9Exg/SLZArpZ6I4ZV7dfHl/QfSNePxkZFJy6mPRQ+hdQfyCR/IKD2h3w1xBcdKzdvGWveiqYsSNjE1X1LURdUaSCJj5TqGCcJiVbEYEZFlOManAn2+6T8MwXqu2R6cY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789172434; c=relaxed/simple;
	bh=isOooEvEhU/r8bW568xTLVEqc2NLX3Yy7COEzcFT2/4=;
	h=To:Subject:From:Message-Id:Date; b=bkJwgDjZ0Ylydp9ev/cBimoy7OIh5wJwcQxaKF8pMHZiWMrCYsM/jAZmQvkvryXHLDT1zThkouJOMCFi5aGrR7W9sAxMeUxCTdHq97GvnLjbhPJJQo6kt8llac5zzpGIbYTwnueaYtANp65+MMNdWtUdxT7IG6Mk7CJCeUCiB7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJJYVyrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJJYVyrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D463BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789172433;
	bh=isOooEvEhU/r8bW568xTLVEqc2NLX3Yy7COEzcFT2/4=;
	h=To:Subject:From:Date:From;
	b=mJJYVyrzcITWsKqxnO0j4kpvST8i8YsabeZbtYLoWjKEsri0vNZCvh1auMaG38XFn
	 U6+W8A5xXbuTA3AZ2bup43CEbdmpeqQXHHbv+xgrhchxXK/KByp8ROJYrXW1P1hLss
	 6M75xj1KCP8+GPKgnOsOJKlhgeds80E+27rFjZwfEuifsPhv8g5A091sRqdaQdqbjs
	 LFi3eFlGeB9ALebbz6RCYwROYYfO9viUU/nPSzh8ui/LUPRX5/OqoHDJ2DyYbvGz+X
	 W89WG+sLS+qx4sotgPE8yh6YZabdnpS5ze1vlnEw9QfZBDTzmVGc6ThDzc+9RUJP/j
	 hV2N+Hk64QV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05F6C88E50
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917243368.11368.3097007619771097812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79774d1ebfbf64e0bb97f23e009a7b5f7f7d1b4f1e4dc05db3e80acd8defd0ae
Date: Sat, 12 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789172433
