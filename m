Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13A245C0B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770252834; cv=none; b=Ti/QMj6Cg3GOS3BM7rScupfakW3aoSLlq/Q3FgnUhC3TLQXbYDITx8k92B5nuR2L5hPOHW4cTJLhLO3y2pwrf1lS4OA12b1W7cTz/NcbYWPV7zOR7T9eokOKXIrGRiB2q1feRLB6fTrsAi1qtIAsktJ7SfhiT2f2xQvUl2Ah40w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770252834; c=relaxed/simple;
	bh=c1XO1ZaNEAEQZNHMF2+iNlFnCU34ubw3Uf2N94/fXQ4=;
	h=To:Subject:From:Message-Id:Date; b=jqoee5FSuwT+zN4WQFAordDHrHPcGZsrTcaSNqugroq+ckuiWypJT8Ho/qHiUGNTMlGt6SiYlR9lML/E/jKM0R8JIye8KjcoZI8W36h0oeX9FEPNBEfazQntWc8PUzGtwa6P4z/3aNhBPF77D6MAojirsLAATWISX/iyhwX86BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuuF2g39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuuF2g39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC9DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770252833;
	bh=c1XO1ZaNEAEQZNHMF2+iNlFnCU34ubw3Uf2N94/fXQ4=;
	h=To:Subject:From:Date:From;
	b=ZuuF2g398/U8zna+IyIDduWfpqtBFEC41jFd0O5TztRvIix1hKW9LqAjytDywrvnw
	 NDSN1aq+IApWDp0peYd8uHUv///yONkbaqXNzkPLv6V+qWu4PmobUMeolIbTcrQb9k
	 mc6aF6IHR/Kzm8cJs59ziI+DLTgjg6iIzuvOnMCZ5h4XP48CzhRbLRHII5cE/vKbSz
	 amtVBvtI+ag8k6icbqBFM99LWguk563Nk8N5tqZkIhjY1UjZ8jbiS8CugWUnJGyWaz
	 qfQ+85r/gw8uhsxCVayRosqFLAE/8Dm47x1gPyLkHLUj2ro5MR547rtUu5kzPEjBSQ
	 MExW3w9OR3YNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C1EA794D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025283364.7221.2496749032391059442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeaced2d4e0b449adc1e18544f1225a0fa1bf2b6165eb47e51098f8362132be0
Date: Thu, 05 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770252833
