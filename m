Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6FE1F1932
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767555834; cv=none; b=nojGrtba4W6PXxYnWwA0lXZB0VG8noaGFMtGDKCWZ6vshTDSVwVlzYwzWkwSLg9Xsdn5TUJ+578FNK1yhE1+NYAiQmX1P1GSYN55d3DTB8MHw7Tq5ixwwaXPVyjERO/FNs9WSdQWj3NYayozROoB74UwgTcEq7T007DBXmjEt/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767555834; c=relaxed/simple;
	bh=pVLNqlJ48ekhoTTESeori/zGpWzQD6aanglC/d831bo=;
	h=To:Subject:From:Message-Id:Date; b=GGodDOv0LIWUhtsTYUY/AUVuI8tpDH4mIHbjW+/5sYoISH2emFxPmiu6ofdM1Zb6arMUWJmzru38UOxYExsVVEME5/8AwnPFkaDoJLtkMgH5UqfZzUCnd70oJ6q06Bcnz79BRTG9WPW0f9Pzq8tdCUxfuLsXiBaAv6FgD09bMLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0MdS4yP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0MdS4yP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09DCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767555833;
	bh=pVLNqlJ48ekhoTTESeori/zGpWzQD6aanglC/d831bo=;
	h=To:Subject:From:Date:From;
	b=A0MdS4yPipTdmYGCYe0Wqr8VoVLQ2HI6QH4rhFCvFPl5+b/KyyeNhNJX9STE7NATI
	 RZ9E++V11PNgSBwsA8SH5YG0NHHohmFilzbk8aWNqIPZeBLlNYMeiUQ6xq3OXhF4a5
	 9Wn7pc5M/qmHPGvA40LtGhnEBrCrmp6SpHkOyB9FWOlNWSjSCdv9OgMXNJ4puKW+eG
	 2fL14B8JdNw6JnBvxgGhZOfkJwSw0xTm2zcOKFNikDOiozdY2UzbS3zClULLyX38fS
	 wl8YVeJNEzc+d9fQOm8Bv8LP1XIJmiCl6666iXptfC1RCPrf2hwGxBRc/Zfa12qnpc
	 QSWnBtnVGz4bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91253C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755583357.7075.27181162171397399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7696fc158035b25412a31192584e2b5db8e5e80ee481947173619879eb19bf34
Date: Sun, 04 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767555833
