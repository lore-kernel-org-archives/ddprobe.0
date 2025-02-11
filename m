Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCBCC1F3FD0
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 10:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739269735; cv=none; b=k9nCrDbZdvikkq/SFKqd9sPmxfy95F0eyXSKAUU565dLxNfiq6exw4TX8nCbRehC0cb4ZYDhYGBGdBHLfcGKsXRHvuz43sbEYU3EvLJqTp8WA6Ty3L3isLaPab7L9ht08AYWi/kY1NHM6RE0skHMOecq++MHgLfDTqhq5TaD2W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739269735; c=relaxed/simple;
	bh=Sv9YuJsdTqDDlGC+k1AdlN7Nfavp0w+9V5ZL++IGQk0=;
	h=To:Subject:From:Message-Id:Date; b=g63EDmv83wbwQf+9LWI2wsIVVOXOAKUDw2irnYn52iWAPOpkGuGPs5McpmigC3n6KtYwwIcIh/jXAd/dPM2z/WKorIagN5NXuNWbuPUBOUS3AIwxA9B7emvk3p3OCQbBB5lC3XLZ4sH9hseBzL/QptZynmEl6t8nBpIoiGT1kBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/Ykx4+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/Ykx4+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 55F87C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 10:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739269735;
	bh=Sv9YuJsdTqDDlGC+k1AdlN7Nfavp0w+9V5ZL++IGQk0=;
	h=To:Subject:From:Date:From;
	b=C/Ykx4+Zx1n20qxWPM3sKlmh8sFb/ZIvwoYoHkdfyvXrBBTCX1Hg1b8SaRjPf1p1P
	 18BYq0On7VdnUngGuCPdVQj74YvFMCtS9rBMGIGDxPcv1fB50NfeoIEDCTBM/E4Jqg
	 dKcI3gSwtCTDsAPizWMz7IPU/+kKCAyfq68Wc4dLfwwC04Tuyzac9TYVdx3/En3vZM
	 mv6IPKZHpXQafmZQB898gBXL86XAR8cBqSseniaTJFnt/pDiR/GRWz2huMlg6pW6yZ
	 SZ4+meRFCeFuxxr4qLhRiX8aXool1Du7FtbWbLjXNzouQkOyNvpOh6Qt9Nfw0mhCuA
	 DYzYYIJQ0XQ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAAAC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 10:28:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926973440.4818.16802324355746702350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764ba1d1ffcaf29fd9722927b8215d69f7806d9d06826f6a82678dfba47e0673
Date: Tue, 11 Feb 2025 10:28:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739269734
