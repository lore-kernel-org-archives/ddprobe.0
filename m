Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC9C1FF1B5
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777526254; cv=none; b=EW3rVMvwVGD9EGzcPHS1Lsvl0U3KMIJgWCnSfR0hJsxoIpXMp6OYWte1VXs8ablbgnqnupeIjoBQ5NB1QmWYctSlohm6eybrg+sF1Fy/c+QC3zdoKfRL3Jzz1CRaj9kGVuTe4SZOwOPVgT11zHW0hokGtEN51UrMeKMgfqb9CvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777526254; c=relaxed/simple;
	bh=sM5Ajo/JBXv+umUs/f9V2wLe/4kYUZfSMtaJelmRPEM=;
	h=To:Subject:From:Message-Id:Date; b=FykUAOHZIPdKOPmnyMQCLH3vZu2kK4BfLGEdL+CpKektIUIzJnhG33cGjYO8wgpho3csG6kNq9BdFPIIY0EigYW0QASsFaR/JANzJQgo90o6foOZREZlFGtPCB6iRzE7WFsX0QwPlisK/OID0py/wGe9fb0/oBabqcEyrW/y4jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxAuoJEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxAuoJEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BE6C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777526253;
	bh=sM5Ajo/JBXv+umUs/f9V2wLe/4kYUZfSMtaJelmRPEM=;
	h=To:Subject:From:Date:From;
	b=YxAuoJELX13EPYGFdZGxjBoHqxsLXnqSKmyGTCpiDTQLRdV7NnQTqxD2Fs2TI8IG8
	 +hDSZ8+4d8DpH3GSHiARMFx1uW7OahwUeRiUIiWDDWD1xB3dbitCYIP+LHlSK2xNDY
	 RaJC3QPy+FcZGl7DlScTxk6xxmwNGlT4msJGTan+HG/yLWHyyVJ9w/fW+gpwpFyaAQ
	 gO8OBythG+J2XA9Z6hPId9oK/r9lnIoHS+agzJ7z2G0rllu+FLjcCkath0HHWlaKUY
	 sYNUkg771yRmQdEo9iHQ7zDlpupRMVd3De02Ii9FFlhbtoTHDKz6/PCkwDcRPhEs/J
	 PSCE5xOR520ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C39FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177752625368.25429.10496572800485559092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ffe95f2edf6081a3bebeddadb4db2dedacc8e41a8cf1265d7987b10f7acb671
Date: Thu, 30 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777526253
