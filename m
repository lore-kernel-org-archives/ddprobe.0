Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8D1239099
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771238694; cv=none; b=Aw97MFbrCtjtm9b+Tcg25Za6haATtCOgJms7YhnMUv0bzfP/e2W/gLb6CMrf8Oi627mYc5hBqde3nNrwyy26xx+4qP1U4u/zNm45qG3fnlkIIKYxi5fQQShHSd9r9pCFmhI9ZdEboSfpkbMXM3FXpO8O/2DgGCJ+IwOzvZdOht4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771238694; c=relaxed/simple;
	bh=N46zl8JvmOcGJeQHKR0eiNrZlcQIv7j1oIR5WB9MhO0=;
	h=To:Subject:From:Message-Id:Date; b=js/AsKKwuzRUko9LP98GivmXxwiRUiG2kjKsr882f1ZM7l4DmncwBMvFrEE60sElc1A3VNwd+eKhIxhjYKQwIdf826bLAyB9dKK9tVOESHqGi3pwil5nlrZmRAs2+Sg3sn4Q/VT0VmfLl3WqIp//9VVaiSohLDqgEPdwaTTc/1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkqHbOJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkqHbOJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68EAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771238693;
	bh=N46zl8JvmOcGJeQHKR0eiNrZlcQIv7j1oIR5WB9MhO0=;
	h=To:Subject:From:Date:From;
	b=RkqHbOJfrtWJI/PSUM4ZOx5OPQBmF6+8djEiZ1/1dweqij80x1ZKvsWZGqrp/c43c
	 LK4UZTMXy2n79hufGupQ6KudxKiXlyZoQ0LY12ZFZveibwoorkt14X0Gvy5klYfrmT
	 ly2iqQoG5PytxJRceIqHAmeXnzFZN62nJFoyNFVKFb6Mu4XIuET3c4G7+LMXyqZPTn
	 /XR5XAoI4xUPQS30kWHnfPNT1ZFjgk0Cq4AmGVKZ9pemYREmKqUvlunuLzz4i2mh33
	 pqWRI44smVywLV1sUDdA/V45KoAPozCEjvEDYDkvAxlMaf/NFNZ+YLo8DtiOLk51Xk
	 yfqH8Z74RY+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9459EE7BD8A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123869359.31401.5808646233904006215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11de111a480d2d32c63cf189b07ee7291b146031c4a4f01789bc4ca795077467
Date: Mon, 16 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771238693
