Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B33271A7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751408994; cv=none; b=Z/Ulfn5jzZqUZNKG8z7EpNJC2s85N/ltc75HRS/ax3NuQji3TTBUG4WJgo7D9Up2srAKWhVIbWTT0nSw9LIT3pjIaa7fg13z+3XOqLpYgdwC1xyXU/4ozRP4Ic1ihrsrwJ5s4Fsd4NkBbbz+D8Zrb2N9w5VwwSi9rsTyrP4BL+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751408994; c=relaxed/simple;
	bh=GVNmFOc5Fu5jM/Dxl36dlQGrTCVX7r01Xo6ZhZp5gr0=;
	h=To:Subject:From:Message-Id:Date; b=oOIfZYR2vbHtiH4lTCJnHhyAbCEkRr1PebXifZJrqcW4Qa63g1pWiKY6oCXmvrOh482hiIeLEaj86AMtSQiU1WXbk4hxtpVw5RSJoD+BDb5Vfz1QxNhyRWviNgCLEl0FBLnpHW96rH3UQjVd/i0Y09qmnqxXczllBiqRFUxS5+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwDRUQfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwDRUQfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751408993;
	bh=GVNmFOc5Fu5jM/Dxl36dlQGrTCVX7r01Xo6ZhZp5gr0=;
	h=To:Subject:From:Date:From;
	b=FwDRUQfJ59sk+ncbgs6enws04fUMjdkMLI9VO9mymRonHdPDzUJvvKYsDAcNGFgmU
	 gvCs9yMXYekYKoOme+Kcza+8qfbkq5wjYuLNVw+d/OgH+1CArOaW47+pqaSQeJjPFq
	 HbEns1I3WRpVMW0a6Kh1+xt6yvyvFpVmxDc/z5jmnZDfFNswPFKkLdckfO21YQMStu
	 MBdDQ1QuoX236PPdxVS8ESls0+Awf3wAS/MHwZHpH9b+KkaBQ94dswT1Og2qWgbXL6
	 YQgq0ZqP/lO6La5VvAgWawoqVpUiGtrfeVqG88qZw59JgI61KZjZ8RBVH/4ZzkjpqY
	 epJb4feDLLVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140899358.8401.15175689888243278988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71669c6b45b8989b6adbfd531500d5d2ae239a3d3e321a0444b327bc692df0ea
Date: Tue, 01 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751408993
