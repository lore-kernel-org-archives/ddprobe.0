Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9A61C3F0C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758410394; cv=none; b=VGHeFhAzAwAZqtYpKi6K5QCwdxFmL3tbnSrmCPC0EykjYbEu6InOwk2Bx+CKlwoCywnadLHkLsTQv6ASVOrSSw1OOHa/NsRtlmrstkvUH7hokF9+DLbJzNfj1lRsKdTjPUIhKGyVfr9zZVpW/b4LtaNmrrh8ZrIfyhR5x6Ec/wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758410394; c=relaxed/simple;
	bh=9dK6+MIVKkUfOVI9942D/6srOl824uN+9zm6VZkeDzQ=;
	h=To:Subject:From:Message-Id:Date; b=l7u8RSZeSN+zqNC+jz2SHFyaZjVLozb1yL1nNVXMCBzNmG3XdDFg3nAa8wiAaD+L4cnHtrnadmEftbPjMW5cTCdy51WpYFGslJvqicw7++11fyOU83W+nQmsqDe/w2nYdL0CId9Rgf2jgXjajTNpgLwpctHpBC00d1YLCaNUFpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6hDcOxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6hDcOxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E6CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758410393;
	bh=9dK6+MIVKkUfOVI9942D/6srOl824uN+9zm6VZkeDzQ=;
	h=To:Subject:From:Date:From;
	b=R6hDcOxuLHB8wntz4ccJF8+tCu8UNMSEPyA2sln1nxPXr1vN1dJI1GQIh1FO9rNiX
	 vYtSANBLZb99AyoArfyalOl2GXO6Is8JchDxdcU/QjLjNb5RibTk5EGK65MpGiO2Tq
	 vjvpxShiepGZg8YYHZX7zPAdlrGAGx1wKYUNZdjuDJ5SHBA42nW7o1YBDbsYVhcbA1
	 G75acwJv/qGJ9iKm+1lhwEHZeze8FBdr2nzBWTHNlqlKIBvLenktiEV7eZtKCcePx5
	 mvM8Fp1an5PuXFTWsNeGSx5k3RjPuT+tj5lxVbvCW2tuM5pYhKbkLxX0U7Z3KyChiP
	 P/MnsUy2mVy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E767CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841039357.1487.9662497718974500348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1dc08e9cb550cd11f7abeb2a872ed60f62c53ee64eec07c0d2c1f7989cc9c95
Date: Sat, 20 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758410393
