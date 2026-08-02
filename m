Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B0E2931F4
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785696034; cv=none; b=WYtweO36z8/GapsgW9mca9A8R209lSBB/ZpQvZsDg7ttvazs8BH6Ls/67IF2cGAEZnV1cA+ileAj9pDa1hsyh4mpwGFytrfoeFsxDwHJVvlPU/pG57QNbxWSgWcysALXmpgL/SU8KG4/YkA1pDtm1Low1WWO/wGsVUhOiJtWOFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785696034; c=relaxed/simple;
	bh=F9NGflzIFL5o7XomeJdPZcfPnwQvc76kJ7oaM16d1d8=;
	h=To:Subject:From:Message-Id:Date; b=q3/ZrRwhMxX2xkpK+2Qch68O8SXP+HWUx6vzXQynEZ3Ie84xQOqVx63PxQX+Oqy76ltFHuTA+LcLnJTIhuk4uUckFNPyGvWtfklfZbwELVsZjimuFDTv9IZ0R2rYL+Klgbb3mhUDhZLqFpBeeU42CQwcHIZTwMVqCvFlgGDN504=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTlJXjBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTlJXjBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D075DC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785696033;
	bh=F9NGflzIFL5o7XomeJdPZcfPnwQvc76kJ7oaM16d1d8=;
	h=To:Subject:From:Date:From;
	b=LTlJXjBW6ZlT3nSvu2tvx1pSn7ip1E/leeDeXG5yUTZgLj+DVnqjSNgxLH4cxZwN3
	 xJc6/chuHpSOeBjqMod5gxRUdWXYNeYfWQh6oGWM7aXiFQ+lFQZCr608yNsZR+IsjJ
	 6nF1NUY/5B38+yyXFIamnkFA5RMrSY4SsLLMyvw0xWGKMNNhep2pb6RXDS4sa1MqxR
	 RTBXN8gy4wneUDTacZfqZZAsR+1e1OafEwmC2bepWFrCC8HMK9MIBlhPMQtBv0hxNY
	 TTxqXBBoUMdA3qAgl/9o5qD617rjtDccasZCh1e6ihVfiORJGuzheyFsKLQlMXpeir
	 Xfz0d1saVzSeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC542C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569603368.32663.2652315002164736987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9740c515f09febd22b8b14e2f1cb6e3379092dda957b0d006b902c6152d585b1
Date: Sun, 02 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785696033
