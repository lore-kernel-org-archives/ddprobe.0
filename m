Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E921D5CC4
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751488194; cv=none; b=OgUb3TTZXFw+dyrXr0Ko5DWyCXsQwzutq+snVJolo3EZL7YExDjg2LGvYZpAzS1+s5bJFlc1q0XtPee2N17zvrgFoXzrrqY45cdmhlt+mF9g+gyxIdF2/ppWouIVZCWRnVT15aXSA6mdu8vJ7zY2HJac2An39ohe87psIJTJj1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751488194; c=relaxed/simple;
	bh=Fcv1OMFkYcZDghwxO7vBWLQ4zx99J8KNs6OAw6IMTqM=;
	h=To:Subject:From:Message-Id:Date; b=Rmo8yY2V0G4RxI2h/zbdfrBlQXwhqtDa6tooJNv6t/0nbm7lUeSJy7GdZXPKVq185O5QTZBj7h9HtMPkHfEVR7f4kP1p+Fl1gygo0C6CU2iUmtpjgaspsOb0XDbZSvheMaAZ1zdj8WIKVirX/L67UslEsIawziaGme7tLbd+Wdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f90/ixfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f90/ixfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F56C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751488193;
	bh=Fcv1OMFkYcZDghwxO7vBWLQ4zx99J8KNs6OAw6IMTqM=;
	h=To:Subject:From:Date:From;
	b=f90/ixfmXX6S4oZvAV4l0STLF50sOd73qMexeHnyJUvRMU7WCunekilnWEPabPpEQ
	 hAT7tSyiwmNvBytAGEMB9Ayn6G2K6+vwZiU4qUWR1wCbgHFxucNYFxS1zjuEKfRK8S
	 tRP21zDhGuxjyEHOyW6nZmqcwqHipcY4PJLL1IMHr2WRWr49spxkR8BCXmJxshC2KS
	 JuhRP/e6rZ+RX+ukir8uKo19XkOVHlWpOeDnWW6P3rO2JHqINi3KtM1vyO8i41poBS
	 FNeU/PNVn8sXATcKSDTlV5F9IuvLqaH+DzBIBUbSPLNknHs5Tt9nl/TAUpaOJnIuSr
	 UcGp/r3FAlgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B38C83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148819358.5112.4364301083393848419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78bf0bf86c72f11658053252f490e0b02d155306051322a2083cbe4e13689ee
Date: Wed, 02 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751488193
