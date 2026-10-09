Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3F12236FA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791518434; cv=none; b=kmbyntWbOJcwn925XX7P4CARhu1m9oFy74sD0msqv4DnapIKyBNbxFk5XazW+kZPay6av8OoOXUqL9cGNg+nQy+YNh1wQgbWdopa0oLrewoe6/hH7mD5KaMBfa9mpprkEh89zywc1L1sOwrdoty5I0WwpcA11shpIiW+X4A8ZV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791518434; c=relaxed/simple;
	bh=Tluy1r2OljFT+NrgtElXvXs4movxrxjVdIQHv4/bjkE=;
	h=To:Subject:From:Message-Id:Date; b=FhM1lSjyN0h5nMBfgxmTyC1pMtW8Sb2ZqLt2T9/7zMSyZIqPhzWP5XiYrR3kSOm1VgoUa6ASZkIbOZNDyT3yGlqYx95OV9T5G1VrNoMmjoVHbDzjzGE1Nzhk6r+70v5ml8ibZ5zIaCRM7FNzA5gzrjOuV4/dT9yhKAYR+XHmhmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Il/kG/OM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Il/kG/OM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32FEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791518433;
	bh=Tluy1r2OljFT+NrgtElXvXs4movxrxjVdIQHv4/bjkE=;
	h=To:Subject:From:Date:From;
	b=Il/kG/OMn++XoaJR5is8UGnerxQPGk5IfQxjtvPTVHYm7yTWzZ+Fsx9qoTmqwRTUn
	 erGh8MsSrWb+A400XViC4/G/VlWqJdtU2KtaIoZcQ+Nn5wIEuHyrxr0IfpkM26G3S6
	 +Dj+raShEXScfdDkIqXORxCaPymNw7fU+yS6huNtqWORpocQZwSdbbIQfqq4MmvAVf
	 TD8g/QeujBER4CylB3mVGdiTlONE9naeWjnd0gldbTZ17/8R38LEiJc5IxKPS2r/tE
	 3Tg9AIjvktRTyuSVnT42l3t8R5rLqmFWS9LZ7NmHKETFeRwrIMaGfrpebpn7Z08nOI
	 hWCiL5oaLK7yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD387CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151843369.14739.8502736958596668027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c519d4d49095150c479c98e728e10ffc8537b7120ea9b86a87020f8a06c9415d
Date: Fri, 09 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791518433
