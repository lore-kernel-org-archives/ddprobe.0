Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BC417758
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735949754; cv=none; b=aqF/nuC0L08foM3T3itQVV8x1Faiu/uTN4cB6e6vQd7FkkB/FOEr9Tk/UZpY07ucU4YYpoWkS3ouPytYAbnEfbvDs142xwpkULCSs5id+MKD6sBOnnKPtLJNhOwAVGdH1Rnb6R5SO3zqIqMG6UIoI0DaR5/YZDMyv7QLdtSualE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735949754; c=relaxed/simple;
	bh=LO9KH00n8nw0OT2vESBF7yBUqoZIdWt6IPzsLE9o7ng=;
	h=To:Subject:From:Message-Id:Date; b=m0S5o7jEB4KaYePHjqAzOs5QdWDgxZfdfr7vBnlymSUl2y5L3KFUxLwVg9Ix6v79276kwebXEM5VFIzWk6wGDsSANgqmA6ezc1EBJ2YDSCauKmkr/bJ+lc9UShTE693+mu+65D5jKp9ONsZSJFxrhmbi0k3iOF3s7YcR6ayF9Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG04Q+06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG04Q+06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF2C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735949753;
	bh=LO9KH00n8nw0OT2vESBF7yBUqoZIdWt6IPzsLE9o7ng=;
	h=To:Subject:From:Date:From;
	b=uG04Q+06DGbHtXjiuZPGf/kS3uGP3Ut/0xxWe3INmZhCLyi4nhNioZtnrcw2dG+YG
	 tQHYXgI3X0gStzKJDOUZsnfiOcTcUbcIWnL/k5AmgnGepDJSVQwAVIifwfUuDQ6W8r
	 co6jTUb35mnHXAKFtuO6T5Zoka55uhDXawRQutFTV69Lqal55X4Ds0iq3Zgof2ddQk
	 da2BiZB0+33bdAq3lz7x9dl0r4IdOtHxFOEK1anDaDvZGy4rBNlpPYTnS33BpYUTtq
	 SYbbAAI5LTUJv3VTA0Nx7csuJNQChZCf41rjfYb/riMsmQNVb5YgvoA5ln6VpHpV38
	 zw5YBpnttk7Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CE9E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594975359.8383.9946049146161322491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbcb80b3055bf592dbf74a2e55fd4443fd17536497c1587e55589bfc3710280
Date: Sat, 04 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735949753
