Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E59741B34A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777486055; cv=none; b=uPtlS5R2H6RkhVgjLvPm1gK4NPfG3esJM44X8J4B/lVs84MT8N5tx21drRNP/eHAi4riNB9FMtkKF8OP+mEQ8AWJ9EBYjq0YTQVfthvILeH8EXbuY9Eoe8MyCKr0hswGfxX+7H+Vvq3UMKPxmLT+4TwOA3/HE82QtOw5WMhyV30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777486055; c=relaxed/simple;
	bh=OuT8jFbYSLI1h5kTbbqjLoB3+MLaZAn2B10u16o9qZc=;
	h=To:Subject:From:Message-Id:Date; b=nsgLAhSmSTfnmsVeROxvOHnX1lysbFB3F0Ctphxzo19UEDPEMbyrQekZE/fDsqKnas98D+Q8hKOcN0oiHjnnQxQlLTUq4Epipe1qE4JIBthU8rVf6ooyI/IXi7YpWbtdnDBVM8U1mCIpXngsFn+sew2Eq1xlvqZBiDxi3BqS4C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7C4SVsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7C4SVsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0FFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777486053;
	bh=OuT8jFbYSLI1h5kTbbqjLoB3+MLaZAn2B10u16o9qZc=;
	h=To:Subject:From:Date:From;
	b=m7C4SVsJY/pq2xS8B7gxsR85pFE/x7cllpa7fbMcAUClBUp7rB1C98ITFNFRoBLXC
	 hn1drFvzs249yqOm1uvr+WD5kvjnkHBxLzQRLMTdYrxPKPOtCQMxs+KuNt8FU9/HSn
	 FCttNfEeFxr2GT+q9miHSIbUMg6vT6amKPT9DNQcL5oZvffIPQ+vfKwO02et8hPmH/
	 3cmiCNCGSSbyoGS193uv+TyOA7Rd9qc39nemhnBs7QTYe2nhdxTpVQ3Ic9vths8n3H
	 M67niWaoW68ilBFYlS8KbLtAq45Ww0ipygo8dCQWTg3jKiOCfbygx74y05/DE3Furz
	 6pck2Fi7Kn67w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2B9CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748605370.28683.4477302386528801940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ec3a41b3b01131474416f06078ea7db531eac6cec698a1530aa862b8117ef7
Date: Wed, 29 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777486053
