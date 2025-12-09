Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C418BEC
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765238574; cv=none; b=nPVEHdZroQYnyEonQNDRLbnQwOkjMtU26bsozYKSvSn4FGJvFudQRcLbv49ehIs9BhhOyZVmr5vx+HEU6AT8sk1qyGb2c53khTGm1qODbpN8IDGY7VGcJ1M9q1Ob8pQc10ellkAPC4VTcREearT+qKjKUbcvxbHu2hF+RbhMw3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765238574; c=relaxed/simple;
	bh=OOkKMVt9DkXynEL56rPhscAOwo3qTw9vSr8vZ/6T24E=;
	h=To:Subject:From:Message-Id:Date; b=Jx/iwUV75eA4fsBwsi/EKpFXk8LN5wnXqWOgqs2x4vfrMNXxElvy2N7mCaj+rhxAdOZZ6wvoW1rdeX2PLWE2RN8J1WKPbJsueA1okiodPZh49irQekccgIo/aof8cE4r1LRrKu5gExiz+YUhpYd6Jfiv3T3zTGlh8BBNrIcv7RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aab6pFs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aab6pFs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA952C19421
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765238573;
	bh=OOkKMVt9DkXynEL56rPhscAOwo3qTw9vSr8vZ/6T24E=;
	h=To:Subject:From:Date:From;
	b=aab6pFs3SWW/eid/+spRKt4IKpzWniiM24DQsAdaAi8nWsTrcnuxDsUXfJyqpl0+u
	 Dcqgd/c/Yh3ciDzRXpsmbU8Qfzlkoj5bQ+kpMpH4CK6pVeLajy2gKyPS51cq+n88C8
	 uQiWMvAGj4ZrwjyNVSAy6YqCxLj10+Q+B2SkLLbKjE+xaa/hcmUcuLXAmdX4HwjS3c
	 XmL86j3CMj4y+K5JKrDsG/occT2XzPHum/emt+XGsb6SHQfSxxxati79HjgkfV1OXH
	 CHAJirwdT6mB3UL3fJZ3/81niito5G1XUgU0GASJR7kmqIkos3sut5GWi5K7Fz/lfE
	 nDHazAF+Voivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993A1D3B7E2
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523857359.22289.1911153440064716679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1fd87ffd5a8ce460f1725dfc5bc11ac9e84f3782c4fbf4e683a77c12aed97d
Date: Tue, 09 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765238573
