Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC2F19E819
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779145834; cv=none; b=tdOTspnfyn5ZbMpC2lo77w6UArYLKf6PUP0Y/BR2qTxdy7kcItFDFaVNUpvP4Edab6LRS8tT1oGK2SDY3LNCiTB0QY3Mi/b6aK0VPSTJse+J+L6DN/NY8Ls0sns/Ul04ssdegEGsUD/EK1Td/pdAZDwe49EyzNZjh9kYtHpsORI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779145834; c=relaxed/simple;
	bh=cgTaWxRUkqSXXiRuMuWtARoLTUsqv6/yOB+vV7A/wO4=;
	h=To:Subject:From:Message-Id:Date; b=ZAX6Hd2YD5sv1omTtScgRjZwPrz3ZZVUQbtZdJBHYzB/w9wIAX00GJfPMalGiR3P+zHS4YKh0YXP6ZxPCnZtjmC9J0UD/0YRez8GfEtDwjMtu2Nz0hYnIXz/3wZGYqnzGWAWL9aflq8aOEo6h0R2Kf7E2xftmH1CsSbnh/4NVJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzUpN79q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzUpN79q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC500C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779145833;
	bh=cgTaWxRUkqSXXiRuMuWtARoLTUsqv6/yOB+vV7A/wO4=;
	h=To:Subject:From:Date:From;
	b=FzUpN79qmW4ymGDQov40JwTu7ZnGN7AovBYX3fKwsbsStrIyrw/pjDFApPrY1CRQG
	 BW+VnBl04PokpTnwhapFhvgDHLJ4QozJOB1brF3redVQA/EdGao51ELCdVAvr2Hir1
	 I3n3+dcTxpmNr5ij5M3QnmKwbNU/f2gsgJ32WS9psTbRCm3wS5+IxvCrO5Jv7xb7Y/
	 APTVNczPSfQNUI9YOdmikZ/leXqYFkgP9WMzIJxN/Z8P4WQHH4V4YF/7wADPV0LG5s
	 5/M2edq1tXDsSAYGIZuMevBms1SZl9fp/msWI0pR4tAaFKVvnoNd4xxE82bGHgHWhe
	 TCRWw1Q3tPf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB187CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914583369.11571.15938494298010482497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f666345a0f94b16e43007cb00f32d31b402259081237ef7e1e5058f3ffea4e
Date: Mon, 18 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779145833
