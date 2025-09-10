Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C9E23FC4C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757506194; cv=none; b=Y+Ky4XOZmG0GMTTmls1i12ZtJpAAT/z1fGA2ZBwccT1fs7ee88Us4HXMlC5onFSzYb6B674mLc501BdRQrANccE4Z6QTFJq0AiJn1klRy5l1g7PH8uvRcvcQQr8JteYzCx1RuYp1AU+OeDrZXxFIT0sucbaS8J024uC/UY8gIA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757506194; c=relaxed/simple;
	bh=eGxTvroq84QLlv5Yi9t1knVYttXaLIdkv4NhCQAZYZU=;
	h=To:Subject:From:Message-Id:Date; b=AbkAABWeMOmuKjAMesG+K5pM49vS2k3IkajjzTLUivq80RYuc6puDVhVdt9jWr9/zVnkrHITRgOPRWSTOq9rg8nuGtWLtpkKV8gQW+mZD1z+hKCUnd7uxMZFH9bmlTeR9a8Ovmhowt9xqRSD+aBPTV+nyHMP4R048/+qxaQ/n28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSe1z2cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSe1z2cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF46C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757506193;
	bh=eGxTvroq84QLlv5Yi9t1knVYttXaLIdkv4NhCQAZYZU=;
	h=To:Subject:From:Date:From;
	b=mSe1z2crG3IP0ZlKxE6mzRerwOqgiYqLbuFYne9zKqSPSA9IpsWqzOsDL89qOg2nH
	 9lS6RjxLyc6aNXmy36EO2c6syD8AsF+T1PoSKuSq9tjMOJ4XM+xtOCwsIGWpYlTCC/
	 LV5ZSWmaR2sWxOz8eU3UBza2SRK8xmSWVgyUoa7sAeggGM0A86j+Xx0V5jMOZUIAHC
	 dvmcKcEg+SZJJG30oh0TvWu8ai1XFjyAi6rsbUGicNSRaSaJPzStwaEAxCd7onvTrb
	 q7h3Pm0NvecnOGnwjmbK/1oI7vEFgOrG/7srBHeg5BNOy+toajwhIiwqLRtiBoAPbF
	 JXk7ptSZOPgzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E857CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175750619357.12446.6164495269904994684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbfd49f2075ede0c9b385b2c1d52fbf62064c188a68d93e0aebf0b928f5baf5
Date: Wed, 10 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757506193
