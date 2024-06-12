Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCB317F4F4
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718204303; cv=none; b=ENMnbs8QPam/mKPJARy/sGWfOIp/X1+x50utrs4tzvgZyJv+2Osq7nJo7gtoSBePWQcxWmYslwEbollALywtVL73dr3AKUtLsH1kFOPGJvedHosXKWbZn6PuzO4R0NkpBNbwBFuIPM2cNn4EM+GHN1uzVBCP79plqea2hJj5jrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718204303; c=relaxed/simple;
	bh=vUbsm5pyZ++N6h/wCxdF99R7L94uEMFXX8fCbImfRe4=;
	h=To:Subject:From:Message-Id:Date; b=kygVr1BDaM0ONL68VqaKRw2eEAKhO1DB9mq+l6sER5wfH6IZuGBZiTMEecnnMliNI0tinODd/kEq4IC8dQhmBdmkKufsSCNIV07gpJKH/bk4erw5nBd/2UZnGYr3EKcPrZbbeUx1eiql0Y734Qhh1E05UyBCXdUS9YZUEL1p+rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roJWH5vD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roJWH5vD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBEDDC4AF50
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718204303;
	bh=vUbsm5pyZ++N6h/wCxdF99R7L94uEMFXX8fCbImfRe4=;
	h=To:Subject:From:Date:From;
	b=roJWH5vD5ds3gOdQz+36j+KZcez/+SJw3kMzXQzZflfRPaXX9vMHLV/JiPTC1iFen
	 Yl+dNhgp75nRQCEalIhVMo5PGZcSzvpbkvo9/jNLO9gcVc8qriGve3xZV5WSocJJXm
	 zbeudMCPWReA3ex+Ameu2XXKkMglOjFr4TWL1IFneN5f09gxda5mqlHO+0xxN3L2qZ
	 m7CxSbHWjnCKv1xZM28BgEmgr8pAVBx/kvtscOm/Wi9NGj3vmiRFuTUwkB/64zJTnn
	 Fi+p8X7toku4GKoPjZHkoWkbbrhiGdTYrwoszTH+45qWVSNsshhrTjZc7re3EG8B15
	 ss3YapXI2Ilig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21E7C27C7B
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 14:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820430284.4760.1356333740264595832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91380c781b8d83e1025768fcfd97a9c1c75aaa038b891f69f680cbd728b96abc
Date: Wed, 12 Jun 2024 14:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718204302
