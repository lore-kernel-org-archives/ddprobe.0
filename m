Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECF924886E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780447474; cv=none; b=lvGp8Imlp5hOU+cUPxLjWSVJQr9vgKo1iTBAW8/YCVNuZAFwf36TKfSP28sQqCG/2iySrb6e+8oLTSbvkgD5dJH0sw+xttzTv6oC2251fCuieE/4B9lPo8Xn3mrYrVg6Ibfdg4iqfie96O1/xt+V2fzbIF8gUglxRhnSHDea/n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780447474; c=relaxed/simple;
	bh=OmQ8hRQjjzvEa4Xs3SahSCICzXsEgQH63TFFy4GIJ6I=;
	h=To:Subject:From:Message-Id:Date; b=gnfNRsuSuIYf69NtQq94dAQf3dpW5kR5f/kJPK5cAX+sdKyefF0ZQgNYFPbI5mtqPrines+XVfInBudfz+RkY5ZLFt8k58NmfvmKrYT4r9lI1HlHxV0ka2zHsZChbC6drlyFufXWq28mTiKU1IqIBtSQWEDCqwWampq3lypYbxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0xTlu8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0xTlu8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F2BC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780447473;
	bh=OmQ8hRQjjzvEa4Xs3SahSCICzXsEgQH63TFFy4GIJ6I=;
	h=To:Subject:From:Date:From;
	b=F0xTlu8siMKGQztTUfuKOqqP29BS+ryEKbY3SLxFHGXM0eRkFUSv4paIP3rv0KAMs
	 qTomM3ZpYtYEVt+aoJv0RhEhUe1JPoOod6bJSImjsDKLDRXxgUYa5IvUNXxwi2MOeW
	 EnSRHpE98p/Us3Icfkt56uRnQa8YjBPoKr88Cq9EXrHDNlr4lgx5N8knWpb5RpnKIo
	 xISAGMO31eiguVggUFEtMTm6cCZMRwmMXBNTByTxC+KIybAapSMVAVcd+co11mmIvq
	 iMuIXTlwg7mc6VAdpqYm1gZ/YzbRWgejap3n75xDkzvJRV2CJdpc/8gXiGTauKXjMg
	 PmF0CsJuhGj5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CCFCD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044747374.29216.18075397639872955605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524ac85063ffe816059630d93535b6402ab7c8fd6cf98bd3232e7f759eedaf16
Date: Wed, 03 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780447473
