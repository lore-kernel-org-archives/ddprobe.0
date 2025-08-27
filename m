Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B20C1EA7CF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756274394; cv=none; b=LnBaoBt0GghtksrpEBJtefSLaDHfO2BsTOZCeOK4iKWRAOPbLb8LJdaY+tJh+28wRAo6LGaU5KIEpL9zGFh95Gwc4x1bfnOup/FlC0ZOe7U8W+WfP99QWAZ1zIgF3NL0DV9FBQMxZwP08wVPRQkz44EKcCgZGY2uSWFKOHO7Xag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756274394; c=relaxed/simple;
	bh=OwPWOvE/iNRVeo9t4Br6fok9SkKUG4Dvjz9TeWZdpWc=;
	h=To:Subject:From:Message-Id:Date; b=VLd3DLz5hRTQXxqqNbvOqrrk0RdF3UF75QRiOC8Uh3twScIfGc8rGRhwRxCqAkfykTKMfynt2Xz9XT+tfcElY+MYWfoStsSJC/muNPI8/LF/T+WIjGI7nadEd7x5NT1VX1yUAInJVHtMqF7K+H5Gez81iq9VXDGrmmqF55vDt2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxkDn8Pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxkDn8Pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAC9C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756274393;
	bh=OwPWOvE/iNRVeo9t4Br6fok9SkKUG4Dvjz9TeWZdpWc=;
	h=To:Subject:From:Date:From;
	b=ZxkDn8PwkhKgg8LZwklqiaNRAS2+7db+Zt+U9TUocAB+Rm18Qd62gB51u1GZKFYW3
	 ONTNVDvHrXe5rErsInjdTmOXTEClYscf6SB/I4RKO1+ipwPDS/BVma2ULl8GZJbetx
	 KbrwN1IjOjGjWh3L242lhiN67mtzntPbRzp/wlNavi74jJg/Y7Kw1uiM4jlEYj+Ram
	 fZ0XmJnoHKxKZJE27WTzVFpv5uxpt+BawVHAHgysitUtrQA5aCySJkR7TV0xfUSahu
	 6gJfmGrYKMGI7VqZE91eOnuTyKJBD01GLpwVJE1AK+Z/XvOVNYlSo7Yfi//Saab6dD
	 6hsOGKfzhEfEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4CCC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627439357.1784.3230743442834234069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c21fa90ed4ea166ac1ef2c23b47b91e5a9b06024a3ccd95bf04f1437d99f1e4
Date: Wed, 27 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756274393
