Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EE9272803
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791003034; cv=none; b=qBG7Y99LDcll8K9IAXS/mJLSgQi+vY2TVWrnLLdOSplmlsE4KrGbr4zmSVAVNPKvWryo5Yt84d73f/EQNr6upPKdrXhFfWpnuXXaursZEUQiWvliaWfUivrV6lmGrao6fdipevDfH8MzaW4fze8LTAxcfzsPkNCnfBxjbt0lkm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791003034; c=relaxed/simple;
	bh=PLsVy/ei1Mn6tKOEf5LVdPYzPF5aKuPS7nlwbzhChb0=;
	h=To:Subject:From:Message-Id:Date; b=eA1GVPddRicHXw1U5aYTroQJbyzy+ukl2/xLGh4fm/UuosHZFua+KAIw95Ok0IcHCd5pZDMMjzvWZAXV2WwYr7bsD3jGTrLvOSL+n6WLUnfLDQOlhEzoyO3eB/qoTgszVZzOxvyQ2bpNBvQE9QPtlwPzvpQpjW99/PYlXXRfJgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGGjnxki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGGjnxki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D182FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791003033;
	bh=PLsVy/ei1Mn6tKOEf5LVdPYzPF5aKuPS7nlwbzhChb0=;
	h=To:Subject:From:Date:From;
	b=bGGjnxki+xYmLhBhe6T4huAT8qc0dIcECG95fktE0trcooaXNkBGKgrlq1TDe/1YJ
	 tKKJ3xLpPgM0HlseBgCEgNneqUtoN7nMeJkuc/iXjh1QUISgTuE+eHwhuWrTL8FbK4
	 H3gJMWeuxJ8aRadNKBUmYlIJ9GHHVwaZzRrltzmk0e5J2tfd9phDFhlF22M9Lkpn/f
	 0+NEL9Nyre6OW57idn0YJxmT5zJ1cyeHRoteViDIqoLub/iFl+TrI2Y6nx55uM2CzM
	 45mUydhq4MqDKXi5uHGC6NX4OPbyrr6FYmUYi0B540zYtc82mL9x8rFvwd9Zr2vQRU
	 zjtle2xEC4jOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0E9CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100303368.2714.7958746222468005819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f6a54d42e31ace6c70a833bd9b2c002db48cb7b28ec8e7f9752db522f942ff
Date: Sat, 03 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791003033
