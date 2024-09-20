Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A61C2E634
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726873554; cv=none; b=d6WyM4jlmOv5L70SgHpZWVkslh650kdvOySjQOxle5UGqWUQr6emWLe2+pDI0DS7zLA0noIK0yGNZRMiv/Rem76L96Y8MSnxNON/ZAsuJdyQkrZGFSYBsu1/yRoLRiptvd7Xl4ya/vFlUU55t2Fnrc/Rggl6e78djugvKb7Scxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726873554; c=relaxed/simple;
	bh=dAsY6df44fE2Xh6nWb5fmYE6QuEo3gZUgOHfeVEmqN0=;
	h=To:Subject:From:Message-Id:Date; b=WUvwYRMp64ogOcRmb5Fj7iSuS3ghh4rdhiqFzwn4CkQ5i9dLuUNXY/nEps1goYuXeDcUROqJTlva6jT3r8tZmtldx6rIm7wKPNaPgKKXoycNLjz5bHn5geBLpT1wdVJfE7RV6oR7MEf9KdXOP2hClZDoI0Pv73WmACyH/3Yx0s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoaMzW5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoaMzW5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6752C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726873553;
	bh=dAsY6df44fE2Xh6nWb5fmYE6QuEo3gZUgOHfeVEmqN0=;
	h=To:Subject:From:Date:From;
	b=GoaMzW5BVKQ5YgdMS7Z/duMJuWFsov8dqZU7KgkC8xPZOe2hekhSKwbPyc8FLYNgg
	 igip9W9JlSgQf3Q1/XwsiIETMcCpCMSpV4+kxuW87S9AWcY4UkLMmMmes+WsmFxsRB
	 sTBcbJB5uTM9vny6GS6uNpWdrBnMDJovt9aNwIgVAIJLPM/ObKFYet2k6cxcZmA3zw
	 h3sBY8rozSgeWIkzLvqTeEn5W1DC6U70ShHNR9xFeA7tm0Ad2PuXOCBCv9yDBOA/qn
	 F1jBaWJ2/XXyCfHAFf/yO8RLkF+8UtUGXUy4rSlrBCgLcuElixP+g3kgrrqqQRcr6b
	 mP01b+mlzM5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CEECF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687355358.7773.10960097795345820108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098a5b4308b4e142dcc024fc8095f1c1b8f278aca9e5fe8e8a416411dd67b58f
Date: Fri, 20 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726873553
