Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6178C4BEE5E
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789236034; cv=none; b=J4HspkS/xQuxIPIGDTkrgppddQTTPb9bGQJUi2zF5U2BpLxFaw7DjR0aTARWuIrrWAd8u7GjvPCrd2YBorNhSxcx8du8HON12snta6hmfZqxN5NK7M7lT5hVEUjo7ABBlYmM7HGbHwoKMLStMxRyOVhZhRhBEAkqzeJQyldebRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789236034; c=relaxed/simple;
	bh=3+ow7N96T0aJm8PPF2HWSjKU9Ka+UMie7VY5/iT8TnQ=;
	h=To:Subject:From:Message-Id:Date; b=mQ7qAmn5/eItsyW30SUVz+cczwWboz1biRKLORiJRf2fAEYPYgydbg97r+MYWFsDKn7rfQjCjkEdNKyBxUVtj8BNfUsqFAajqdGs2UYinhpqdvMhbbkPQ+Z0qEPhw9zch8TujbUnM4izgaIZZkdecBFx9Ezrkn5yiHGABHG41bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9XRQbnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9XRQbnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD846C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789236033;
	bh=3+ow7N96T0aJm8PPF2HWSjKU9Ka+UMie7VY5/iT8TnQ=;
	h=To:Subject:From:Date:From;
	b=Z9XRQbnZlFq2pViwFlVWpVuSaTr/R/+8ZB7q4U4TDvNXB4JITKHlYgoDEXMaKV1oh
	 sv+4SVKFnHM9TdiRNxHQ8zIpXAwEP/Pa8265JxRymngs6eZx4jgN1AlQMnaRApCHCm
	 t8HWyL8ldGneRJ0Ipuv0xPHK16vSDJVLoXDT1iNIX0WYRg9bnbq5gFCUi87jF9Eszx
	 IOFyXw7+bwAPuGlfpSlej1SivklG3rOxsaAcsh/+TUAvFr2IBmcqbVd64SlIwdKikU
	 a+4YjiFH/+b0o6cjlphLdcUTRSSBe4jm/qH3Ya549KeD8hW4xfvuVsMX5DfzvFaWMd
	 BG0g2Mi+lvVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA094C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923603368.11997.5188930246044699519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b9d4f86d4bba7200dc47ef01ccb19964e1fb7b3b1b90b2c3a9f25759426851
Date: Sat, 12 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789236033
