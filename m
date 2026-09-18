Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A6C4E66A9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789733434; cv=none; b=qzIjoYRTPGmmlVXr8/hCG201Nhqvt95nYVYpq+k5rW46t7orHG3bUGx3qif+2C3mj7l0D3s6XvuYT5vd/ZefLYrcB4o/oc7TTMSb+h1zj97alcHe/oqh9iXz4o/1rMCykwNIvBrkBso/vZoNHxm0FHwdnRzEkYyZsgCYtNU/UdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789733434; c=relaxed/simple;
	bh=opHGSMTu1Gzl+ifjS8a9fSADki+cw3beTrCzT+HYafk=;
	h=To:Subject:From:Message-Id:Date; b=aH3dVSnLTRxLEo6wQojxhlyiPMHsS0DVG+/TeOsX4WOG35Qy6sIRZUDJ9uIrTusWCGIu4KTbEfEUq32s2HHvYfz69rIhivjc7iptNYpNolRdutiP7f9Cildzg1FYV/VPF59MYLoHMolvzjRKjRUZtFMYk4ieTcARQ1fgPtWnp4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIh+3HDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIh+3HDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC263C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789733433;
	bh=opHGSMTu1Gzl+ifjS8a9fSADki+cw3beTrCzT+HYafk=;
	h=To:Subject:From:Date:From;
	b=MIh+3HDGpRFcE3zXpaTNkklxB9nhfZcAP+iK4AGKc2aPBSjWKBjogNqn4SWYYpR/o
	 BbQ6zwg/17TfCGHUxuoNIfkue760DkAAeG7maWASsN4Jgqz6GPKkYXq+W/JklfbTaB
	 cgTCH8ZvyKSHFCObqyH/6etmMOjxB3y4P/cHzNDkzdikVh8ZB1mQ54lxO4unibl+9P
	 VgRLkSP+yxK49JrjCmsmAsi8XLFxVmosq6xpoBRrK737XFttTInRm1M7rvKtQPJDiJ
	 FSFPbLLMKcZWx/eaNrwDAND4iNHiNEhSkBkSkPWvjqcrW8jVwccDtRu6KU/ffcNifO
	 AStnhs29l1bWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14FC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973343368.3263.4925999675755117012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc13cfbb672212520f488dcb4ba115f1b2719fcfdeba2d15ee4f981d0c35e4b0
Date: Fri, 18 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789733433
