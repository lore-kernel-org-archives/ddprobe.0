Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CEE15A85A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775867254; cv=none; b=dREmFbBe3PsCNqZ7uKbaaug5Fk9Cyzg7Y7w6IAy5L+Dll3X3WdJGzFjmOwntzcwTqLSWGBYix4nKlNg+xywPL7ofjAexIHkqBpF/X9c3pnZKV78twI7ibb5q2v/C5kpKah7h263wus7tzABSX1VZ6+pZqRZ58jj5S/7Prs0joA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775867254; c=relaxed/simple;
	bh=u+v7p4265aSJQRZXhKUx7dP31ZWERbsAQV5jESOc1GM=;
	h=To:Subject:From:Message-Id:Date; b=eeVZ0SoCqOe9hSp9Xf8kuypoTqZILlg8hx1dm5f4sNpduw/klWUcGFezS04s/mul2rfG6hdiSSmWjhKI9tKatr0WrvFK5GGxeIM/oJRFao2bx9/aGNc+V1shYu9ANGJFD9v9V8UpOj3OjBb+QGQjubpIw16Q2/l69w5uAmA05YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKfQ1bXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKfQ1bXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A0CC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775867253;
	bh=u+v7p4265aSJQRZXhKUx7dP31ZWERbsAQV5jESOc1GM=;
	h=To:Subject:From:Date:From;
	b=GKfQ1bXsMsK2ZI1UXAoG79ZmAECfaUBiyyEBZejyC6t1X0HPj2L0uZQ0dDM08kfTj
	 91NE6tdjQGcy2VHse869dO5fAVQB9SP9VR5UXnZHO65Ook8edPkVqOatwboId8RSuq
	 RPZYWy5+3rEtd8+MXFcD6Xhb5PsX1r/JsLYbhpIAmrxWPqV2w4vgbJOteK44oO03nc
	 TAu7B+JVeYmj6kSC8e3PR9esfhI4efW8Z7riB+fW6XjDWCyxGrce2pbFkJ9CR4wqOU
	 z/mxvmQPNxwwWgt9W9yzZTWxSLVNTXuBDEsIqC7lR4kVwZYpPkq8p8DHZNz202EjgW
	 65zZtJZPOy9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01C7F45A13
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586725368.2733.12388458404133924043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef276541807d0838299d97da5106be8ee4a3cf554597ecefdf921164290ec7d2
Date: Sat, 11 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775867253
