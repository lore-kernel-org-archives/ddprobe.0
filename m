Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C891B86C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782628114; cv=none; b=STPegvju0+M+FzlHIVD4uAnk2ttMN3pxuDL487vaQMpEkmaeI0Dq01trAPGEmMYgQy3IyvyTtVZe9H64ouLLW5iRp/Dbw7yTEpu9owTeatvVMVVcnSgxUZ2OieqeUqODG1HAJsfbGP5XAAbZd5YGKgYV9aIzpNIGa5NvZUEtBYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782628114; c=relaxed/simple;
	bh=X92fGIydD1054+6vt6H/XnTpUVxqa96LxjDqJ4v7YbY=;
	h=To:Subject:From:Message-Id:Date; b=H9Ki/h+N8+Cax8RF97JsXEKBSSHzlXAAC5/QIQIx1MgGGCcTPlhqmgWaKwWVAP62Q+dCkls1+bHwTxki1UmHbxGfw8gGyDkOl4YbdaFXcWgbtO2NENDX38nJiP45j9EbfCYYVwAIYwXIwNi119iERny8Sgcig401EyiuOzHHzBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nyq5gN2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nyq5gN2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D0DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782628113;
	bh=X92fGIydD1054+6vt6H/XnTpUVxqa96LxjDqJ4v7YbY=;
	h=To:Subject:From:Date:From;
	b=Nyq5gN2kJn3f9osuO0KiqP07lCLphYBK+zKXMSu39ENGvTTtXeFRV4IOzg3Jhvy9j
	 55/nckUH9bvGTnDKF7pLmwQc8y0rWZTyHdxubekoYJhWtCCqwhdlh/geSKbz1oEBIr
	 Xh0v6FAxacGq5OQ3GE7SxNJF+uJkj8OTYr0ttjGO+Q76Fl/TCMkBAtncYgooFHqljG
	 gO1cUshLhEtkBv9pcJy2oGrsqnVOGI+RdzHiyuOqrPKCQexTOndTpT5sJErSgIm2iJ
	 /pj0HEwX4V+0G9LcZ5nFKwFiXTUlXpH47fW0O9dln5K8lAYme7YoTmu63Zqmbp34B8
	 fDFn/zPfWZPtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D7AC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262811370.25510.15709257759116613440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd24e7e3d16e89b0fa2907fc0d0ba1af3cebffab3e4d6e350d2f64460d422ee
Date: Sun, 28 Jun 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782628113
