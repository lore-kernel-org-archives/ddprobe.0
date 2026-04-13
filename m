Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8C127713
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776122254; cv=none; b=aV9cF2N99Wf6gTbyrdgG90bH+LvMNyeNK1Z1Jy/kysobxYpLKiZ8SS3uzdQ5svWV9eMQr1oSwynjZ1Iu1B96+UFEyRDyiVsVJIiq+GPHX060943mdeKzHfSswIpbM3L7FlzIqqw0FKzsxNDSq4hKZHRrApuyh6lN3l3P2vbVwJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776122254; c=relaxed/simple;
	bh=5t2YVE3iYRbouw7Dx/5FeZTfvAEpp/Hfq9zoioXCVrU=;
	h=To:Subject:From:Message-Id:Date; b=StJazjf3gXOnAuNUnc1p0c899GlwUDYPn7zrPs7ioi5b/0i+CUIAlN31edb4VXYUTDDXSvy7hQ1C5qh9lWUitQ3TA8+OPAGxx5iDYMf7jNstxaHX+yCDqbzGqDir1DwRfWyrOKDnDKaiK30bnCmiFYenT4wvs8ZRJNW/Ja5+KqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3gGA76G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3gGA76G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF82BC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776122253;
	bh=5t2YVE3iYRbouw7Dx/5FeZTfvAEpp/Hfq9zoioXCVrU=;
	h=To:Subject:From:Date:From;
	b=C3gGA76GIFafSKrqOtkvMKRkRrNcVKDa0vxFXlS8wY7BQZR5wgPMJ65BsNLMkls8/
	 Lq+DSM1l0FZI+Jj2VUYcCZPsnieRyX+6Ebvy5iKd018epqsUzD8QM4jQbJ3Bmo0pQi
	 h1xY+R/wxrH4qzVDKC5stBrauegTzm2MH+mSEtxAUXFZViZEe64aAhEu+Xfoedlz+U
	 4rkENkZraAEtVi31zPBANu/a+h0nTP2oP7p8Ci/WTZaahayRbECr6MvaJ0vIM/oO2f
	 jKsiq2wQd2xTM4VJGKR2jdtFHv+3SJOshUxh+HVQfGIpF8JtVlUtP7hHDadUzWDphv
	 UjQ+kN/xW6bsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8B7F531DC
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612225370.30486.11660940412024906387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acf9c547b10fc0d1d8f50b379b70d480d747568d2b5968ee40720053e5332c9
Date: Mon, 13 Apr 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776122253
