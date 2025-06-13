Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198A01DE4C3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749779394; cv=none; b=ZlIkvQoWjbJ51nEyV6y2w7kdhx9MdbGFM3D7lLqmvN+kz3klO+21X/o3pfkNDDCDZ5hMKQpBojAg21OMIJdCpkgHWybUKm5+ebWpAPnOHi31yr7Oen72/3GJnH8B0rlrA1wL2briazGfWujvu1v2lQbtQiP+SbnnwK2an8Q8yj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749779394; c=relaxed/simple;
	bh=pmBgY5tMgxqU+niP7rrwLZL+e71aE4a3E/3LtCnMuLw=;
	h=To:Subject:From:Message-Id:Date; b=QAfFYhVGdEc+t+zkvPzfxiLj81Xq2L+hTrVKUX/MpWBJfiT0V8K3cfAw4//un6r3JgFLFHVR2be0VcMdlaJBzoTlvmp+Pncn1xbGTHCRdyEZQ8FN/Oyn4umaVgumQRGPv05MpdATC0FqAFOVVeTGlx9LnZr1qlK+4P8hbOW14Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKQRIMkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKQRIMkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C84C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749779393;
	bh=pmBgY5tMgxqU+niP7rrwLZL+e71aE4a3E/3LtCnMuLw=;
	h=To:Subject:From:Date:From;
	b=KKQRIMkjaNmFPxSY+iXW1Dh101hpc64kvxmMrsjfpJ3w1V2jy/ff5qQ1QGQtTRcTr
	 z8s4HMRn5l8j9Ge1w3FBznA9EdTbH/girFJSqUBbQ3Spkelp8zYSk6w3pZixgDnNtk
	 N9AjinOhLPYDsY6rb30bi6blwLU+Zf4A7+ydf/Z91tb6TALZVJRnf7wbGEJY4wsB4b
	 W53Mr/QydaZyniy73YNu2P+ke6T7RujQqSJYZy0b7+f42FGeqo4EfnM9quYXxB4FPe
	 BKURmlHieeSXVji0GfU26FJ6V+xDrMTVDXCimmXiGStvuGLR9D6QwpOuDpINVA3EG5
	 9nFbbZNW+y59g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170AC61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977939358.18088.13063149455787289856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66465af80448c093ed6eb47ad752f7f43f8c611b61d2933e4b9d4d0b8aa353c
Date: Fri, 13 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749779393
