Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBA33DC4BA
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777901854; cv=none; b=P0P6CbCiw/6jHK4yVkRYTb0HM0kclY7tMQp0bu8fERHyk1c6wLKQMa1/cmwIJ+467y4FygsssuvZV9+1+1Ctku/V0wK9HJ0Z94Iv4xMuipsc3azItxViW3aWwdvw2HgF17iozgFHiCrOP3nYWFJcqwGokmDkFnOCTr8by/V1LgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777901854; c=relaxed/simple;
	bh=wLH4SLqfAPu9NxVsckXPp8RAdzXW1koUkHDlKQloiek=;
	h=To:Subject:From:Message-Id:Date; b=XKqZjOALnS5+nB7aYFp+LMOiqyoAtuifHUnImvdyZQs4cC6/MBuA7jbYvaEOLovQQDPwcGveZEW4TiNHOrZOV3v1wxIrAYb1g7+qmeI/KlJwyNGHAAxLGyZ8ddWmUHSKX+37p6JwmO1lG5x0B+GTeVcTonzMUzMWWj6bUavE1CI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5aNFNGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5aNFNGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA91C2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777901853;
	bh=wLH4SLqfAPu9NxVsckXPp8RAdzXW1koUkHDlKQloiek=;
	h=To:Subject:From:Date:From;
	b=s5aNFNGsIygeQRbBoT2Jo/IH4xOVtlMHxprBpQaS2yj/nPeg2soBCN6IWMDfCf1r/
	 cTD0lNSb6djOsfxPB8Z0jm5irN2BXfIiBm57VcU+u9wrBBdUV5W6os1ucb0OGRWyNN
	 wBfvAUlUcialpSr9RrRQ+YDOrjC6wsdVDFVFXQxH9MHo+d3lt4zc3cEuVgZe2chu+M
	 TGIiwUqTHlzJ84LLAiESrGhs4QsCPepARmv5bdlyucmt9+ZgnlAgN4EiPdtFCyur1h
	 UaS0dEz8rewA3VaYbFrDjcSnoVXg+j1IIkPLOKxn7FW2eXRrkd3GHUKmcnwuOgStT1
	 0burw0RsYlA0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB025CD3430
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790185368.24810.13344705729328039392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb774200cfdd748bb42c62cfcbed78903b9ec80cbae33e32b9cbed7fd080701
Date: Mon, 04 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777901853
