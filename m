Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FA41F1302
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741820934; cv=none; b=YvOvFuTk5H2JyP+HuLqboT+ESf89wwNRBr74mqcsJO9jBbVesixLgAD0oRrNKt0stoCRNS93l14NapuV+e4se1eZS27SWFM3PrDRUriUv2lEnZoVIuTrEUzXw3QGYMh2B9hlLD/DIho09V6AWR8u7GiWGMl5VQ2LpxF0kdXC3bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741820934; c=relaxed/simple;
	bh=e2DbefwQRv7d+SQr2Bl1itlM3cZzVOY64HssKtYctS4=;
	h=To:Subject:From:Message-Id:Date; b=kXLFXJCnpXGJFhl9t7FIb0q4ErtFq6nRqFcK5sT1zjy/lQLfs3g50kFMZTks/8xK3s3kJE9WJMcDBaZgkUVDfZlkmmUwRJh0jjNKyf/7hv2idNxjyq0DvXGMAiI6iuEI6vvjeSQGF7pMqStIM9TlseJhgyEFyD0BKj7zHfWHHpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/5lM9k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/5lM9k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C1EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741820933;
	bh=e2DbefwQRv7d+SQr2Bl1itlM3cZzVOY64HssKtYctS4=;
	h=To:Subject:From:Date:From;
	b=X/5lM9k25b0RvOI2NQKRc4nKH8MRob2kxbCSPUdVMf9TAAL/uOYaeSNOY70K8s2Mv
	 5zBkR0ajJxtE3Sjl5dNfklPJEH1fzHN3DMmMs/BpoPSzQiZxTYOP//ejOrXgZo+5Od
	 VHoZ8jCQJGRRSfw42MH/oKr/F5/L1D1FLPI5p84mW0L7aa57mTHgIah9Um17FmerHc
	 Ofee2XzTwAIuIu3ZXgVyqt5oKlzJ5epOLdlXrvM/frx+MzbELyXYQmg1Q8YjRCSnZk
	 M/HScisG/6J77euiFAhBjHZ783YtRp1zuXO/2Ca2pPNORVoKOIFwcmQgxGzC0iMh4t
	 LMRNTjsManPUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCAC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182093358.2796.9673830120672075413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49486f5cc60866b1baa2d10f89dfaef4242f6fcc764d26f8c0daddb97548e0db
Date: Wed, 12 Mar 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741820933
