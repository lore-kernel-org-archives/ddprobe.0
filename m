Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492A53CA483
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781172394; cv=none; b=I2/tF1dQ+IlLJ1H4ezHd9fVeEQAceHyOnyL2eS0sdlkjZXjzn3vbhJcA3QjoXl91UUdYwoFPsK+WvvSQ489DPFpzJ/HH91S1qhH8zCb6BWCkg6gAa7SMRuY0YQL/ddjRZcHs0UwIwVcskmHIEFVgKGxX3PP0oPx+RE93VgpyaqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781172394; c=relaxed/simple;
	bh=0ieaiJitd1gBYowz1dxkZFzbVxWGPSOe3WKwkymxuZA=;
	h=To:Subject:From:Message-Id:Date; b=NHNHmecWaP36bfTEieY3D6zDgCFmuH/yOebcZIfntksWnu57aYH/7gipjHgU13SXFQXiNd58sSpnro4m6ENaijegQw30uzXUc30bj9wGmq7dXAVxprP4L0zbZ71BFreJq8zYw5Mgo8L7fEdv9i9MZvFQdypRQ5j468yfFk25hNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE0F9CrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE0F9CrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95A1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781172393;
	bh=0ieaiJitd1gBYowz1dxkZFzbVxWGPSOe3WKwkymxuZA=;
	h=To:Subject:From:Date:From;
	b=GE0F9CrQXEGq8jlspm3+TlIHmJCjCkA/V5p30PgJpwnIo52h2NA8+U1cIM9cgRV6J
	 Q0IZhkUZQyBHhfcPiQaqq4suKnrOcTwDVFgS/hKzLY4etyeiRjmfJ268O7ZvlHLFD2
	 ue8jk1rmo5JbIVIqCMIELOs56pnl0DQ1FE3cgM37DtyH5pwdbMTP84aeL1upnI37ii
	 7y/EFY2gPrcXCCaGEDOAmvEFkG91MAZb2iS+fPWN0lrdaGozEcsI7H18IQw7dCNf+v
	 em9aEEjuJoEZtgaBNlQM5uq16Hffrg+tEr2Tx9QbwkxGGaF8zIRESUqa5IHAGJxPdH
	 Vmf/Km1GPhGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF0CD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117239368.8949.4973647738123370441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f398956ae2789dd57624da27b8a43ced37dc2f960e57e5f7eea745463cb75f8
Date: Thu, 11 Jun 2026 10:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781172393
