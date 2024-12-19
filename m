Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7DA5FDA7
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734645954; cv=none; b=pBUcZhl5wRWQmIzcOyma1QHyww0WFPQwB9njvBiNXP4XbNLLO8Kry58DihSAIAHrCxpHJLchh0HEgrIMtf1ETp9TFPU6CFtiwPsuJDGaWHZ8HrorPjY60ipWL5E+E8/iIdTazv8iamPMtCctLrhV4YeXaRx5B2AVPaojm9V4Hg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734645954; c=relaxed/simple;
	bh=FVPY2ls9q+Qs8dRHhkf7xPPY2z1KwGgag4Y8DhWaN3k=;
	h=To:Subject:From:Message-Id:Date; b=mRtLpUArS18Ixkwws0qI6IIK+UyH43Xf2LOl3vVa3FpB1lwPXqs8sgUSTbpz9mTOtgA9Ff2Nts8j1tYJ9AauHx2h1toWAJ06rpsCqtKs+zjDxmPQkMhi5ZzvNLtndZBofo+deiVUEfh1ax8HJnvReWBNTUu6lbg6Z74cjnKJtTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQig8E8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQig8E8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1835C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734645953;
	bh=FVPY2ls9q+Qs8dRHhkf7xPPY2z1KwGgag4Y8DhWaN3k=;
	h=To:Subject:From:Date:From;
	b=MQig8E8KLJlrLvFvaSvNIAcVc3D1wvms4Xv7MPJx37BUAqvkKjgbrsVXHTDR8mBoP
	 R5EglEOBeIGL6kXvmHKZ/TffYH/XoOog24MAgy5qnmvSZrVraxDf4+8qRQUd2Ew0Vb
	 sscwZwYDwGzIe4jQdUvdQWS28MiGIWBRW7EuT2uf0gL3do/g6JZKSDCE6xKBLTcBM9
	 Ol9z3QZwQLbhmXL8CD+f4OY/76OceF/Pb81qE6Oi18FxhJRiK9LMQxG9pjW7pNC44B
	 8BE/3v3Qz1G8A1yyAxns+WfNFRYz7AvlpFxEFpZJWAGHHuyReRl+oe67B1dBi8da8K
	 Ckg5GuvynHCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9B3E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464595362.7672.494474779187113467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87276a2a1a4cc0d98411d09530a052cf4c3059a03812c7e783a17d0e6fbd772
Date: Thu, 19 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734645953
