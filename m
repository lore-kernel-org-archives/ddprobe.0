Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3B21F418D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756082994; cv=none; b=MJNzvey8qF+/AARQXPaFRciOE72iiebNvTWtKb81o1t1pfn0PEAiRFfDu+ublvY2YTAZIv1ynX4DzuHv2B5Suu9szjOpTQIInskcJbZXKlwge4xP6PkHCx1CiPOiwyagVFL3PW7mt+jZ+RPb2Ta0qUjwKV30q+sVEenWEsVoSZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756082994; c=relaxed/simple;
	bh=Cf7Bhnq9V87F7apRU9wJpaWooa8mEBfYIiV+rYcTh/U=;
	h=To:Subject:From:Message-Id:Date; b=GhSPQ9rEWV7LV94jZyDtihsWt9g4ix3/gIRr+d3L5FTsoY/PcZULDoD66JCmFRv8axr4T/1MY24E0GmjS5AIT6Wj2Rbzd3xzrggN4YLhAZj4nXNDZKXppGmHQzOzOELv/g+URgVcuX6l0CmS8x4zcrobLIVwtHTYXEUC4uMbWuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8yCPuS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8yCPuS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D9EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756082993;
	bh=Cf7Bhnq9V87F7apRU9wJpaWooa8mEBfYIiV+rYcTh/U=;
	h=To:Subject:From:Date:From;
	b=g8yCPuS+ZgONkh6OUww8kUYrqcLr4B5PZ2BFUPQNL4pMEf2gIttUCZvUGMQ7ZlydR
	 uQ7uWDwRuubqJTJlglqEBQE1Qz17XfI5SKYQSLlApQEH7Ox2J4BjkwH5dhrFcDbVFz
	 3CfTzTTfFVgXc15sB9xNm86c1Qsx3Y6V6sGCCl6RORGba5jBpd7vS5qoAWFZEBplr0
	 34m4ZhoB/zBpfbsXptGnBADh05tMvrxIbsHcC7DrjPd+Po6eX6g+zjrgbY3vb/5F5z
	 ESa54LXvWADQluNAbFyeGgGR0jZFAIAJiuLcljahuqLwNVpBi91uhXfVgKOtWBdH2d
	 sqmPGJff4PpFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F2CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608299358.28100.7656533737655352097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efcf01c27a337c6e9f6df86a137eeff09b7e5434a29698697f898b9f6824fd8d
Date: Mon, 25 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756082993
