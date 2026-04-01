Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA65367F23
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775032534; cv=none; b=Tf53CZo2FcMWTS4qE2DNfUk6Qabn5yccurXQFJ7zNC0ubH0lwQQjKKiOzgkB5yG948+MjL7zKfKLzmo5QzXggeMOn5f3jbG6tQOkEL04tM9Vre2Do1Z3vfDgpnb0Xc+TjIndPR0MJljoqp9cs737ElBVC+f4/ScgTGisZyeD7OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775032534; c=relaxed/simple;
	bh=7JvAYC2wEFMF3ZaT/Wbjkm3Qc6+2wRKpN+qmFksmCU8=;
	h=To:Subject:From:Message-Id:Date; b=DE5jRrTtobnRzOQc3WLHDReD5+JhlUIfyp2Rrq1X7zXhm2BNYFpQDW0PAqUHSK4bn6J9nb37ujih73kkQ1NvYvzei0zf9C3u1iHZ3c8yN0BH8a+4g8sb08CgPx0k5RSlR4gppSA7Ia/UZfvoFXxPXXHlUaHg7MMsJKmbY4pwofs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U77Ct9x1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U77Ct9x1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD5BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775032533;
	bh=7JvAYC2wEFMF3ZaT/Wbjkm3Qc6+2wRKpN+qmFksmCU8=;
	h=To:Subject:From:Date:From;
	b=U77Ct9x1FJNN+4UY9DhUliW9Axcan7GEySnnY6jHlVJDKSwa0H1U5GnZWYe64+Tmw
	 dtIH9AFJ2g3eSTfoqtbigl7d3wHnwNOhvFQ9UNk49QrtObmuSirO6aaw9S6ps86pyD
	 Zi6NlEHkYKEHwO+dpILxXOqlYl4jMDUDnAqbL5fvYTbJ/W2Fd5WP2/J8by8dOtH9/I
	 ATyDImCgd0WpkOgYiPvdqLaho8lVMf6fCuoOmve+xC8TajGth5DrttmNEEo3M+pYxL
	 Fw81bfA7EJoFksr4TY6P+iOnsn1n93awILy9FNdIGQWKtl3ORvo9D43wUNv7PHwxnw
	 9aKK0Fm6pEGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB675D35159
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503253369.18298.10555806561191201918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666a4d28c8c240031ab0665a09d84a89486a33af7188258ec1c01732f0b75afd
Date: Wed, 01 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775032533
