Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B31D1898FB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784254114; cv=none; b=M9HH1MW7kiW9iQGwQqvPIkEWH+Y9u1gCpKYojuWrn4+OgyBjHsNdMSvZabQXWtHbSCoVxmyYirBb3KVqOQjjzHoWZVDGk3pHSl2Rc/U9AQey3UCj6D8kJTZ12YO4Ooe28R5TXTv5Ue66Lh7HxOhaXkqwyz+44vqPTTG+F6X7p8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784254114; c=relaxed/simple;
	bh=2L43v5aKzExZP03YBH73eUO4mn4EEAo8eHAyuJ6w9YM=;
	h=To:Subject:From:Message-Id:Date; b=MQORTZ6ngM2NecMY6ke0c6XZf5wRFClEEQofT2mkzDIBF7hMtKjo9Htc8evpZlaziITbslf8oIOl7YOcuOzlzsNhV+pXnBpudPridUOurJf3KadGm3kPLOA2SDpWNC4mpCxlQpB9TVqrTwUs6GLxCV/f4eEXU9DcjxGwHjL1Oh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtSS5H1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtSS5H1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3536C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784254113;
	bh=2L43v5aKzExZP03YBH73eUO4mn4EEAo8eHAyuJ6w9YM=;
	h=To:Subject:From:Date:From;
	b=DtSS5H1C6nkkqcx+Bm62MlgyreUM4pY28ujlDLnxoJSj6hr11e7cLYYDU1fs/FEXy
	 uC1pzjUXMT7btFsqhwfPutx6xfuFnzklvy6M4gfRMoDUsAg+R5Tto7BtBQBJ+jYist
	 cijJznh4NG6LhkcZrdu600Jax0U2YYSTNSUVxlxyx3T6Ubl0qVwkUJzLqYGmfWKPbK
	 ojJjpxu6+t65nJepRjCobG5I3ZtklcFsAVhjS7WWQg53+3osTvzotfzcw0gZQaWtCf
	 UQrJwAITjzxg1fSLas7sVGF66JAYWTn3mGNgp/KdsXEVMw58636J/8lCx4s/btaxr7
	 552/6FO/89/6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B156CC44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425411369.11777.16841318245298292610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b2adbf46378928d52c67d82b46933e81956e63aec80c800489e1d8c972b02f
Date: Fri, 17 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784254113
