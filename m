Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324382F4336
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751465994; cv=none; b=BRswOq/z7sCOuzfhRTBiEWkT1y8PVrSII+i2xp972k6uOuR43DwTyfU5gG8nHn4+Jrd40pAWIdnSwTk1bjPV2f5kxxBIWMlqGLC5eqRWVw54UVbuAGDsPz+I4T69jtKfffrLvYwf9f5ZF7DdvFlqa7Hz2m0pM6EtoEGWIiiotvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751465994; c=relaxed/simple;
	bh=VcUQl4rYSRWXOXvV8cMCE6KXmYzgsjfrQ8LlGddvDyY=;
	h=To:Subject:From:Message-Id:Date; b=p/4wAAC1xWhlZRfHpLFgEWmzm9gCpsLKmgcXvVoE3mG7vn+ORvIDlq7z55GJSh9/hPLIlptsOpu1RZZD55yEaQcqugKIwxoqIgXm4ldFFHc6rgmAvtn3heuGV8WvkN6W5k1hxUVg16IgH5fGiLEQfkvWmd5LLeaH+5t7xMTcf1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8RSLv/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8RSLv/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA78C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751465993;
	bh=VcUQl4rYSRWXOXvV8cMCE6KXmYzgsjfrQ8LlGddvDyY=;
	h=To:Subject:From:Date:From;
	b=O8RSLv/UnEIeP35WD3HV/Wu6RuXJH+BmWPf3dNdlRHvrt+WI8FbZX8xfn4VCRpT8U
	 kGi3De4v06dVbJEBqRgbTlQogqfiChO5UwFSjP/svmlO30sgitKDIc/w96MM3Srm9N
	 23TfharzNJKL9fQR9xSjbmydnjdgph52A+zFtpKt+ulCmSL/z9Ul+Mpvga1qvqO0KQ
	 bonyxIKCTzxBQwZBs05g0WFvGBG+H76mpEPk5sGd1MBiIm49D24CMhaV7QklaFzD4N
	 Fz30gkcwx41Raqf2NIWGrPGb0wrDoSl45O2dLdjuVVL6k69/2W4lzKz3UAghNyJ4fJ
	 pTanYikUdJy5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F001C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146599357.26104.10423690493522684525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e28804356b4f59e8989b2a3310f3f2c3397d8d3f309abad5b2df202e517b40
Date: Wed, 02 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751465993
