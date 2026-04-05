Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3242744F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775414734; cv=none; b=dDxyAu7bvYM+Uzyz2zG+0ZIcMtgO6fdNsFfHC7munPtC4DN7UVpK2aouAHcn6MDW/wj5/+vTx/HUMIs1nZLz6dI1vQIIOo75YQP3EIEYNE7SbhraXuPiPkgxa48wHPqWZtSCdNFJuWrJ3Miu5FYosQcQ6C3GttN5OEKz7P1UD4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775414734; c=relaxed/simple;
	bh=JD4jhyuFFbe2D+/9RYX5HnCqbpOYsVmJBFnA1WUqPo4=;
	h=To:Subject:From:Message-Id:Date; b=pZ7RamMW4XHTwrruaAB8pdlZLO9jijWunW+ewE/a+x+AJiZx1INvVX7q+mpSHSsswyY1d1hHRqZMB3JiV63q3XuKBl91HfgxkHy/elJCgUS/71nLaLcPfR3j33ikNyizZ+BpPLF5/l5KdgcEsgnV23I9CvdRrlKDWCzxNpKjZgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA87CbxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA87CbxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C021AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775414733;
	bh=JD4jhyuFFbe2D+/9RYX5HnCqbpOYsVmJBFnA1WUqPo4=;
	h=To:Subject:From:Date:From;
	b=iA87CbxSs6w5O4W13lIOX5qxkp2GRlJZrqolN40WkkY2dIHb4M7ngKS0gjIGWurpd
	 4CkAzppYxUeQsky1/zBkhbBjU407DMWY0fU4HFXAVIShk6pSefFn0rCGjyFWCNoRz+
	 fmVtmYH6Tof0PKhUr70+NeR6s0HiGIuGZ+xiKEIuws0wtgw9+5XiqAPTSCtCR7lf7Y
	 JrOgJnj4EKxlETLPB5vG0sslIigUTfmtGw40n5H54ipuAObSPK3A/x0MjgMNIjcmoV
	 umk489QupfwNK6vhuyI1V8/hZ8BV1Kq3y5cbceac7d1QQ1MOc2V+WZPEvkuawJxL7A
	 MBcmLO4G0rIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC1AE9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541473368.7629.2492056141575467209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b7c97bba3e88cd01483c86f9c7469856dd8d8d669ff67c4b7d223cf9df0254
Date: Sun, 05 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775414733
