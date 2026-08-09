Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499864B0486
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786237234; cv=none; b=rUZ814HvQvkf7gMppej5F+1A9IqPWqehYvjSBGfaqEubl7AT4LoDwF/XUiGNGkigPvatPDL0B3dOQcaxAR+JVewBhWKkCSz9XtamKmipQFdUruciHnTCFrEHfA/olVKfHCT1vBK4ApbjfJu603NVi49zULqecOwGCtELdBgHm8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786237234; c=relaxed/simple;
	bh=o88f5RsUQcQ5XRrhjXjqy/onC1nZgvNkDCNnbVqOTpw=;
	h=To:Subject:From:Message-Id:Date; b=LjkFQJ5XLvWvElSp5LAAolvLyV1IRy1jEIdwid+j0KCe6C4QSeDOW9qHsJTxdsKZ62n+vpbFfmq+CZ97EHRI40wBqcpGcNP6OFJyy3w1csTizODb+Xwe4gKR2FeYtnGBDer00ff7CdsC73AYVTeY1KfRnTCdttFcevTDcnxdTrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvLIjuBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvLIjuBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD09C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786237233;
	bh=o88f5RsUQcQ5XRrhjXjqy/onC1nZgvNkDCNnbVqOTpw=;
	h=To:Subject:From:Date:From;
	b=XvLIjuBvtqGv16TdM346TN5ExQiwHnQ1GqQYjOQOyMhyYsC0NGZ1QP2og9lb9MSmJ
	 f8kxrGeVWF3R2Gymoaf6VgA8j+2GzTjYK3BsgSp5YmZlXBSyEVI/s0Q4TiNmThC7KT
	 AeFuvTdXEk9ul4c3NaznbE9egbt29ffAtohPtyLmke2f1UxqW8V2lgg2GFQYte/JKX
	 OgGzYrlgUnVDUfF7w23+uI0Ox4LeL4PVPPN36V+LfxnMIG6JRK7op9WvWD+fM1kDHq
	 koT37KpWCrnrRRX4R6X/3tciSilUBl3soyOt0y1UZr7irAXOb4royRDoROwf3G1wfD
	 uI50qmFe+qFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA77AC5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623723369.20189.1660877964820819983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f877c392cbced7df4434460dc04a0719a6a6696713908a0889d9985f8335f05
Date: Sun, 09 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786237233
