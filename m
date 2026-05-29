Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572223DA7CC
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780070554; cv=none; b=qnIAnjrILulYTiq3mGPPzJ1IFQYrqxakCV0r6HyEo51YF5LtsCNqZLahN/sxMlyPejl3mUGEFyrGYXGNVMMDEcr3/ty8AB6+vWG/Wf6nj2t4wwpENoMEs4nZB4Yt+4rslT8uanSZk/xTnvE14Mt4c5fOxATlC6svhYCoQpAg2rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780070554; c=relaxed/simple;
	bh=O4tlT7kfMwbRSZD3insRP8X8yboy/U9MziyQKWSk5BA=;
	h=To:Subject:From:Message-Id:Date; b=MQBszxwWjTmbuDgHMXq10+y9eSfD5GKZayLtrjpy0jxXBbezS01q7oLkPi86M2dtI7pnOUXu28qt9jg5qwRfwCoqktcjPkvBUofQjgeq3g4i/shTblFcWzl1v1+G1iVM9FA8aGX8bJHUxBja0ym7dDv40Gcdhx71wnnM//D1H8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwQgufkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwQgufkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE346C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780070553;
	bh=O4tlT7kfMwbRSZD3insRP8X8yboy/U9MziyQKWSk5BA=;
	h=To:Subject:From:Date:From;
	b=mwQgufkFpJV7F4Ky09U2GezIkSmrrZpfJINhsJfDM1ZjAEVEP+3qzgaVtTPHbeoa7
	 Kq/namDRTtw4yarg0WO/PxOc2bamUeHr8I0q6jR6CtTXVgHu4ZHboTKSCzCNNVCTHe
	 vNnMmrkMzDbkgNeChNLZb9YHHbfp1pjvJXphS3+9AlVuogJAVfVhLulduvtZB9zUDd
	 aKCbPJnmm1VRqI/frfVKHFtvDeDJtx+fWOEc6zMc1vGE2Olc9sfGEAeRnxdPaPATgd
	 4IEP0gCPmlBYHdWzFcJgVH9Y7o5VkuUyZtRwCKKtsq8e5VV1wy3rfYveSWTxu/gPsn
	 Bjj5nf4OWctkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0C1CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007055375.15750.13318756948270116308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f78ff5f05f040cf4ceab6df5c1421c9099d5f38e1543d1e65071801c12fefe8
Date: Fri, 29 May 2026 16:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780070553
