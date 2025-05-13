Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE892C1E11
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747158593; cv=none; b=LdlfAcm8xLCQG/tEIqGbh1z4Ej4uGcBT3ScZpFM4fbHIxYgUuEWeyMUpksvdtoBgdeltb11JbnoiSjolwEYCi7wbt4D2Q5CYZB6QNK1yrrNkL0Q2cVLKRGUJK0w4FcmPW+0BT43q7mvtoXUabeTcG7B/lbemdDAlVMKIVB2rMFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747158593; c=relaxed/simple;
	bh=CAIj95zHjN+9OefJ30hGcT0MRCenB9z+LmQv5omUibw=;
	h=To:Subject:From:Message-Id:Date; b=JlTu3w6vTzcj8tD5alB08oKsdXYtfLYzplnGhgJSC4WuMKePYpsWM2ixg+/ZRPLq5TrPoHDzpcuLpdFCaGK296/MDRIn67eVm2DI2L8kZu2gserlu4+OWhJRYW9wEBhxuZUzRDTxs7FD8g5FtDjBe9U+MDICeiy2vduFr86mbbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wsn+SFNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wsn+SFNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC0DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747158593;
	bh=CAIj95zHjN+9OefJ30hGcT0MRCenB9z+LmQv5omUibw=;
	h=To:Subject:From:Date:From;
	b=Wsn+SFNP4v21LuiRf3e+VCRcZZLTekPediNH9P7xjZt5Wh98gm1vROUCA3N580sJ6
	 Mr+bjbHwe1B9pp5s9ZXyilRnr2GRmGi9RTpy16iIbTe4qalVCm9JJDfNZ4tK78ZvxW
	 N3y9X/lxI56lzeJ3nvtZpKyzcQlx1yd6e4dnuzV0U8kTRKxr6qqgk8eZozELAdtj1K
	 JhW7WhZ5LPME1nXr72P3sTJJV/KOt1RvS38jnDF8axfSXqWXbe6bGlya9X/OMo4yGN
	 i1do9qHFlMuP9U26l5IJaFLk5nyK2F+IpNj41FGjljfjlQfktLH4kEfe6L0YyvcWdv
	 2RWgC/myJB//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F051C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715859357.27735.17001338399988841085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c93000fdd0f309169c113610d2935510b4c007a38b3e387373dfa32166c1bb
Date: Tue, 13 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747158593
