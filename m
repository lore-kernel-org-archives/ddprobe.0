Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672E7EC4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742707794; cv=none; b=dTYs9IQtS87YX+L0h1aMZo4oRJYi4Xo3ag/8M21GqCci3swhoCh+rcU2hWMpZO39lHZGuP+Bj1iD8Y5CUNIpWy8uSO1yGPVnXQgaL9Y5532hgn/hpBM6uj2YRMvSTeFJT3WUUIhQs2ONwnzh9ZRLxM5X7cC5CvCQkuJT3Hav5Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742707794; c=relaxed/simple;
	bh=hzKzjafS+bWslnd7kt4/9Pc2oaQWTNSSGh8wyK8mdOc=;
	h=To:Subject:From:Message-Id:Date; b=tItik50jVmCl3hml73II1FV2aY0BAPBLosRzrTayVHHC+u/eWuhVHzZZhIpdHcgpgLKnFnTBIpOYRMFlDwjnd3bsi/egxvF1574qDsRYPcBM85dr8/oXBPsNBjYZ8SqbYUcFfiT1Lc4oHaaxnYJmW5lvbUp6SCJAf7025D2n1q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK/VImxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK/VImxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B516BC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742707793;
	bh=hzKzjafS+bWslnd7kt4/9Pc2oaQWTNSSGh8wyK8mdOc=;
	h=To:Subject:From:Date:From;
	b=SK/VImxmq6IvdkNbeCa7Hv/AfA7uagwNeAZ3WQZ6/75/vpT7hwkDgddUDSmFarA4B
	 AEZ6t0yS5HQMzwbUPrAJa49Ka6Xv2X7EViQmU+nPCfBXe1lyqygMKrcp/a2Elw42aa
	 p7xkMasHq0y5vFJ+c/QD3Wcgu6Etpri3xSBR7fe6GPGWpUECD9aNQcxzadingSTfWz
	 iOOpdITfUaiMn0l7OQY8Ne3y5M9ahTg80veWOcNlddWKKTuftP6+npRDghwlBizGDi
	 Hup4yvctaVIc7FzJFhNeDdsKRhtSJnZWfV+qpVtALNreYocdefbTbWXmvrC8zSTsvl
	 2YeagAeIhcjVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A812C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270779361.1038.5928518444405740731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23834a76c45a78c7b34cb4a0ca8e961c611163e69cec47cac6a0a244c7c1de23
Date: Sun, 23 Mar 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742707793
