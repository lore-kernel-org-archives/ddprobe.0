Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EB549B1F2
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788286834; cv=none; b=Cj9kg/rNwK031cNGgNkbtBYd0s4pvDLHfn4INhZmkw2baJ+yTnrB4SJ3HCuuPJ1KRme6lctrBTw/RvrwI58oQ6rTt7wgkQsbcOaHyxhqiaDI+UGydNhD4FAldzF8c6dBJ/zAxCYDhYspvpBywJft6ANrefUa+/i6IiMKGoCDalA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788286834; c=relaxed/simple;
	bh=jiYUWUpJ2MfA9h7Knw2QwQnG8CdN42ndQkrGIm35UG0=;
	h=To:Subject:From:Message-Id:Date; b=CUyBm4XkDaftegOcxVLumUrz/cFQfscCeTNDgHpcX7AVwn2aolYMR/lJ53bKk2/vgnvtp0qwocQlevO3TozMBIwAuEZRSqZZJGR+x8/SyyiUx+q/gFDSgowA6ffYhpU20H0NKLi0Pj6PUECMyw2cSogQ7Jc+lYOKpdYBsQjZcHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgbgI+GV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgbgI+GV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788286833;
	bh=jiYUWUpJ2MfA9h7Knw2QwQnG8CdN42ndQkrGIm35UG0=;
	h=To:Subject:From:Date:From;
	b=KgbgI+GVPspLr2XLAqt8U0priMKcglxf/zuteKzwOR1w2XjovzlNKDMppHdJDpASb
	 Zu8ZWv+NlmCBebh5REzWGC7vj0vzYyoZM4rJCDqOeHB2JaW8wyxgdpGjIIDuBJKA+g
	 /8GWfz93kTLQ2Kw7S1iGfOi4xN4J/ofImh5cXt+9gSgBZ1u2vol18fvemFqWcnoy42
	 avoG/TFDzjT+azkmdDHxbtshYAGEznCw8i5LjcI/S3FsWorOxsh6UDUwBhQvhoqavK
	 5tw5nxRZUCjZVxClF1pTXF8YsHWNO0CJLqhBnrJ40Oc6OHAaNs2a9XiQnLIg7ALYWy
	 qzCzQM+/FA8lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA23C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828683369.1703.17044332808020056303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1c9e2242256fb969f2f1ea3ac883d97ba3b6e29bfb28460b6a234646a0a064
Date: Tue, 01 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788286833
