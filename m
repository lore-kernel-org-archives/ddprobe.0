Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549D918D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745335794; cv=none; b=OjN7oAmPlVCGQlKJp/nJAmQOZkEA1PQITwNFnWtaPeSMnA82ID5YU02kP6LVFSjq2XP6ZV+Qacn5XsenG9v7uTB16np1zaWPHZVvFz8pyYznz53Bfae5LX1jmIbDw1vHwvnwbdmdzWBwbjRl7o/FRmDzare+6JmAydJUrwOdPIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745335794; c=relaxed/simple;
	bh=LBEpz1pph+MtW+mR/bh3kZOhgEN7/BD2Jzlm2EnD9fg=;
	h=To:Subject:From:Message-Id:Date; b=th+sgtGCm0cLlZugLuLyx+YHAOcBWVsJdB88UyRKbPmscS6GU/8HCDZ3Gi9TW0joOaUzJ5R85G9wKyiD0Me8BwWEb6vPk7ZxD954aFKaB2ao63cNyFLZvnv+zSVudNuSgvvnJBWsFKNtd4XT3iGPOJykTJ2WQXoYrNOnoNHEwx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoP4giNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoP4giNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DEDC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745335793;
	bh=LBEpz1pph+MtW+mR/bh3kZOhgEN7/BD2Jzlm2EnD9fg=;
	h=To:Subject:From:Date:From;
	b=SoP4giNo9cpmFZz/K2Dxf1bZ+Lo0gzDa4rbkkjuXmzwPpD4yAzAshtlKZ0qbgoj0l
	 yS4QxdkMSr/9Zysql+C3HOnwY8yUo1ln2w1Kb7H/ukYu3o/y6rIgGWQ1dAAhtklK6m
	 cvo0prV8omdmq9QqZ9aePac/ZioB2+2doh0bBo/K9AdFD5Dtf4VLdnJUygZMgHP/lZ
	 OqU4YmFBUXE06hvV425TLITQbe9WMHRCwnmn/oa++rtsL3zWGdAiEEi4nPU/MuSo+F
	 60BXam8S8W54Cn52aLYiF0HfqzgVaIVeDwyf4N3UqwIeHfczLLsb4ckgnbJiQkzV+K
	 l24ChBjzIrgig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4082C369D3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533579365.484.9483705438331161826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7c0f820064eda71d0cdb2653af4d3e295085e16fce62a08fc41a715b4c31f1
Date: Tue, 22 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745335793
