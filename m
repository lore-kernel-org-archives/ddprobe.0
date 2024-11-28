Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A1812BF24
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732775154; cv=none; b=TNqSvT5tj+qDtsHn6fmdmMcLB9vPnQYr1yjg4bG3AKPGv8BMIS6KFXcW+psCZwyl53wUMB2k/Nz8LIjrxrwX8m/dH4hnZDE4/5Y3YDVGNXO4F7lb3stLfFOgS9y2/tSNXujUxSNy13wzy5lLam9f6CzvozXkUaW262Z2akJ23+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732775154; c=relaxed/simple;
	bh=BIdMnA3hlBZc/7KG66kMQ0/zEKTO1v2j9Hx07Ny0QPc=;
	h=To:Subject:From:Message-Id:Date; b=ujr1V/hw2o8qO+1fXNLfsds7jl5ZXZa6YQChtIHw3y88sEtQGplOFcIK7gwLOwqlC+vB+rQCYFvfQQPFQMqGYpwQNf4Q43dZszRmKx4YuLocWBcRTZDVDTae8L+wGdrU6jgddeeLTupAWocC7GQTdcSGFVObTqffuu06Uo8DII0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWwOa6Ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWwOa6Ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6B5C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732775153;
	bh=BIdMnA3hlBZc/7KG66kMQ0/zEKTO1v2j9Hx07Ny0QPc=;
	h=To:Subject:From:Date:From;
	b=TWwOa6Ju40DctN3cyGEB4A2aMyCh++USaNH3Jcb5ziUgLSYZj42aR7veVSZ3Wd0R2
	 K154oyvDSxbv5JECGIUdeaD1Wu1ogD4m9gUhaashPwq6QPaXVNvNUtcJEmQtGRlmRv
	 lnvRqY6SxROuq2O9tkA15ttstZ2J4koRqOdcO5QXocqe8qEfBSHaiyHXBF1+b9ZPsX
	 9A5iKUlUO65wqyS6pAAbSDUHM6rPEsZx0jrngBUGRyUlB9v96uWpKFXl2Km1nyesqW
	 4dpDgJ1Hk5Nl9TMa2jrB7op5VG6c5YSez34TgOTYplL4HbNLuCb9cIFaUUjpMngqAd
	 s6y279ADks+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4157D65553
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277515365.15134.16545005095814415315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d442305e089552c6a67fc5a3901025b409fd1d58724145c047782a42ca67facb
Date: Thu, 28 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732775153
