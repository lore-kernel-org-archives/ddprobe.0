Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEF62853F3
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778293054; cv=none; b=VuYp5rmlrBCx0PjVTgLgvzy8J+cTP2Qu1DdQQn33dCbZRdx25JsYBNwRTKLx+yHL5pxsGCIk/J0JfKm8Z5AfHAM1ymg9zGyMC+vdr1kudBcACZujxTDdphhRUsav7sMwYydZw8+pN6ZMHIBXI9x9lRCnuwrr/VwdOMEAOk6bMeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778293054; c=relaxed/simple;
	bh=LNyHmL8Tr+SPndM7iODIkq/AttQcrEE+gcdX3jU3/6s=;
	h=To:Subject:From:Message-Id:Date; b=LQdfzXaYCX+Ux2HzHcZWA5lYccpN42qOq/IXm19n4DQV1Apzn5z7fZzHKqVp62KeiPz+LDYNxk78UU1D+Mq9Hlzl0vzYxhzj3L1klNzbInh7YSJNCA0hGkUnCOjjstqdGY5LY/LTZeN9IN1vT6cdcspGpTgJkTZFkFlG4LbrwcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGZtEU1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGZtEU1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2AE8C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778293053;
	bh=LNyHmL8Tr+SPndM7iODIkq/AttQcrEE+gcdX3jU3/6s=;
	h=To:Subject:From:Date:From;
	b=NGZtEU1zW00j40o1TSGnjG63R9JeizIJWjcYseBfMFG3ybFCseYmyF1bF1mG4B/6c
	 5NrMLIGOY/4UKUVnhiX3UI0ADBebTNf8wzb9qCgXhXM3engEhoGioSVhz8Whg3m58V
	 T7trBdK/4rFxlT2MOWpPGWT53jKkwPh0aA/9tR0BgFJuLmJxR+ADgmiRud0pl5nzqS
	 lU99+1oDfQiGnqwZa3rjCKA9+MVOLf9qN5Pe/StJ+auA5Jjt2ahplnqQZx3jrJApyx
	 HyVWcZQZLzpgo2esLkLv3d97n962v3nJ/BmjTQeA/4XL9mVDKqkJQXwZdoSyUBfBJO
	 n0l9mfhC+QxAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0182CD37AC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829305368.11134.1043060368449807255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998bad6ea478ed4aec5900d006392246bef57c7022787cbec6e0c5deb8e39d0b
Date: Sat, 09 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778293053
