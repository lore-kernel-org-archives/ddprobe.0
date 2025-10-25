Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FFE30103D
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761412794; cv=none; b=d0GkhMz4IJ80LL6+GnAuNqFBiRG+mY1HUtAqKHP+pzC1senjAiesOeBmPkLrINQiyKfsATDKCrV8YtkUo36sQFbkQ9kcaTqPtjfzhOHdCUXPww9tGN7kP6PFuBaOTgxw5KBwgrvvuzBlDfBM9E9jLaabOwB4YloEklxQK732F0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761412794; c=relaxed/simple;
	bh=ED4Ak7rJzsPxNIlxAnnyP0pHBb5ZXljSXCTfxb7ouuQ=;
	h=To:Subject:From:Message-Id:Date; b=jdouMsINUHcqRhJSgx40UIyAswneh+Ao7MjD8J8GC6y0L3OKWtaCM0dQzHV3NNlBPQFdf4cpLruOE6BuCqks2dzlgHfmuEi2ItjF25B3deNXiWMOmo8mS7EOKWo5aBVSqGeQdbLP9pDBYHBO5dsV0Q6rKspKs25mqH1LbkQFdrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOXKu4PL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOXKu4PL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A36C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761412793;
	bh=ED4Ak7rJzsPxNIlxAnnyP0pHBb5ZXljSXCTfxb7ouuQ=;
	h=To:Subject:From:Date:From;
	b=gOXKu4PLTuBAsMNuD2+9ibJQjX8klyPGFgc07RZvWRUZF3GGU3vtnILVNLI5BqT6p
	 zJ71bcTpUAGFWIuXQ+OjJDMhWTWCwTMir1GTZy2LtSkLYiJtjzx75eS7SlKou5SXb8
	 76NLAg1s5lF4kwgVcRetI/l4i2Tfuj4vRYbEhNZnT9CiuOgk/ciAcLICqjfJhzOIVT
	 3YJjZk0/42wb1VEp+IHLov2i7aKs3F0MpLjhSmosh8pQhgOTU7+zO/BYQqbDvkRqYf
	 5NJ3t+a2Ur8cjnP2tARgJBKaiQbUmWzZCP6jXXaKKJNpRZCf/TL4bg4GswZkOhxgI4
	 PkoS/Zii0ACWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E18CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141279358.912.5424027106670939530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1741d1c1437c3e0deb684682b865c2a8969c752892fb036ee7589e327180e5f8
Date: Sat, 25 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761412793
