Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C934F3F7865
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774358093; cv=none; b=pnpIc0I9McEw2hriQcpCl1SlwlesAT18bgdq5r9/ZAMpg5/IrzIGK6fIiG3TZLEdkJTZerU3JYjP4CeOmXvlRI2JdpBPfJA9zIxbV7ICKzC1ler+glu8byXhQoulJwdQuM+wEUtxN+0QWnToTihBu26NEx7v8OP+nUvUKe3mp90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774358093; c=relaxed/simple;
	bh=1MKhAoIPFpxeVPENCNt4xvTofjskRT7QThSpEUpxMDo=;
	h=To:Subject:From:Message-Id:Date; b=SF4wBDcjkMMBI10VV03lp1GlFaFs24A0vPZpfph/KbM2nwETptc9GgnlV6mUINJ3987SytAx/vNdwPactYo4bK3KkOpDdbIEVQJoLmiKFgTagXGk8YKLj2UHieBiXur2qJcwsDw2x8MlJ1J1cb6EDyo4pfnNBRvjbLvWzKIqgKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qoNlUc5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoNlUc5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBAC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774358093;
	bh=1MKhAoIPFpxeVPENCNt4xvTofjskRT7QThSpEUpxMDo=;
	h=To:Subject:From:Date:From;
	b=qoNlUc5j8JGdARYw6KtzKsqovAHSFg5hzbBvFhxh73qzWul8vXtA3wt8/okJg8DMd
	 nS9SqHUKEmaEA7xHDwwJR0SSmc881GJXE3ybRf9eTFml/UKipXOZcM+cHtYS8m0d+p
	 b2d9snva6/Pel2HtCEK+Auu7FGuvwAPiy0wUKwOSSR4dKWQBVnG/ZLFz1V9YpNV6J3
	 AzYvTflAzmhaPb3AntieTp/yUzuQWWNAx9dPiNQ7wO7AGItHKH+72VzzQmys4cFlOO
	 Cu6OtlX/ohvYBFWB0azEUcpKyDdCJIBsa10XD3zj10wOIpQUql9rZSY4Qz72VyrHgm
	 Au8In/iimpNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93192F54AAF
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435809359.23839.12043580941950789519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3a9121374771733f4fdd34574d07539dbb915ab93864e0d44924ca17ae2efa
Date: Tue, 24 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774358093
