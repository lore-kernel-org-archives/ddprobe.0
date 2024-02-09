Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073ACDF4F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707512297; cv=none; b=WqagDGme2C4Nb7s1q1MLGDTjglk8Ox9yFpTkbSLAuN/SXWPdSgzCp8B02rNXo9ZvowSJ3kYU+MRY7MyPo9dFCOosQrza9VEfqhU0rI4mJnmOwMNECU2P56zumfTex+PmfSyj7RV32EcyQCBffRmpAuadFyoaVqoVym0JhwyiYgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707512297; c=relaxed/simple;
	bh=pb6elpd8AVW0pNAPytNzoLPIdLDbl/lpr0q8AecZSo0=;
	h=To:Subject:From:Message-Id:Date; b=hWsYuBVXuWf6G0Rml2WAQJMIzEHNdOnoA+K4BxHz8MucB0+C9qWpFAvxGV64ZzDe8f3iadyfkLjzTlRj1MhGnwwRAXWrvlVFLObjp2vL3jN5woJYdDJFJGV0Rh+Qn1XFbBexqEEhPN+SocP4Pi0ZXxMjoToKe0ZA9YsONdaFfGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhFepV7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhFepV7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86200C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707512296;
	bh=pb6elpd8AVW0pNAPytNzoLPIdLDbl/lpr0q8AecZSo0=;
	h=To:Subject:From:Date:From;
	b=GhFepV7uGr7HRYtPtccy+OLChb4CfTZTF/8k66oe7JL3ggdjqa33OgQ8Ka7EjJjFm
	 rJH4epxkPrIEMHPVj7fOZgZEMMavtLs62gejccAfAzPf6koFtaE0yZWZIjDKWK5Q7X
	 cM5ODZ0jNsfNTqkwsV1MMxDt8cuH2Z+R0XpU7nTkwckg4o0eG+sCfAkxRxdbfeZ8lk
	 HenliqGggn/1mq6cwD1sFQDvCXPpSLrCbB8EzxRVKtktCZP+tomDcG6yjYtRGL+cFW
	 /ZgqBilsJT/bEA2aINb2PrqjFDzlBGao4UOnjGZw8He/tw4BHBh2yUo6wRCBVUL3Si
	 RRbB7C699a3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6A1C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751229639.7032.3171873314065755603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27207400486432fc233c9b05c7054f11ae980c3cb1b959688e2ece79a7f702bf
Date: Fri, 09 Feb 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707512296
