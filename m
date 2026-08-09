Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656834B04B4
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786253434; cv=none; b=kX0XyeszizwWntso6BEoZB+8PBUwc5s0U8OMF3CgZ2SYFxlgss5005oN+TZu4qcIfh54pdzl0o8xpy3Ob5wh1YJWjwJiivFjeUv6Oufc3D4Bo7lsWH66O8Nl0ONAEAC8raIhk3DFfpC93WG+ERQKEHQAQAUBVYtyoQ1sEjiThgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786253434; c=relaxed/simple;
	bh=PwN/eghnYfOnSUEtgfmkK3G59Zwh9nWuaqJ83h5mkF0=;
	h=To:Subject:From:Message-Id:Date; b=eQgOFFwlOGYpbjwS0sWfWPmN4kM6KgAGPEoOWwAKdS1ZNAUyXDWAhlapoNzhukiSa4j2YyII6YQIulzdWgjpkD/w4XUHllL1DDREC0Dso24aVsruh/xmp7Hw0LBnXGuC2K4dMVCdNED9lH4mc7nQf9ojia0Rtv5z/8rC5wmijmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AULfL/yb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AULfL/yb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ED1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786253433;
	bh=PwN/eghnYfOnSUEtgfmkK3G59Zwh9nWuaqJ83h5mkF0=;
	h=To:Subject:From:Date:From;
	b=AULfL/ybf5TRWHAyl1WzMm0qr9zva6Iy6I0pz3ihtZx2CFrVNWbnCrt33Yi+WeCQ3
	 0Q2n3a2OLTPvSiBuJq9rHanpiZG1+CltryASTUrbH+NshRficqEO55KwJii65kr07+
	 YZ5V4I1E7zCsUSRXsUYUkdlHhI69oPDtinxVvbzb42Nq77Rrf90HPYDk/te4B5HqiI
	 vu8AyB6wNk2hbR6dXdZTx/fc3NaxFE2h2uuzhed7zFnHJ65zH9V3T9b8vN1im8rLDI
	 LuHmhT55L60aKjDcpLfq9o2ckxXOipQnkh0kT+qSriZej1MNWMoedg8pg2bC/h7JQc
	 rjRuE7hgAraiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2364C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625343369.16299.5209418600940236279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ba1e36ba5f0c443d5c49b01b0ef5c201a20dc03f4d92e7afccc80cbd05107f
Date: Sun, 09 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786253433
