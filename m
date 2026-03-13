Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6B634D901
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773373494; cv=none; b=Rb1nErD9SAy83AgL/SQ3TFW0ClA8QCg17WGvmJexscQ7m7MRhYMj+i9KNBAkdODeuGoK2xF+fUXDSvYKrHxmNGklF9yNPIZ0iedqpKTJeyGo2d4a5ibqjy15php+7+p8V8M5mi1clNq0zM4zRBW8TLoqy/F1F9RAEn4CI6zKL98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773373494; c=relaxed/simple;
	bh=i4Woeki6k14W+thRf3LxDXNNVl82FIXj94YLUFF42H4=;
	h=To:Subject:From:Message-Id:Date; b=JxO0mKv9Uwl4G66/FrOk5sf/VJ8coQnD4Uhh+ce684wOkFUMq4o7hSKXTmF562bECUjHScjrc9KtBArmTffj6WpwsDv6A8JAMyc2vWKCxMmIF1eYd6JqEWc2ImDzatmI5a6UMMwNhPRyENjZzAxC3jWBgSS5SqPKT2SXbTUDTEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHrw9mEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHrw9mEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F1AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773373493;
	bh=i4Woeki6k14W+thRf3LxDXNNVl82FIXj94YLUFF42H4=;
	h=To:Subject:From:Date:From;
	b=gHrw9mEbW0CZP0jUWC2GMBHn3iLzn/L8V3nQyG1EBQukyLvZbBHpOTKj9MNgUUbSg
	 XvqETPQuRHxtR1+4vHFwUu4Eyud0uo1oWyVFW81Ta+g6IGcxRcx9TtIMMmSq6XeFxd
	 Cyz36wzxFL50Qb5j9WvLHOc6JjyX3wjnJIaHPfCDV44urJa5aTV+fxebVXnqdGucIG
	 Z7xtQ9TXx83lTrTIlRrkhDcM0+0t3hVPK2SlvBK/Fs3lMeZ2K+eNndhsvLa8kIEN/g
	 DqXMIg6D0NbaV1x21uRJDymzDnLo7F/AiN/hl2E9Fr8KY3tT260loQb7OE66nQKZ0a
	 ErvHs2buk5d4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91648106FD6D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337349357.18019.14631394783294426819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9adc0a51a753d3d37360d013c79584c6af09cb5f9b4554059dde446ae55f7d5
Date: Fri, 13 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773373493
