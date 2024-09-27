Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458F18475
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727404554; cv=none; b=RzFuG5wujMyJ295us9kTaue6eTFQdPi1w/9t2IOIQoAlZx/+6ZzNHBT49JVbeUvFprA57EFQZWA/N5s7MWRawaOXfxDnzY5WomVaDZpJIpmJWQgHINWudyQsfCFVnRKde/qyIQaZlhQ+vT86+dRjRP+uWlvOyLFFJAkJ2lIPATk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727404554; c=relaxed/simple;
	bh=HLA0QsiTod0YtZivJmiYAQuBjAM3aHdZfz4+BG6GyRs=;
	h=To:Subject:From:Message-Id:Date; b=RqvL4Jnb1pbe+yWjJr8T+Burx3Ba42DxdcB9OYPPMvoz+9V3DyyoqZqQ4W1Wb4XHQL4JUpAbIIa3rOwXIJ7b1pLTHX2kSgpSI3VOsFhnz+Jk+orgqdJk10EvB7UK4bmEH7jPtFR7AjpnL+DuQ5Lqo/cM686bb0/Kh7UHRVKsgbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrz+d/je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrz+d/je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5360C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727404553;
	bh=HLA0QsiTod0YtZivJmiYAQuBjAM3aHdZfz4+BG6GyRs=;
	h=To:Subject:From:Date:From;
	b=lrz+d/jebmtX2iGHzDofIoGE+NPp+7tnKaZwq5OupyuMFNS/gYZ1Zxjz1r8sMrHWr
	 5k9ugxNJFwwTMR1WEt3s5Uu/EVXo057Vo+wBmi29Yym7cbDIVkWERfL5jEYsabyl3l
	 /24GeIdowg262m3SZ854nuR6+UfWO7H2Fh7nrCgYwMSURsyaJZKt9BRvFrvdBptPFI
	 aei4JA8lapUpfJuRvBzOIrW5KtiAN+NHR0ybwakNkwaj7qpOQsyI9k15nYAP2f4ATF
	 SN/fHW3EGE3s0YtzdwuRktiXaVowS3yTMgeLuc4SOX1PdOHQqxepjBWmmMU5xSOMtf
	 E8chHPw++A/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98338CEBF6D
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740455358.19405.14827999432268022313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7b50c2e26a86ac013c03a1e5b9d1ee056332b061a8f73ee3db99ec49efdada
Date: Fri, 27 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727404553
