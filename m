Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75301F37A1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763794913; cv=none; b=tPsjpMVySEiEhSbwFrZBZDagyJY/2CXbiO7oIh9SaPIkpoa0IqRr+glFfl8TyHaeOiJg9K8TU4/O28sAszzi5T5w9g561y2qpPiadO+3U+JXYUAPqzO4l0a1neiN/PqvLqQQQMZCzyGDrN4HFykat3gXB/HvH7d1as+cRAcNgu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763794913; c=relaxed/simple;
	bh=10boaiCAPm+5iogY7LyWsVIPMjAOieh/Tl4zAiDX/WA=;
	h=To:Subject:From:Message-Id:Date; b=p90I1UvxrYCqFjFck3WYjpXBx/7h14wxr40fRZZDNnK+Gxrf/xDJJMts8ddhJX1wpo+qn8AcOPEDY2Jbzr1tV4GTM36K1VkQFNpfaAXniLYyS+gw7JT0pjO5lAMavmnGfMRap+vxnHEfWxA70J3fJrSOpslR9MfCkWHvelBdC9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q//SnnyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q//SnnyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE233C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763794913;
	bh=10boaiCAPm+5iogY7LyWsVIPMjAOieh/Tl4zAiDX/WA=;
	h=To:Subject:From:Date:From;
	b=Q//SnnyGfREYZg1LYFsEcB6JbDnfe6xbx2SobHjxgQUdVN5VdipCv7cLBfhTVYJkD
	 pFWp3V9/+PsMN9VZw2b4DYhoStNhEGKSFnRp1XAyHh6kHQNKUBV96CEM17a7UvuTT6
	 JcV33hMluM9++BV/Wpj10GPUZtvClYLpLguRNjuH+2PU/g1S4vIpSlHeH29YuBaezg
	 yvM01VQIPhWDZe0AZ0g7H/l9eP3v0XGcG3LmuE2U0DRahOeNgq1oHXBChabEj/hzWo
	 ghgFiXopE6pen/tV23ABkm1GzLKWLvQ/sycDPul31fwhxnU1WDbVeYcclyCdU2ZB6X
	 4+ZU9HcV+/dbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97787CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379491358.24695.15563540859994268315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c103a14a7506da47368fc27d1e4a4a6574c99d68d389eabb08e0007f8ecfd3
Date: Sat, 22 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763794913
