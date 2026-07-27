Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D6F41B8FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785163234; cv=none; b=rGB3Zgwq2JVZnIs+jFI54kDW/91jgKAVvn5aeEdseh23Z6EvE4aaj0dm8PU5OX9N2Ip1Wo1T/h/6kB79vUDvLXBB7a02vTqfrKAss3niKul/7NBHZ2GIa2S7REDIJmPYkDiA4kECDH59pg6tQ162b+FmVQ6YKx2l7gqM5TeVvcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785163234; c=relaxed/simple;
	bh=UbOfT/D1i11mOmJyKEOzIoDYIgVJnmWy+S3Ga71mj/g=;
	h=To:Subject:From:Message-Id:Date; b=g094QlbW739fmvWaJ8pG383eUvalaYyxW7YYS+lIhX+LP/jtpeaTY0Qwfgb1/xHlc60NbDW7F5hQx91uvLAnHC2xpgiVV5/1lWtUtct+96/XwLA0WrmbEDrBKJTr2eJw5HD0JqTkqy9oK8fWkXpw+I/nFds2zjYSVWhaD6C895s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8yhOpl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8yhOpl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFA1C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785163233;
	bh=UbOfT/D1i11mOmJyKEOzIoDYIgVJnmWy+S3Ga71mj/g=;
	h=To:Subject:From:Date:From;
	b=t8yhOpl7meWd6FoROF2uPU+/lSuMNe/1Rn2CDZJwZVpqlAE/e0L6IBULPlIL4Ez24
	 pWt6c6wolw2SVin8z25uyRx8+uJgyQMlUft8qZ6Am11DTeQkcIwMBwy0e/yFdusQD2
	 wx9gQZXH3Y9CS3j1n7lWK7SENHoGKb1Q5Eb3Jnubvfh4k/YC+4u+OkaDh28OLu8G1J
	 Nh3QCfG/cJlBdySUaz35ZBEL/dBKLjpPilzztigBtIkGfBI3s2q0rueN5a09eG2CMk
	 r6TLQC36UAIky6NbOHg5zrF5CcEO1TKjm/wPHre6pXIhOjGf2oub9IUSvYg4Pq94kl
	 jSewtWCxqDF+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA015C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516323368.11036.5090770465553345432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2871080f3e18042e816640e744cf7c0d7831de49bc46b82ed981efdd25a48f
Date: Mon, 27 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785163233
