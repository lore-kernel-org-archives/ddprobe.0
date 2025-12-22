Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D9C4CB5B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766365434; cv=none; b=JsoVWijVTDT414tvaWP4ESge2CqMPk+YWhqr26A4bZuZBbUamQn0RDATWQ11TD7pDXJu92DCkXWyK6IgMkZ58An3GtKa8anUC7LhgAE0PRuEsJGMxglxr1jQKcDRpjN6GjvEQovFrXpLdjwLRHwgDU/yQRLOaKIkvt6q0NWYqZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766365434; c=relaxed/simple;
	bh=HbABY4LHClls60rGK2YIKZqi8aJQRA/v9slUCSYNa8w=;
	h=To:Subject:From:Message-Id:Date; b=HkEvAVMxc2Rs4s5v1qvRMbO/HgYCofwHAizpRv5UDbH58gVOI9O3xQ7AAXQHRJrWPxaAH+BVNYzKhAXFmMDCBptV2TyD/STFO6GbDDDy1bLEinBbTiQrW4YAWx57Jn37HWW+nEwJ8usnuXDAI+8Z+eT9+bEK/8+r8Xim0a05IJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njLiEdLm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njLiEdLm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB916C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766365433;
	bh=HbABY4LHClls60rGK2YIKZqi8aJQRA/v9slUCSYNa8w=;
	h=To:Subject:From:Date:From;
	b=njLiEdLmqIriu23ZFvCJcjEsiAHvro2j+DnENbF0LtdaHv1nM2Z+xgQjnas928Ogl
	 FEnLUYnJi0hrI1mWP8WiPkhTBMzeriYltEIUCti0x+6O955jrnEvoCFEYB4FfVrskY
	 77A5iK4I7F8Na93Et51zjJlnyUD+hjmYBieDs4spKWMg/8+MtA8m9vG0o/zP5WWNjI
	 iXARfmXl63os0peko567MgCIWpVNSlPY4Qo+Qds6vIqiZe0jrJ1a7B/rMhft+BH513
	 d5vVZb1/iCmK1PPR3WdfR+PYeM6sly2ZT9wqaXn3beym7uSnrY9nAFJyaz6jvTMck2
	 VjuY/nAbgdf/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A634D68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636543360.19441.8264513784576834427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745203ce635db9736a87b784245d07434f48e17c23199b8f5e96a299457389c6
Date: Mon, 22 Dec 2025 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766365433
