Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406D35A0F6
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714027883; cv=none; b=Kag4dbpHkBCJVsk/75CM5UAfGBcNY6wESAI8x1bVebb14G9lzzCk+NAH0czqGRQfm5LRe2AHnbMokzPoRMUC1sm+rhlhznfLq3NpCPfHIWPdzlnm8uQbbdTn8cI+ydAd0jKgRygfkT7PNhFY1Dvi1EAohBXxpu1BqgjYukXvihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714027883; c=relaxed/simple;
	bh=l5lHvRlVgHhpXrpV+BuYceF1qAbkjuc7GQI9DTxYyqg=;
	h=To:Subject:From:Message-Id:Date; b=Ink2nXhFDWq87zdwhGGJx/xXwrulCqzTP6UpFfoZuN6IDVj+XqrqHLQE5EAbYfJ7fs9Y4eDxAMWgimsYd1y+BqiuF2QsmWfejpRzYg91+aOXuKUokBNTR2l6avXh//T9ekQDyZU9ecdBfpbrGjwqLncyZbGZswIHLE2dJ+OtVKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecWyKtfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecWyKtfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA02C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714027882;
	bh=l5lHvRlVgHhpXrpV+BuYceF1qAbkjuc7GQI9DTxYyqg=;
	h=To:Subject:From:Date:From;
	b=ecWyKtfrM2hloTVjBCfeg55Mz0WC8WYxQ44s3YAsuRwgM2GMIfkr4bGJmAsTdxS0J
	 mLU7/z2+hctYq+umuKX+F5nJb+q4BNO1kJODIXUk3w12D6PKn6pxrdxdxPd6MHzZ8e
	 nc0OEh59mzWuKMguetUqPU63ryvW/YzSpipoK2G4pTsnRm0E0CT1RMQHQQU4IAk78M
	 fmaneiXxRJhuUZ7W5DDzEmH81p1pZCe8eSjzv+4kwAeNDrlH+Sl2XL/7JL0xgk9uoq
	 VeFhAwXTnU/d2w1BkOiyngQ6Otc442Mw2UaAwvRUB7FuW1QtXmsohxLJvm33siRESo
	 njQcuCZjTjZ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63F4C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402788279.7516.244290683499091845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ad91c068576829d64e4b31dd41c5969b3e17733a1326bc59f8f9c61b065cc9
Date: Thu, 25 Apr 2024 06:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714027882
