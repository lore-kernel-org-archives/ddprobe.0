Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387E62D052
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747284594; cv=none; b=PT67WAsF20V350xgvjrb/mVOsgSMfOSi41lkvJ1DyVE/JHcXR2Rm5PHoNpudZhXOCcey6y3QZv2JkLN6W62xXIdj1GZqDAazOmTvG3g++PPIk0twN7YWnS6bnPPHTomTx7NOD0B2RChtuoqLTOxCJw+2v3bzuQqPxiODKOOwpnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747284594; c=relaxed/simple;
	bh=VhegDJ/EpnJ6rBMNbJuZBAmidSKS4eeMy9u2KIU0qvQ=;
	h=To:Subject:From:Message-Id:Date; b=m5fmDgsTAOTYSuYUa8i8MTaHhIhNgp/tEzFOzCWOnQI77V3Hfed49QIMK9u2l2lHFqcgcC0+2obW+C5MvMUfKPRZIOuw4ynv3M41ROK2ucXa1qayyjIvB8VZ4fq/qxwP8RIVd4npcR58DIZL3dd9tKbFQ7tBatSdFyW3gPOE6Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNml3Pwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNml3Pwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7BBC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747284593;
	bh=VhegDJ/EpnJ6rBMNbJuZBAmidSKS4eeMy9u2KIU0qvQ=;
	h=To:Subject:From:Date:From;
	b=hNml3Pwl+Y2ey3rcCDeIr2synrLAAW6r66M1ReNjddnG+1kUr+oDGxci1P1bQ2AHD
	 rMHsHmAPBksCyl9YIPs/CmKWyzWnYD7/zhsrfIacbu68cNB97sJO2bPUjUempSOJYr
	 i6FSGKYOxeAjLdflLcz8OCzeedpn5bsSTvKhqsojxvKkaR7oIvlORnNQHu8Xua1Jr4
	 p4WAEmux2/m3wBjAhGOf30X7BST7R6irR9sym0AfUrFfp3rUXHDATvJPQ6D+DpyIPl
	 0LSVp2cz3ZUrpFKvzPqiy4Np7t0BZYyb8EyP1bemI2biifTHVJqGpKdCPgXMNp9THu
	 4z9725dMxrzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96041C3ABC3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728459359.16850.16666348323172449990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb34601b610058034baaf6355a96f187d095878601c5a21e7d94313f5519aab5
Date: Thu, 15 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747284593
