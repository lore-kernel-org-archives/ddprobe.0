Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F2D3C343D
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773145494; cv=none; b=KDo7S05f3TvNxDfol+K6jjQT/UEMn+sZRlXAtgmmfyBWeYmRhtmz8vckYfM9yb/7cdzA4hCNPjSOITb1ZWdB8YXI5LkrL0RLiLi8V6ZhSUywZU06CA8KiOA5couWLr1Ux9Na+i3gm0bIFNY+VM3diYHfzqc/WtMfylDtrq4+LH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773145494; c=relaxed/simple;
	bh=qjGKlTDwVjLfItBDEFhBCS7Z0XF4zeWhGgiDpUA8Mbg=;
	h=To:Subject:From:Message-Id:Date; b=MOXC9gHbMjAAr90sTaM45W6nvfrCgQIp02uOhPPGClD60fy96I+mhqUz28GtYhf8LacOJ1R2y1//yB0OeRrbyFXpZYdA8o+7aWtNWEVa006XXwP7l+PWCTnoBVlnILu/Dggm3X2uzDCszweKghzzXPZYb95jDSjxeBhJv7hr4oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/Voe1OM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/Voe1OM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED29C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773145493;
	bh=qjGKlTDwVjLfItBDEFhBCS7Z0XF4zeWhGgiDpUA8Mbg=;
	h=To:Subject:From:Date:From;
	b=j/Voe1OMpI81ivVzdZDb1Il72KaTno9C1ioSHw5nQP/HKktoHo1MmeHmMNgoMu+xH
	 cXbZuOFTAqYpXKneYBk6UgtzQOT22cxOrEqrO+KjGbYa3clzXGT7w8pL92kYMCEiaw
	 mxPd0ZqeNBdvpch/RKVTo4jsCngZfEf8VmidOjHIM0KcDM8YsJcCSXdk7CH4LdC69g
	 mvxMkEkKAVKAxfNSq8Liahn5wNeJWXnIYlRDoBFb6C5F5gE9fE9hDpqQnpNFJ33J9+
	 CqBankfKb41J0CsmO5hRcxtvuUKDdYF3YXN/6505g/YtSl47gVhxX7FXHPv9bsrMrZ
	 TcjRQghF4oIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD97FD2D69
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314549357.15198.14213341385318132928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c60c18a9aad769d5b27c359dc2ccfaad31e73c6c479e55b69bc79fdc7401be
Date: Tue, 10 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773145493
