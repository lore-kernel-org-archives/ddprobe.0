Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D2127B359
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767568434; cv=none; b=O7z35GyZ9/7x4FzUJaSkkop+LD6zfi0N7NDt0Q5YcRgyvg6wDJGtSVVUXZ4h8jvx1j/prMRoXKdN0gJgqjIWXF0TkiUaOKvhPwuGumnJyA5BnlmTJmSqHVwW52mWF5qtHf024XmcsyoVVOn08bqoOt10NorGBrXQ18mxYL7RUto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767568434; c=relaxed/simple;
	bh=FAXffKG41dTnkdtsxpTmMOQ2Z9E2StYUzo4CRr22mR8=;
	h=To:Subject:From:Message-Id:Date; b=Vs0dzNJYtTBIUJkqWezlaiUChthQwqUkaGFXnY3hrVPPTpTSqg44iuEdWb8NrrfoD9TIZizuDpy8vCnCit2eIU+Tt3n17S8AEyOcn/4cEo63NF/0OU187gMFYc9yycZLVyvFEb4dgMp55WLGK08DBeqVct+4d634kF5Q4ZjRbh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB9daP71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB9daP71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4737C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767568433;
	bh=FAXffKG41dTnkdtsxpTmMOQ2Z9E2StYUzo4CRr22mR8=;
	h=To:Subject:From:Date:From;
	b=QB9daP71DUaCkQzPM+DzaIJp7PybqyEtmdBQRYCwhd2l85NLfM7teT6FQGg+0FMLK
	 E+EReP1CL3UyIrDVZT64nBGbee/4x0gKAKhc4vUQbF6IeWv5lJzMej4b71Le+4UP47
	 QaporuFvLUI0hk6mGXRaWAcgStUUgfvBa9lNcRJ5MUSVuPlJJNd6rCii/gpS51gPkV
	 P9YLzI0BQmjO1JJG970hpWcXmWHHCyJQrodnW4ZuCZsw1tc030DpfzPK/94d/676S4
	 q6Z2K4kB3aOeHGZz6n9kQMaKis8EJyeY9ycFuNHDZxImSL3o3raAzWTPGaNQLT8sok
	 ApjY3ZGYsu7RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC8C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756843357.20646.10815648118454398981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a8dd914175c79d465c93bc7f1fece9030ecfe351bd2318e87bc47245a1efc0
Date: Sun, 04 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767568433
