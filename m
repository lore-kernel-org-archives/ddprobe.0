Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246562522B6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764681774; cv=none; b=Vx+i4F/xeMuY7Qbd15jTSEHgZdUhgdziypO6bCVijv1ig2orRGqPU38zrVd0NXz5ePZC9MU5p/rsypb7d6NxPCfSoZNBDkuMgX3i8gO5lJAcRLQTRxFgy1ImyYNoBMvJnhVNWjC5cAoCBpPXSG3UvMgvqusjWNKvUitsl8vMtPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764681774; c=relaxed/simple;
	bh=jsD2o36hqp1qF+1axzeUYG1CMgX8BNccAzqcwn7i9uc=;
	h=To:Subject:From:Message-Id:Date; b=sEiNH70b1i94IkCg8hXISGttwxvIZvh5DQllW2dnuabb2GYMNC9mC/XFg7OGyvwffIYb1s56FAkbtGfyuzHUFwxKKsHitxq8K3l9bQw7WkN0I72M+l+9HjkwSO5Aw4WidPdNK5Lt7FIO9NeN0L4cWHawNyXKqGSE8QYWsnlY7/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLvGZ3Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLvGZ3Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D1DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764681773;
	bh=jsD2o36hqp1qF+1axzeUYG1CMgX8BNccAzqcwn7i9uc=;
	h=To:Subject:From:Date:From;
	b=RLvGZ3BdehP4AEAQSdT4JRRUvatYQI1KrNGK0a5o6qxM6M1ijDKfyb6rMxkMhtM7i
	 zbPRBFEVLyHHiHvTGhz3VWVqWnwvopSEoEeDzOMOwxwuyxVynKlZHN5lhKx3lvjew0
	 2XpjQyz/5VpqCwu2kQZWE0Cz+59dbUEl4HNOEJjPwJyzlMKrqDlZ+uf/v9voQ4Gzfr
	 7HbVJguTRQL3/hSo5OhsRxiZzyjiVTuvlUDkoMWkOQzX49O5L5QKyuDCFueX6jV/xO
	 G5IF3zcwwTxk+Ga+sx6pMF2eywn9Qw0oTXTBpOFJHb6fxV71mOKoGPIj3wYt1BqmGW
	 6ulr4snLb+SRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0ECFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468177358.9691.1276048019620785760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f2cb22fc118754ace9c111c41ffd7996b78be6b880e0b410f2a0d5b4b802555
Date: Tue, 02 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764681773
