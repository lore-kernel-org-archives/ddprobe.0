Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC7FA22069
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705857497; cv=none; b=rtrPPVXLzVNOcoro9bdOTd8vEPRiooC3IqH7Tz8iOdMWAPq+cMiifPQ5wLtSA3dKIrFGrAgtJ+1/Ce+BsUeqwFNGflA7iv1du9MY9U8/8vFaNkMnlFUsDy3z+eANmVJsFE4+kIA403/2pnQ6W+TMDxyYfar0T86ssMQuPZOvIhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705857497; c=relaxed/simple;
	bh=0fwD2Is0bqLRLFaATTW6T/8kjDRNj9pHqlG7tEHf4Wk=;
	h=To:Subject:From:Message-Id:Date; b=rCwCIZuYUmBtWXnSslZE+TCOYpbrdyPda0elpFc+YgZl/hkNk3/sMgaaDrkuka9CuewUXnjSk98JoBpbw/y6czUpbgZeMS5q4ikSlvjV//YoFRJ3r6cw3X4DlkLoRw3FDj1QbIOuZ//K93+8obVzDelmLD7tcOTllwTm4pdOOqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpQdTyV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpQdTyV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73287C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705857496;
	bh=0fwD2Is0bqLRLFaATTW6T/8kjDRNj9pHqlG7tEHf4Wk=;
	h=To:Subject:From:Date:From;
	b=JpQdTyV2uZKxaceq4RjON2fWLbn3sGD0qBnbhPTPD5P6nq5Eu7Bkfw0NbM0fUgfav
	 EvFPmJeNlsNf2ImccItxTR8BAuUjOK3oIoTVejD0HB0QEo7i6PA5cwUKKUwyy7PvYc
	 MhFw7IBAAwnzdsbS+l6YjqX6SGoJnbnDC/HZK5ibEEtrzS+gBmxnDOqN1+qWxUUJ2Q
	 +z9JYmSqtYCb5xwcNfQO4rBmR+zldD7JA/W/fXKbHUJD5v9LkIKSrwI8Nab/Js6klP
	 T95zMrMz1dyAGva/VJeTM1Ed3kDsyKfV8q/21aLFeygXlvWOx1oPwPvZiPyiIG15sH
	 FR/w3WHSSQrBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF06C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170585749636.16965.8688244135362544013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb52f4bf28497741026bff652380d9d92232bba4830c451b0f997751a900331
Date: Sun, 21 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705857496
