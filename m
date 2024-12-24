Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2801922F8
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035354; cv=none; b=QtoTSysvzSZmNW+jbs5cPehXcFbJtQlu4XIaYrTgxCMIednrH79BuW97r102BsYdAz0ufFMjz2+9Pbu9LVMp0/uh9+vNzaSEpbnKpuvaJgOUzwNICYhniY588102TNWZ02o6tOyajEEyqNUkHDgrUe3EMkpaDlGEwEKZ9pS3yO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035354; c=relaxed/simple;
	bh=cNj9745uxz4hjG9Emq7u1Y4TmHPAyh2gKNbWIBo6ZDU=;
	h=To:Subject:From:Message-Id:Date; b=RkWNxozMDDywiJbasoz5NwYPfHfgF7cQQvx8qn7Wic76eUoRvPPi4qAgRC+8P3L2fE/GV2d1h/wtClXqPAwGUYW314KCH00bDyNwR3twcc8jyNeMa961kIjdtSM8ZwtvzwP6kZyy31bUChCU71yPcgLkgf+Pdcvj1OL/tMZ18O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdK04xph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdK04xph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB01C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735035353;
	bh=cNj9745uxz4hjG9Emq7u1Y4TmHPAyh2gKNbWIBo6ZDU=;
	h=To:Subject:From:Date:From;
	b=mdK04xphe+WdzF3p6mhIjEKQfV+0LOCqtfXRqtdh3q8m12hu3Gl5dmT2SkcY/sJin
	 Pj20D5VXJiT7y9OrMr5LSFJY9RkLEK6Zyi+L7fjrp2xk5brlSLdLiRhzhKmaFB+kjO
	 FgNopsEcFkPWisEDxfrKKatP1iKviAWGEf4tE9XMiqecF3CLjQnkzRVQZMPMoLBmpI
	 wC0JmKDVyGfXRaUW7qTfVwZ0s316KWajkClxSEXjjhty42yMMkNa2VfwgSNRkykXq0
	 wlV+VUx/DjHtzPrGKYL3NO/HVEkqBcaC/jLn+PrN/aYI1ZwfNh3gpmWSfcG16T8kjh
	 T7AC1c+qz4Qsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D4E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173503535360.21035.15749888353136043650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661f415b7dfe8e8858a438afa6545598f1e934b7c2c91e4a7667fb2207a467be
Date: Tue, 24 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735035353
