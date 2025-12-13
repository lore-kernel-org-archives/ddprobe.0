Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5072F12D9
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765627974; cv=none; b=aqVaONrVLypwKiLAXe8OAhfdZan4sGsfCYNUNVISlgMc4MC1abThrCc7Nf6u5QISENr+zd2YpEyU4VucT8nP4lfqOV/UYMr+bo0WoL99sIXBO5+h9yQD+uzJZVNJtNBrC44jC+v+57srivsO7UKTQToKgO0m/LfAtruHCdEMm6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765627974; c=relaxed/simple;
	bh=fj4X+qK23d0Txkj1b3tAVX9wv3OKf6W8IRmzIjAki0g=;
	h=To:Subject:From:Message-Id:Date; b=imuGjGC39J7zUeatD1JvNOf3OVLxJXvwDSI7/179lyC48Ocyw7gjddP78BS2gNyx7/QbitYuZJ7NqvOvcov4oQogM9/Xk+jKqx6D7UoFu4BPvxl3q9xh/pqo2PPBqTQXEVOeZglqgLI5JXzdQhpwbjg7lfI6k/DKXe0V7tHPyrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRUDGF9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRUDGF9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCACC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765627973;
	bh=fj4X+qK23d0Txkj1b3tAVX9wv3OKf6W8IRmzIjAki0g=;
	h=To:Subject:From:Date:From;
	b=hRUDGF9xb3yZiz1cUlmLmvGUnk8rEf43iRqNT8LROX7MTeFGOVN9bH5XOUpviDUv5
	 kRI1LrN7JB17j8RxLM4TwIyeVxIDnkVRmQQTBuLK+4uJT4XouhXDrmoE2vkrRH8mXy
	 o3Lu1tyvA3R+IKL6cn4R0YzR2GDgCwbTr8pGgTGV8eZCZpMadeqcsUDm5gseixLKJJ
	 vU5gRtavD0jK7N5s8bQMCCaOeeFYpgj0zdsIlT7A1Ak+oPlfnfFIP528JeCB6XN28A
	 uJqAB8sz8BlYkNmnGH2QArETmkr6GHemUQ7odj834J4w0ET3lUxYLTgX8nBF7F7Bne
	 cbuJ9oIsQB3iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDCD5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562797359.6365.3107919188958540298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640f19d8c211130e99668c7c81e768b6e167217b831aa943f25acaa59187cd3f
Date: Sat, 13 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765627973
