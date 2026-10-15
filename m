Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A5937B00E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792041034; cv=none; b=WBGEEfwCbgbsRrJYXEfM6pzyVu7i3tEDJFZv1kJiRIQcs13sQZ123Cq6fVkT+vLXTI6vmqtKiUVGUCfD00z4QHYCkm/d9ptBw71DBhy4p0efDGMwIUWUeKL7TkVjGUenNdIMfMUYpDghdo+RJZ/l6KF2+IbEM1vYd4SNJ8BDK/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792041034; c=relaxed/simple;
	bh=nBPqPAYKznBhspQaKBQm8bO9J/5k/IPSMeXV4UQbNFM=;
	h=To:Subject:From:Message-Id:Date; b=o+v9yqmKQjYbd3BRV7uDGL12T0IWK21Spbh63KKE9+7SXwh3mzbX7+8y4pvuOaxs+eeuKbZAdUnzZh4Q2YvwXjQIsmG8cpFTkuF0n0LJTGMU+GhEriIUkm5vltk6lF/SfaBYG4bCJAJk5Bg1QVlwlD2x/hYos71ZKRVmEclFVhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn4QwEK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mn4QwEK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E0EC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792041033;
	bh=nBPqPAYKznBhspQaKBQm8bO9J/5k/IPSMeXV4UQbNFM=;
	h=To:Subject:From:Date:From;
	b=mn4QwEK/lAIe2d7TNcXE9rYhJWPDZx/A5vwXdFpcS6KVLHnxjT7Vq86c3v9tnIQ6I
	 K9TyJT+ycmwg8rjERVZs3Vjvgvl/Cuz86KoP5iqubY38YTeqorXxc6P6ykJs2Uwgv/
	 ZuRQt7IPM5+BTHsz5yfDKrxghsyNJENeg1qaO2L44APrTcKbeJcZqzpiy9f6gisRap
	 /nr24bq465KTfCf+09Xh5P9czFTnp1pwUQgqAqOQTxvNuEW6p8DTdnUJnmbplpf7In
	 b+ZbrpcfaIDRfWgGGjh7ZrWTic11BAk+2y3i3myCIM9LGb0y5Bndv34m8mLZhUSgUD
	 6ylB/V+HJ48oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6BD7CC6B2E
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204103373.28295.5031131802122872740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b1ab151ea2be5d1f336cd651a606b039d87e8e0578de95468b903fcbd09869
Date: Thu, 15 Oct 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792041033
