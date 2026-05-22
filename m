Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809D13BF667
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779442354; cv=none; b=uf53QKL3oupEylh+HaOj0BJoWrJSUsnfEfwwJnPb8v+DR4w5SdGL5GpQtiXz3++8GGLiVHtuMJJSKBv5LIbxXbHiTKQOBeeh1VPtaiyR4uaqNWYTZheKXkKUAm1el26Weawan2WrrmN9ngv9aQd8xzHSXRA0UpOxGXpZMbu7Hdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779442354; c=relaxed/simple;
	bh=M9ZY3uZ/HJA97Wt2ulsWgRgPiHBwlfwjzKmdcRKpIOA=;
	h=To:Subject:From:Message-Id:Date; b=f9rlk5Mg/bZfEVa6TgwSoQ0f/YsQ6PjNZFbJPbrzilFPeVEvLJ/vATiIUmMNA09RHRl0Liq3Mxa80ZFFQKtxwxeEWFvickWG0Ud6ewz1YPqkCwJMM+LH0aZnzdEyzvdw8z5IlkjeKkjeanEUPCxduYaqvUPt4dwcbGASSB93/qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHOukKmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHOukKmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC90C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779442353;
	bh=M9ZY3uZ/HJA97Wt2ulsWgRgPiHBwlfwjzKmdcRKpIOA=;
	h=To:Subject:From:Date:From;
	b=pHOukKmPu8e+zWDmVDSq7F+Sh4pQDBTjkPlX4vjvCecMHP0A9qZ9i02Wxz8jTQUtc
	 YKEf8W1G5xfTYLyOP9V4yEpVMHQ7V243ex75esTONN+DV+kaNJ+hz+Db0N5CVsm+ua
	 BvEcrtCLxfLKqbumPpGS3lwo5FxUMJYSCyPlIuQnORPEE02G2zgW3m73C2gHvy2fYF
	 bb05OkwMOZefA9hWCLVC58Vbu3orI/Bg9kWi5DfmWFnaMPhwpXwfanPNdRo/XaiHmX
	 Z/PVtau4+7wu/8b373fsyONK6//p53FxhGn4rTUj1ognGE7VsfVseutbe94HmmvmTX
	 QEGqSErBdyp0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8703CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944235368.483.2688218097274122539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b97d836826f8c09d32bf85aee04d2418aa1b0a34a87ebcde78aa71fafb4ad5a
Date: Fri, 22 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779442353
