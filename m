Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470A4145B3F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778896234; cv=none; b=rW3JkVm401osTFPojzAha71AGSjBVg3JmD0hVfWMvWmhR/uAtGnx5FcQU7IrO4uQQxKktQgacfgHBA3pymxmwaHc/ADuEv4jTkcBXk7o6GBX/g11O7TvSEk6S55HBYYzOD6M4sf6xcgJnGTekoW1Oh2SqHMpEEFwlx5jswu3x20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778896234; c=relaxed/simple;
	bh=LSRM2zLKNEIQzJRIDCNhieevkwXMduSZwHE96sOyRTY=;
	h=To:Subject:From:Message-Id:Date; b=FU2XaQauk+HvjtvGT7YWePEiR1AXmg0Z2sNHaiP6vLB34FS+yvBKe8NVOtAsaaUqRLblyKrTslmqlFWVgtnf4GBpnXQEILPOm9r+bLxx1zhs4bMhuVT2Ou5ccKGhWRPK/FZBdZKNEmkcOBjEu0KcJjqGckWWASHULdbNw8oQYH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYhTNnQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYhTNnQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14DAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778896233;
	bh=LSRM2zLKNEIQzJRIDCNhieevkwXMduSZwHE96sOyRTY=;
	h=To:Subject:From:Date:From;
	b=bYhTNnQMW7YUh2ljgekZ/DbfNan8W5PILqtd9Q+dPtdZjF0A8FK/YraOuES9bXOeB
	 a8gxBPVfnUAjRSEhI5bgVnRocCJYsIJ9DliTYlVjJypIg0Oo+NWkbG81HKE5aKAp77
	 Jbu9p9VGmDBv4SlU2gWqK6Mn9fKJkJCAo7asJGBy587eY9CaooKx4ow6xxsGi0tgeV
	 iTSG0MBkbGyimZwZY+dnG/t7b5OpVcJ8vtYAZN6UHm9v+cX/q91XEY4iP0/fMBgWyz
	 g48ME5ywirSwDRPNe4rw732H2lY0U2DI53Dz/LGMt2SMFXb5LCTYztbS+ChX/LK4S1
	 cIEMsUUEIlYxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7DBCD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889623374.9584.11513314273749447736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ea09cee549fffb1beed5bda11674288f3cef2f7ad8f3468f5695a90eca40ec
Date: Sat, 16 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778896233
