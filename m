Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495B6C8D1
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723308954; cv=none; b=hvComt3y90/QwukwTSRvomQxGaqxl52ilCvYS69fM5Mt40+5LP3U+s/GVonCdUCtWOIOnfbwl3Wunk2pzYk1+DmKjb+5zfNm0djubsuUOmyCaTM2Uybn8p9YHOaj9t/DPsFsfBh/kUbHozESO6gBBHSCf+PuiOapZfov058DAjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723308954; c=relaxed/simple;
	bh=QizsJca4QDoDXcLwDFbvLEmR1y4lh1isesVEGJCU2yE=;
	h=To:Subject:From:Message-Id:Date; b=r0J2/Q8ac4VAHRQeEHwY9t4SVKT69sHmlZ9k4lo0PdUESL9+3Sz+31XikRhVyV6N4bbMpnF2UeLHSLDI0DePE9zYuXVt7Ri9n+mDe2dhdbcYqa+rkDi8/iyAliuR0EMFo9TTNJZC6A7oMVbuUtlwNddQuOYi1N2rDyC4yuH6EX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkobpDk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkobpDk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3751C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723308953;
	bh=QizsJca4QDoDXcLwDFbvLEmR1y4lh1isesVEGJCU2yE=;
	h=To:Subject:From:Date:From;
	b=kkobpDk0PN2SaQjuydvP0tTnMa1mtYBQo3hz1YoDVVft5HINkZQLGJ2oIQ1+/Yo2i
	 8gOVMlTh18hAxPY2mux52hfNTOx+9LR4INKI87pon4IrCwpb6Gv3kOSX+wpZ4IAFNO
	 qcS3T5NSDjoKkSoQWlCkfaz+3ciDp5xmCyAMVcfgF/LLevoqwbggTCfIOckTryLn2K
	 T/MtxcUb0WSdGuNJW5TFbAJCEaCAtoYlRMV2IwEAscgTJb2ihJhtsou1dtkJY7hfrz
	 lmTU5FFNFn+7EoY0VoqUJ20VILWLCrsKFUV0KT7t9EFR7OuJZ6G7DfUKWf2lOhiEcG
	 RVVolTwFybg2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96251C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172330895359.20109.3356646978407012226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9227ed0deb4de00952e81329ae461367a8efb9a24f7a592709ab76dbb8ad2ae8
Date: Sat, 10 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723308953
