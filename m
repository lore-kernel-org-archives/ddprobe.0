Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C977D28EA7B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745432993; cv=none; b=pktYexaHDcxQ5zNX4TdM96pEHCUhnA05Sa8r9nPi5qLomzH12GRGmiiqii+w6sOP+S8oWtoItZJ920cUMFxEiAamP95BDeJo/6yyYL/g8FAXLs7wea7rle3WN989psyfFTFbk38/Xg5B5/9cdHx7cu6FwxRTC2RKE7IGxXEm3mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745432993; c=relaxed/simple;
	bh=soOT++BlOlWSe327IHrs6gUPPp+JKOICWTRNiumjL5I=;
	h=To:Subject:From:Message-Id:Date; b=PTluLLRzmKEykLSwxlfA1AF/Iup38riYkqD5L+pjOqKvNCQOiSaOghgpTnbKcqwEHqUGdIg5tzpRp4Rkrq2lEH8bUDlzxEBCBa+2jQbHPQaKMMfRrTQr7uuqfinonTyI0mhBjZSiicpcOqAWRIIpsSMDTKHf/kjCXJVgYfz6+B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKIfF/a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKIfF/a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA1C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745432993;
	bh=soOT++BlOlWSe327IHrs6gUPPp+JKOICWTRNiumjL5I=;
	h=To:Subject:From:Date:From;
	b=PKIfF/a4fYMfvm0W5nd6K6bVhprfGB0ZXwXhwwkupi5lJxs+mLpBvvo9cU+TGdxqj
	 uFhf2pDtkAjG+ilzOG14UXtKSD2ZdccB5txyupDRcwIjyHacPCLL4R507YN2+/OesH
	 EajansGySJ2L6d97fxP2Pz3KdZ/kogcvl8swRCIH/udUzbnW8K761quWe731HWfMFQ
	 iXjUeCkra+2yTe4R2DGwpG+5/A2aBMuJOBBdz/+qWgu202Kvt00q8Jmu3R+0eU/3mx
	 nhwm/33iHBfoegvwlLLH17mpexJKABgYTb7ko9xAsFViUDPtgH10vH0LTkFwqb3CBx
	 f0HYkaOeabK/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB2C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543299357.8354.2044952527888146955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d6d34144171a55e55006f787442ce1fc0badf2df5d4502b1305b0f1ebf172c
Date: Wed, 23 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745432993
