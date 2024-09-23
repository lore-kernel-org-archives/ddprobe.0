Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297DA1CA84
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727120154; cv=none; b=AhY7wccEuPkmSVIC0kA+knjNi4UWwOrLcHuQigOSV7+WAorJ4vngRYMCFPlO5dH5MZ/8RtjRTCMGZ36ux0kUg6oruXGQxyJNcU4QnCZKBKtRnzTtuFTVEedvuXjeh+zwa1bgOdeEiwPoMh5f8HlN1n4gvgo42/byZ8Mnr7v9IPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727120154; c=relaxed/simple;
	bh=rwanQCXg4FK3/TnYp9Sr3DSKjEymgmGr+TsufiltsyE=;
	h=To:Subject:From:Message-Id:Date; b=iwxCXvaPgDTwHd0HKkQNw3tv7u9Ot+Mer6F1onedeg9cKvx8rCp0l+0b9naYsZgQNjX6E2CY0T0ifP+T0+Esj84bFRmf3sYitwhfbWYpsSAdJzay8cW2Bdkv9IPunr+lnJb0UX90csxHajjsUck4434+WA3/OZLaR/KSCa73PQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAv+/Kf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAv+/Kf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87A0C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727120153;
	bh=rwanQCXg4FK3/TnYp9Sr3DSKjEymgmGr+TsufiltsyE=;
	h=To:Subject:From:Date:From;
	b=lAv+/Kf1eNWGsa0BZ0loG+urYK5i4TwteqhXWi+umCl97Th9wLFz0n89QLV7idkfS
	 pXDOPAiCIVDfUlBrCLN1Xsx4wBxg9GrkkAS5TB3eSYazan0eERZi0ms5T/JVNkaV0P
	 Ok40bX3Bk0znjGGi+2yUtQwoVGfjnwJjUC9pquRusB9DpLVCUpkQQLjQjs5hasAC+x
	 1ca6w6+BmIW+hnTMwF9cbcX26RvAwHuE2OWmwPGrG2OU+u25KDVqwxBtzklQiSa+Ci
	 Xc3haW4GcmEI7M+/FNGiZu3im8I+MMnNB5xguloU82o2lakW0AwWRV+oqCaxHglmDt
	 avIfKSwAqsH2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91066CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172712015358.20003.8836845750269509597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 516017dbe173ecab9b7e54263b8016504cacb157861f13d9eb54b871025d3e97
Date: Mon, 23 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727120153
