Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C81494C3
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759216194; cv=none; b=E91FJJRnstGcRo3MflD5gUmANZ2OqIt8vN7qpbw7uFnqSLkvBw3qGbYDEQh/XzOrGzHSW9i7y/2eOvsCUiHjJOYgwxVBWODTh2oxTNLOR1ZoY9YKV0wENo1uxa4cx3/ioBlXE/AfJJtI+FzPSgEpNPJAIe7Yrr9+zxMcenPc9A0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759216194; c=relaxed/simple;
	bh=hJnrebLn9b1v1/cH/+2Tx48iQ74D7MtQrw2QpXWbgHI=;
	h=To:Subject:From:Message-Id:Date; b=g6PvwUyGaS2GtpcoPue3T3NP7AooUCybtz0NOfsSwNGrOpCTnfYoJV8KKKH41+KHvW+YoqVaKC5DUKgMC4PS8r1g17uZjvOWVBo/88P81af0YPjO3CYmaXP+RAXWbP6mWayarxOyCDlqJIVsNADvN+illcC0bRu+OzcoE6TO2k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4LC3mzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4LC3mzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759216193;
	bh=hJnrebLn9b1v1/cH/+2Tx48iQ74D7MtQrw2QpXWbgHI=;
	h=To:Subject:From:Date:From;
	b=K4LC3mzRAGOTRhst2XJOf2JwlP0HGQp7aqDtaadTpxGXYeLBvXZx1piHNJoaXFPvE
	 nR7NeJlDWL96H12VBSl8CAhsNVw5RimsjoSoSqf5Wi3pWDYRXGVeYKWFAfeLpvsbLX
	 PkxLd0Sx5Dk5o3Y6Nzh/7jXHCgQfmLFh0/wGZGr8GxQM9I9hO2MZuM3qfuyp/YOv5y
	 0X9+3AyyV4G/it5ZpQZMxE/+oeGO7YyGHu0Geu4aP7c5mU+qKZtz6sJh2Rk4REI2NB
	 GZv7Km7FP8ACTb5sCUajADERrklU9ha1Rn2uapq5IZAL0H5kLFSmZnsRmH/AZSgNzj
	 IIQ3VYpEYTbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9182DCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921619358.12744.6359027772513319120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9414b82b885824654082d4338732b4ee0b3b705ec56c883c30ec2e1e2f10703a
Date: Tue, 30 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759216193
