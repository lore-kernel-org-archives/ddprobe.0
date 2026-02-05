Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52D71F181F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770260634; cv=none; b=bSWRtLtjAVMaeRbtotwl9HcPu9I5r8Ib84xY91KfiF9A4A/sSgwNA0H32MNr0/tgKTeCQyTDbxiI/HytWuPWHUaBG9gPNaCjssHqypQjryZ8nvZlKkXFVgJu6OErhzk3eZ1XQtnzqw73kJYubAzvYR/zIPKDtqH/FMKcmkH6U/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770260634; c=relaxed/simple;
	bh=GDC5nXBFPcyt/m97CxpVnnfKbmRT3l9n+M+Wjd2oxDA=;
	h=To:Subject:From:Message-Id:Date; b=ooczMBYxoMP8vRPGKL/nzX8RuEe9JpIQRhor9CXzZweWZCus97eMCTS/1fJl1hxMhJbDliSR1ta42HDaJHShhpj2FIpQEM8l3Kk4+DjcB2IaOxfGQVKnAHs3IO6oQbd2qohmtsbXQomdYDZfAokmqRGnWtELCKY7kwtQEVd94cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8akjpJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8akjpJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3214C19425
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770260634;
	bh=GDC5nXBFPcyt/m97CxpVnnfKbmRT3l9n+M+Wjd2oxDA=;
	h=To:Subject:From:Date:From;
	b=m8akjpJfaWo21nnFzzc+fVuC9znz8Wg4CfHL2oo6AZF9ZRL6Xe2b02+T2CIl/6VAF
	 OpZAwroSdJKPFxa+IC+EwbqWEKonZ3rNYaBIpo7t9VMTiBRyU/ZbcyOp5DwsWCYmm4
	 hItF7j8kZdcXf9wZ0SJ18L3Nrj6UVzbsYsqKr7yHaA++Ginzjx62yY0mCKcAbk51/U
	 WAP0K7ZAcXzYNaZw2q7VNkDDfAZiX9ssSEKCvQL5K1Tsywgz9xZpjClC8KEW9QuvGV
	 WQ21Tr9YNUd0Nb1Bw+VCiA74h8weoptg3/m4t7yrd3k9IBDM8hCUuFtujRzex8PlSk
	 +skG9BGiamLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD764EA795D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026063371.21739.17101765140423848963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29340c48000eb0e35abe28ef402af735ea18f0009ff1d1feeceeacbcd2719b11
Date: Thu, 05 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770260633
