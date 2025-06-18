Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345722EBBAD
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750271994; cv=none; b=UxHWo+XmS/tXINxqw4rfoelardjuC6pGq/Wb/dZfzDGaP6Q5uVQvlhbV05dgd69t1Pa8hKbqSjGVQzKmLGNhiyFhEo1YlSwwxoxkar9R0vEL3kEgwfYL37lJ2nb8oGi/VBNNuTij6w69EKBzi/yzwwvWWVU7SiPcZSO24mCX/bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750271994; c=relaxed/simple;
	bh=fzMNCXzSzNyvbEHez5NFaTFOF/rL3aP4E1KrUHGB8cU=;
	h=To:Subject:From:Message-Id:Date; b=N8g+eyWz65TNt1tU1BHzkOyUeLD2qxeuCcmfxA9tw7J02VGUs7GVeK99HhMfFFahEshJdU9DIElDI84ysfSOz0CvFONjRRLIuUosPF0BNqjyJ6N/Yoorc83YXEib0PWIYZZK9zmJx/iTFkN8MLO+gR07HsYN5J/88ZSJgHwP+CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kz1UTbwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kz1UTbwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18DEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750271993;
	bh=fzMNCXzSzNyvbEHez5NFaTFOF/rL3aP4E1KrUHGB8cU=;
	h=To:Subject:From:Date:From;
	b=Kz1UTbwOiJxH65iRIPsVQiHQ8TPoEoGRoic+sgcYtK0t7COAvZTtOEiP5n7SjrGBe
	 mnSCdtE1Rb7DclipeSPK8E9FxajFKhQgd/aAx4BATrMldVzdZClgMwHq5z1hQ815Mp
	 glATo3R9L5Rz/b3H3u7lkdp5YieowaGfWVW4MDuAC6nw2SEC1yVEh5AhLNyHkdmmXs
	 aDy0arBvlwdcrGNtGfdjwpLbRGjVNfd2Qr07a1MquBMilvMR6IycvbGsOPaobDNGjJ
	 /xSy7GiI5G94AcUYL8UIrIgO80rbI1GCX0llDeUgAJTVV3Zo4kTGPNCkIluJ2ChP4V
	 9/LZdM2/DB7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26EC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027199357.22753.6800657417201484474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c00186d12700c0174ed33e401a40367b905723555e4045db4afadc35b0300e3a
Date: Wed, 18 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750271993
