Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234D617BA1
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751764194; cv=none; b=ENkKisKf+aO6W5PPaMujR9d9FcHbylz2NmiaqFHFXnsWZ3g1LazF8hOqM2HwDP7hbtF5Zz2aTL4u7vmcZGYFlLkHa4Kedp3VeVtFdMO5iJp6Ku1Q2g6SsGYBLZYhvaBP+yhWrAs7OiHHVPULuRuKxvtoPu/tqAGWaTY6lWB+FEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751764194; c=relaxed/simple;
	bh=2eUTFQ2O6Y03teIofaFlO7ZM6rmS+KGk14apJk+hl4w=;
	h=To:Subject:From:Message-Id:Date; b=JJp2BK+MtF/EIJblUdVEdWfF1K9T78D0OWR26B/iCXhC6Ytgc0WeuhX88/x8cvZbGMbI7QI9mJMfNN3S7sRiaddIwiwrVXiu9QfBwl+DH32j8YOfG034k1qs00gswmX4fBLls+jsOXDXRuhX4JdfH2i1PFVdPZXhKh3jrn1ZpcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE/UMoqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE/UMoqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751764193;
	bh=2eUTFQ2O6Y03teIofaFlO7ZM6rmS+KGk14apJk+hl4w=;
	h=To:Subject:From:Date:From;
	b=rE/UMoqWZZWkgZAUUO8Eh7IUXa/NHmJOVGWM5CSGNxMMbiStQP5vnuffBy9T5op85
	 eOXr+clrLx80tzfGt5ZD+MHyxLEbh+77Ijsxh3lB+N3ditRiRo4ctRyL28GYYVsDoB
	 jhHMoxeJz5CQsIi0h1cUKAFDXyzxkFkkeJ4eMpY/ZbGNnWlxajA+KTxAicTDAC1UdW
	 SRnkg3udDwBluyqxOKSuuQI92AKJzfTGF8AgGWPeOA+omVi79ojKmWuNBIdnnUgKsR
	 YN2GQnxjh+7QOIBZ99bANRKttd/TCk4vcUCBXtFCeYpWAruQ7RcL01ZcDaH1KLQG/b
	 BUO6k7B1mTkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A1CC83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175176419357.12653.13989256284989907057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8798edd3a9219cd26e9d28b891c2c590505db7ce7bb2d7efd3006b3e984ab3
Date: Sun, 06 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751764193
