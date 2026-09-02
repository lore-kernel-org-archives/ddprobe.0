Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3F91DE4EF
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788322834; cv=none; b=QPyXcw/vljPiV0rcg5rdYVIb7xc8Sf3BjIFvwYgkSf1seiSztkLjesNdZSaWg8EmwrRwxB3ZKiB7Vndy/vdoLMTkVcDMHQDr6Bzr1hkvZ8ozxC19BMkVvAdT+NHjiv+gQgtc7wQ4bgsuXuTxW6NcaehXy001YMpLRoVG6vsHOMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788322834; c=relaxed/simple;
	bh=7LLLR3fcnL0AXDjw9c866i3PqwIr5QTZeN5kOZ7KRnk=;
	h=To:Subject:From:Message-Id:Date; b=IaVEkaOTy95R8p+CQ5kRLnBxRIbWxZYV4bTao2ddXjRSX0Wa1AZAbIkdnZQOKopyx37W4ttDmwvmYANZhMR9uTi8N9kvotnAKIK5RE/I2Tyf6eq4GdXA6zu/jjhNuBgkXDKCzM/tKLFCMPXRTQJZ3jbrEOzT6BH0dl5ieHon9dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7JKODrj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7JKODrj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D03C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788322833;
	bh=7LLLR3fcnL0AXDjw9c866i3PqwIr5QTZeN5kOZ7KRnk=;
	h=To:Subject:From:Date:From;
	b=L7JKODrjj2jVp/jpNU7qjfI5W2oKulY2+8Iksd6nnk1Bwk8i0d/kYZJ9fDuAiSWYo
	 cczPz7pUBkXB9C9ckQAfuUZLgappNy7HiqRwJs/D59DGBikngXlUVAIj2lsk/PiKmk
	 jtwhzJNPXrNNsrowLQzPSe1Thx6PZaHVA/TjdPH49PBPvXsuLJpYnTBisvZ4+8eRR+
	 Ok9OgSjyUfZbQuMEkI6+xL7/HtRUqdNyw8xu6KkQMa3rIHmM/ZK1hmMDqm6vo3XcwD
	 QLqMa7IdxAaGsofrF2vmGaWkW2rlvlL1WqlU2EEWpQ86ffcUczXldVkIws7s65AGcU
	 xLVDYJWa6MFHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE4EC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832283370.26746.4516231953027451290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4896743837644a82ef3418f53edb62d10ba3d5ea52bc23bfb6792799efb6c9
Date: Wed, 02 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788322833
