Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CED37207D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783753714; cv=none; b=XQP7oTUDx+az6wpyJ6J/pBC78P1UgnqgyMlFjlLUWrrQ1lmxQ+KDGTbgPISA3zMgp0L2wYDgKrxxNNv/Fy8JIdchIs2V6ynl+30sMe8+7PnlouUrkauuuy5lKlIyCR/S++wHLtVTeiLS0X9xXE+E9NaYDeTI1SCx+lKKAY7jJ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783753714; c=relaxed/simple;
	bh=x1yOOnmbseKWK+rHaYXYZ+OOaLSnN+X3J+oBv5x/0Ps=;
	h=To:Subject:From:Message-Id:Date; b=CgVAGo/lG0eDk2H+nFSUDBz1IRd4OEKwbLonFUL0q/3SLlb0/WxDDDk2KpOrjBR+LD1cDnbXJFc5y34LwV9v6GjDu5SB+JnKTDJesZqmg5da6vg9ziDE4w/RZ64AoacTktCSfw7rQSpFW1XrFmJJnzCK2EErm8nBcoCds8afK+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUXQdVhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUXQdVhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE41BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783753713;
	bh=x1yOOnmbseKWK+rHaYXYZ+OOaLSnN+X3J+oBv5x/0Ps=;
	h=To:Subject:From:Date:From;
	b=tUXQdVhXcFqTBpR6ARoIflpeNf+jYpEc619RAGOpZbWbWDtx7XK8cVWJ41xAjCsro
	 Qt0XZtaMfSat2D3MndKYL+HzHYpZFLh801cM28Q54tbyFLKJ9ZjEpKADZD6Iqlw+sg
	 NQzxhBseCP8XIID+aVqmXH+zvilWP2pMqrPgbkORXVG0t3xYAJ39gaTHMBSvUON8yj
	 qhScxHCc8KgjwGTJ+mJC4p2fTsFb99AtNxNNWa9LCF5bL64FOlEhRfMAjS2x/TmrtL
	 nMJKxzb1kObU9Xq82T7gE86Lm1vPww45LOf8hnKgvsMZMlEoaaocuqK2vHcdbSiuGl
	 gvUCqDrrHkCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D5C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375371368.12204.12723430330492696702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0145b9a052cd6da9525d081415ad6899ebc29bd8412fab23f017bc4d4a7b0433
Date: Sat, 11 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783753713
