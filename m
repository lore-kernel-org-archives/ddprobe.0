Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E09256C7C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746980394; cv=none; b=Z0CgOi2C/jk9SpchFBIO2RBDldKRuDpuAEnqBESQawq9FXRvxgRN4Skt4W+aPrm3+b/0OFGeIoY4y5dV8gWJS+sHp53Zxmwf7d8wkqFcSw4J/PDyD4GcOF64Z+3qrtXtfjvN49FL5fpirOFlc72iBDNbZbOcgeV8zGqHPSX2ovo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746980394; c=relaxed/simple;
	bh=x0o6OY/HKsRDTXmuiLCbWjZMiPYwF+0bGlTU+J+rTV4=;
	h=To:Subject:From:Message-Id:Date; b=mxKUk1azw+IqPVqYqq6vOZP+3zf1C3BWeUwfdWxz5O7gccwD3B0B3ELdP8/V6YsU2MhwTZUJkGyPgWP5nMV+e+gcpFxBiUGqysThWbx1IqFLmAY5rLoy4ifH5nfOae7y8l8auFqXcn83V6jYszfnLdczhabKIBJ4C22fLPJTPoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxbjMtqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxbjMtqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A174BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746980393;
	bh=x0o6OY/HKsRDTXmuiLCbWjZMiPYwF+0bGlTU+J+rTV4=;
	h=To:Subject:From:Date:From;
	b=TxbjMtqgatBhdStXC93EDugS2rskC+INnUi5wvy0WFohjTCAsU0BullnqA6H/oewp
	 jPQdKLZrQnzUEfDrbdQQbpg5tzTFm+GethAXNTbVD9GXIa6CGMZ8lqFQyKKfB/tS+j
	 YOLPOn5qLsgnLgYamkQhswQUVj4fppjvNphzoYqmqH6uc+gSiNygxy1kIrt63e4mpl
	 tcClwRdEDzTek40p+0tvy+xi87T+musqHdSJjCypgrYoyM8Kttfa8v+mDCQHGguI74
	 wNjX0i1zyxxMU6uwxOS/VcOv2iAym4bpRU6NTrwGjtyVI2KoAwDnlZ5xVSLp6ut3xK
	 D3XN8kj80aX/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED89C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698039357.1725.189786525894436392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be89b3cc4481a77659a665d38f95ac0414dae930bb3d2cdc718d8a382a9601d2
Date: Sun, 11 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746980393
