Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123F14E3EF3
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790780436; cv=none; b=gBLUly8vYQlXMGZy357Fy3dAcK67o5H6rrJLurRY3MDBcDsKDmlHe89M9ToizQOfiF+1uJGcYm38TPN8xa2gJQLhKHZf31l91sYHLMh9n3KL6I3/45gmQbO1NzHiEDTjkGJpj9CKIsP/3kq/AyaXlB1sJB1VuNezrTduIvcSfMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790780436; c=relaxed/simple;
	bh=c2MhDVaBMK3MP3MENoEBY4NEXYBoSJbl77ot2OkL7F0=;
	h=To:Subject:From:Message-Id:Date; b=ucWSG5sPZJShgNyMirnLzJtUrT9pB5dxR36Lvvq64qXO9aHyxVYoiiYW81wfsKuX9AYoNf3tjECqoylWE2qlUt7G3yK0N8ehx3niYOmSStL7O3PGU4RxTL9sHl3xfZBPQ1iJ2+I0GPpwdcPjDqwYWJh2ebL5HBFltOJUy0Lxv8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATBC0vgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATBC0vgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1E6C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790780433;
	bh=c2MhDVaBMK3MP3MENoEBY4NEXYBoSJbl77ot2OkL7F0=;
	h=To:Subject:From:Date:From;
	b=ATBC0vgNYgD0+qiSrv444xmSSbFJadVvp6/IpYCCPwMSLMf/JAkLmso+L1y91NzAP
	 rs0TIVangpsQz9gMheNPAfb0yIzWWkIlkbWQzEIRD8loKxXG1Ssty41H98/XSDnzls
	 bee8G7yRyGMOPk/qbr/oTBQwNRGFOLVv8Ldg6rIRve+ObXPviCk2Wm38S21xjDkKjJ
	 NCYSxDEiSyjjeLy2Zecqe2VY7HhcYo8a2ieUL2IVoGduX1EXARaLnv4+eH198NnA7t
	 /se6166RnXwa+KuYRw/+K5CwD3kyI75G/T093CNqFO0uiEygKzdpFZPZcI7cacPsjy
	 cSh4fZ4/x5HDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC837CA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078043369.2814.17303734482294728253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7debf5d8b421bafcabd3cba2ae3c015651fae3914c56d1c23525cd3b1c8fef3
Date: Wed, 30 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790780433
