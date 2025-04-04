Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AEC14831E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743811194; cv=none; b=RCB848vXiwaEcjUeyWo7ABLS4AZCt795IMIXvX8+8LOheb2XqTj/WsSmlZeiQQWIPARb/mXop3brWHuKxtk1zRL5pEVM0P7iRblVTXIxIqKYpagxpenpL92fbua7gFJndmaJN2lTq3TgzU7oz/LSx9ra4j+ugPOdGHFinAFf2Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743811194; c=relaxed/simple;
	bh=cn9VwjJpcSyc8MG20qxBp8QEKUugRgmuLKB2Rf50r2o=;
	h=To:Subject:From:Message-Id:Date; b=dToBJZl85tv9UzSbgdLX7SXQ3ukRSDAZw9hnAEd38qcGPtco+krsGfwZpmO+wKze7T6tx6zoN2lfcu4kHPN7KYDfSFtDcUComk3SzYPGiIeVgU0nzGqo4yIL+6LTkFq4GKk8cz7Ecw/BjvbFV0k77vbtY1+f2qM3q+0vuBE6asA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZ5dtxIu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZ5dtxIu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E9C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743811193;
	bh=cn9VwjJpcSyc8MG20qxBp8QEKUugRgmuLKB2Rf50r2o=;
	h=To:Subject:From:Date:From;
	b=qZ5dtxIuMweznMSUB+mVvHlDtmsKLcjpumw4Egp66JOKIwlb7NzJTVTyRBD62jy5a
	 Z2qrWW07gWU6WTiMnTDNtq1KG9bLPOEEhOqSbeDk5dRxu2zjCB5L6oagjmGSKUdppZ
	 A/hOfrHV3ENSSF9sIsKLVkTkeoPRSjeNQZIUjq8Q9eSlEla49+Pgw+mYxIUFCJtcqT
	 YZ/KBMKoyPm7tMKQI+1dICzVLXXK0NAFTnE25BYkutLi3AC67Sa/Br1x6QnSCVMbTl
	 sjAnJU63OlNBXNnQSssoULq+EQmyAIiX8cFaDULCN81/fEILN1+jZyAcZNHqZlFUxR
	 LAz7pDrFKqeOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC6C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174381119359.5357.11765769707862488869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6e9e116b17c576052f085a8d2cf8a65b1bd14e3e83573b9c883dcf235000f0
Date: Fri, 04 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743811193
