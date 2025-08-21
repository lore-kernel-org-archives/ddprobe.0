Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49E1D6DB6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755743994; cv=none; b=BuAV/kdXoHzPkB3V4Vu1wmoULz8MYju19LpYQVs1+Ogms26+N3OIpsmnQ3pEwThEXEQDENPpeKmkat+s2T0mw0697v0IKKKIJfSoCvAzdF4CK6Rn50bUECLZxLRaW7O3SOfeYLdoIH9BLRJ4cfuBGl/MplMMySV4tZKlpL9wCn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755743994; c=relaxed/simple;
	bh=V+WpzLMhtOqi41JJeg++QennKEq6v+aoT/irSFXTBKo=;
	h=To:Subject:From:Message-Id:Date; b=qpgxa1h6FUnyKxrlb6aqssCa4AosXdyOmNNRiOIHo83wcuvYgG7WAU09HjjkNvCYvIVqk9LiYYeL/rxOgxR7/KLW/iDM+1HAZBQY/BsP1uBy08vi2dHNKcswDEtaUQ8jbfr+ROoerZFLLygza8J0M+TYUEY0uQlzpm0y1ewNIuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnLQbxIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnLQbxIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85CAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755743993;
	bh=V+WpzLMhtOqi41JJeg++QennKEq6v+aoT/irSFXTBKo=;
	h=To:Subject:From:Date:From;
	b=NnLQbxIyX7j83pHYaF40++D/nQQF27ZaTWbeVWTT2nSYFOCxT/M3oP0rDg5LTeaHp
	 gdma8n0s+Xi6eeTqYtK3h1Sbce4lz79QoG902ydcyO5Ngq9a+yaQbqFgpeO/dlrEXf
	 gnzMtJH1865igx5smU+AX4nywTJiA6kp3HMBzLWAN9GpSC/fl8feyg6QldU6JsnehW
	 UMwY4wQp8m7un2zLIDdGszWjcbIRmnw7k4AYlHqd+S3WM8SqfXkNtuXfmQXqU86ZsF
	 EVvanfA8UpuwcUctZTp4Bf9JYgki/Qeb2+L2pIgLzM01WiBu4ZHRx+5KVd1zf9q7Xk
	 oIek85z7GUKWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D12CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574399359.9272.12859984569498631971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f9957cf1a916de0955dc4c0ba2e7048b74b6ad2db28a7debd70b728946d319
Date: Thu, 21 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755743993
