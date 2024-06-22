Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FCB1883D
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719024743; cv=none; b=EkQP0NuuQupXbQqecfdL1qsnExST6bQ26zkmPD+iJNlEe6FHclTERQMFN08eAQ8pdb7LUROEG9+djrbbLYp4iCHeevLrcV7Odd20wFU4aqIhWkhfr1fNel8uI8Fh8/+BU3jDoIGOCltc6jZmUQpePsHuc97PpddM5pY1ybEJO6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719024743; c=relaxed/simple;
	bh=El3mJUFjhcyukr5GX11C7oV5URAbX6hGcQn3EOIabDs=;
	h=To:Subject:From:Message-Id:Date; b=WEo6wGgu3mReN/xeqeXRfGgiQcba4+lpg2TCgOQVLeArkO3jWx5rhamcYSHZMhT0Q9Wcs3CGq7II+yiJIBudA6AhoMrzaFsHif04Soza6U+tp3DbiQpzpOo/SK/JXf/g6Al2M6T21VTYTHGNEHCKL506LIJujRFk/SwsrhbR72o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8sJL7Df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8sJL7Df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3B8C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719024742;
	bh=El3mJUFjhcyukr5GX11C7oV5URAbX6hGcQn3EOIabDs=;
	h=To:Subject:From:Date:From;
	b=f8sJL7DfnXJGWgbOzn0AgoZkTt87IBlBuQMb9kS+usAJUhut/vi3sM6E8bmxPzKUN
	 YWdH5kBPp+8+0Rt+vLB9a+i8Q2NwGYBhMCAh+9jTWsrErHTO2BuVlWBw+BXX0PumXh
	 kqgSBjORIXGhgru9tdfbZMaW4TAH4IJY7bWj5IZymArlzxRqBM/BeA6sNmdh+3AEYP
	 rngIM2C5ljKRjkeQGiJWotXoxXtbX9Zg8na2K+/aZQjCw6JZtaDtsDBgeLzYy1eJaA
	 z+688wDM6/f47l4vfWsmK5Jz/yyUJ+geWm4s3bj9fPm+bs3fUyaEoqkVNYSnwBCCTP
	 6SGlGhQixXWyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F01C27C78
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902474279.12528.16679118850173203035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0907ac2085f620668ab6b974bda1f529c170666f74f2d0fdebc76f8c597217b
Date: Sat, 22 Jun 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719024742
