Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDA3238C08
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757684394; cv=none; b=gXjvfciGVMxtQBRqOY2yYw6ptA8K62nbTb3w+Unj5EvXjOUIBNN/V4dn1QZUhjPryxfx7e8L8L/FaRHe3iJKaiq6yrTBKea1C+feNsnYwbnudABmamYdOlmXBxkF1xaLcd0hH/Dj5JMbEqA6jKbVRcKS98zBAxlkDIQfiqny/hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757684394; c=relaxed/simple;
	bh=+rxSSVcdARYe2GzpPbaF4GDGXTXk43of/BHShhk96t4=;
	h=To:Subject:From:Message-Id:Date; b=syqewajV+4HzF2YBkSB3EN0BC+7gTX5IGHCtEk8ItJ4hgxkhheiS6nCwg/10AmFzmjJOQsTUtVDkctqbglCuhNOyL5ExNf5xQyQ1guoSHxM4K1ga8H3/btNbjCkyceuAHGH7VdThTFV2EKEK0C9vuqWOGbmQOYSfPNSluILozEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMZ8pEMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMZ8pEMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC95C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757684393;
	bh=+rxSSVcdARYe2GzpPbaF4GDGXTXk43of/BHShhk96t4=;
	h=To:Subject:From:Date:From;
	b=XMZ8pEMTmcE0g3ihwGVIwOaLv6nSB2M0xqBKfzVVE9LAT606e4gyUCAg6SDCgW771
	 46kYt9q0gFXFJTKTti7z9fhe6MgDbMApuFK4R9KANMN3POoBtSfXyfEePxx8BxcE26
	 8YBcGs6237yu8ey1HY0wJus+6J7DW5ID0yIyViAmR4x3JLe5s6aAFHhr9oFx8E5++H
	 b7mL9r7CRK80jtY0eq24hORm8+TdrEPXI1Tea1WYAwQnS13zUfJcxu2Lfq6lEJe0Zy
	 tIKlNjMOuEttW1j1HQhTKeu2Lc/VWbrx5jpIQtt9NrxngPQLVt9cHFIaydeWwvHs4O
	 Izj+DJEJqYrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F1CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768439357.17477.1099333011124264706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48e98a06628c172f2c223fec30026d20a52ffe4eda502fe1221c868fd00ef9f
Date: Fri, 12 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757684393
