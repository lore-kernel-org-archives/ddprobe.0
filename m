Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EC81E5B7E
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743506395; cv=none; b=McCv03T2F4MsHUn/QGcxhlJprcxZ/arxSZVsNRoiN+aVYfibqKREFaZgc6bYuSxSAaoSHS763XxAIlg0xaJqbtDE2GnUyjQgEuSI1IHZykrrhHrlKJi16yp+//cfPvcHB3JKAn4k/zUsAYLx327nGEbQvFs14gz+KjHMTTHWEbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743506395; c=relaxed/simple;
	bh=on2+mm/wB7dSMNXa+5NfW+gIGcJrPCjxnd2Gyklvv3k=;
	h=To:Subject:From:Message-Id:Date; b=b2kZRBR5jO1h7V0PUXb520KfNWT/JIvLg4x/WdbCnwXzZbG1+xajkDVFexc+SFsaSgqtxXXarGTFU6yUAMrtFjGWDQ4GbmfBU8zCC9EbmP9a5p7h071YMvUnJ2oOCxBoXxbWxm2SjZ2V8cA702LDcD3Vp1xZJPqVZ3g4i8RKPUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTu8KfUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTu8KfUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743506393;
	bh=on2+mm/wB7dSMNXa+5NfW+gIGcJrPCjxnd2Gyklvv3k=;
	h=To:Subject:From:Date:From;
	b=BTu8KfUHXAQaa6hz59PRLOLho7+tjE6u0hzrNdtzjVgv1V6oNeEDf5mwqYF1vbX0d
	 YSTz5+JFW/NxHrIpvyF9YGH4Dzw/BzH2fYM5N8MJTngeuCo8X/RtF4wIRgJVnEibDd
	 Apw5lRwg6NDaTadYgw1rIy3/7kN4RuSSb04gHxbFuCFaEGiyLyvNlnSOOv4bYJsXvX
	 ctjblpqd+kUSnTNXpd13/BM2zz3RuBqv16sbhpneN4SN5XILDE/eir9/INaCuU6ubH
	 1MU4q7YElikYGr/P9fpbmOC5Qb2EEI4d2lbI3cKZCyueQ2G7gGLOsOsJkCwZ30oP1Q
	 te7aNf8YPa+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942B3C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350639359.23856.9440921884469972020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3ef1fbf34f20ae83a32f5bcb82797cff3c3c47dfe6454587f1993164c4c953
Date: Tue, 01 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743506393
