Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239F02BCF51
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756111194; cv=none; b=c7KPaMRAKtH8lzgc4TrSos/BndmG1egl6CaTNaWzccs+jJx4sElumVCHUE4lUiHM3cE3+LumLJlbvmxCq3/bMxhWhNjnCACrcctQK1onDsuIfBKtPjM9AbruKOBpafTFgwhj4y6eNfnwD9Q2fSfx95w948FlxDmyM3kWbA9ooi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756111194; c=relaxed/simple;
	bh=rdT1HymStbZHhmIoBFXxmNrHCBxiPuxKQj8cDkaxv8Q=;
	h=To:Subject:From:Message-Id:Date; b=s+eWBjDrKCBmcfn7FzgTzhNvlMJr8gwtPBEmJoOOPLAl8pIn9FUqx4b/4zZGzxdfEG+sC4//VrFvq4+NV502FiEWfWqOKViN7jbnvXmg6g4u8zELyrzqkHtOW92RLZv/TFFPFYz3QHKqB1ZrRSe+3nMrZ+K5Zeoon7JfwbNlxTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMZEtqev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMZEtqev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04AEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756111193;
	bh=rdT1HymStbZHhmIoBFXxmNrHCBxiPuxKQj8cDkaxv8Q=;
	h=To:Subject:From:Date:From;
	b=dMZEtqevOD9gB1JhXGlGpuAaamwEKFAJfQTPh01J58iuq2h3lvte2r7CrdyWwUJ6E
	 aA6aLlA7fsppYi60BLXlaNh9PO9hjSS3umS+YYBQZG+dkv0y6wuihVkHNom/HNfmok
	 bzt5sZLqmzdzmiRwQEIM86sx4QHXinQC/c/7/PPwQQqG6uB1WymmDO5tKt4Pk5aLqh
	 y6Tx7HbO6Z2ndtArV3OZuMjGCdlmtp+9HoOti/Xw9xNZbRAJ3X2ERbKBO1yeKrIKs1
	 YL+2ictG0i9DOASqCwjHD2Oj+IlkPx11KjpKUDGmuEexNH0WzH6yoV2X3uecEKX8kw
	 8Iys4dQIyoKfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DA6CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611119358.32578.4539514254200102561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86144b4771a90d93f8c44a7bf3135fba0328994312b009c0c3e45e3e01ee54e8
Date: Mon, 25 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756111193
