Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B91832FA2C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061315; cv=none; b=pX22u2W4JKm/dVQQ8/z2+f0B4EnSUnFb/apakSl23m/YetTHZRLjc+HbSVgOTFAlEzYP5rAprYvaDqJbzY/2vovT9AIaMHos2Sj96gcyjU4tOOE3hR/t4AdvUnaqALiXGChsgfaqoSvj+01/BfGUb0OG/T7VT7X+7KRICwNchhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061315; c=relaxed/simple;
	bh=WIWbkEv7wMPpy6T9S9H69qhApE7sWssrNJQfn62V56c=;
	h=To:Subject:From:Message-Id:Date; b=WRpSSrUmUUM2CFI0bRNK/cwhJQqU18SutR12hpCS3nFTTJpLFYR5q/drNCJ7YHN7FI6dVg2F1scc01qQQTqJ1bQ4/6NxosXJ6HwJ/+Fz84WRuArAAd1x3PgKrzu0dYh+QWYtVIzxmi6BhLzcoJ9zrdv305WkwlcnDaATrmBnJyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6J06k/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6J06k/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD38C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783061313;
	bh=WIWbkEv7wMPpy6T9S9H69qhApE7sWssrNJQfn62V56c=;
	h=To:Subject:From:Date:From;
	b=S6J06k/mbhFhqrXRAe/Q/3FWAOTTPGkrI1tLiy4MB4mZcDJS2RnnPHzY1sLApC5aJ
	 dXiX8NZQ6XrmIOBp40woylYdtiBI0VDZJ4eCUCODRXXwOKXoOUy9cvUlcEUaNh31py
	 3GQ8M2rbzh+6htHNTlmzNQYKKhjaA/5GFgorPsj3MoPSf15Qf6Wm8R9GhM1XFQFW86
	 92PgB7KaOXy/CLlm7Ngjiq+/58JBE4GbtsLOYF88PuBYM3D8kxArI3D8KAHq+/Psy2
	 /V2uy2qgxCHwF1Z7Qheqkr7AM5xX7f3M4rHckM0KE0HW2QI1yqiUtoc9OYbFkcVBc5
	 EG5up9UC8+Zkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A978AC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306131368.1537.14111949514386961558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b038d6b4b818832691076c4990536748499928d822a3b61cb5f398d9686384b0
Date: Fri, 03 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783061313
