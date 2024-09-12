Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545326F2E8
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726128954; cv=none; b=pj9gapubbiL0pH8AdG2t7EcZaVizgJPDJyh1Zf2nqkbsS/wFBwy1+sD799JRsc3d0he5HqWJs7LRNyuiGh353FKj3LlU4QLs9cAiTfKglGImNOvtjLDtXBLNuJoEtgJ567+iuJMz3NrtM9M5z2zl833NLUkarVS7sXG3OwF9TBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726128954; c=relaxed/simple;
	bh=5r8fV8ExUlj/yMY+jebXS32BpiRJY7NN4FlQicWBKtw=;
	h=To:Subject:From:Message-Id:Date; b=avv9DTgksZnTgzrtBGI2NM4mheNzaEOv7fboFMYc6AIVtkgVoXw+FSmdpPbz+RHY+IuKFoS3FgDzy3f2NtmH8onW5l3CBDRekXPOw3BR4h9i3gCp4KD/FGl8tg5c/dbf+pb97khwCUAjSRLdoB51mPRyC1mBva1KvdMhnzh5GJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deIjXH3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deIjXH3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7940C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726128953;
	bh=5r8fV8ExUlj/yMY+jebXS32BpiRJY7NN4FlQicWBKtw=;
	h=To:Subject:From:Date:From;
	b=deIjXH3wYciTr10Pze3z5bSHgiDFSgpuKMFVMV1uxnrb854NAHdSQINXdn/aSjAQZ
	 ajcv7b0J5NYlCShsghi+rEQ+4To8oQ3uBPqiUyKUXQ+P566ZVNlcWN4T1YuDKanKvJ
	 X9tlsBY8QVaNPHstLEmEyRpu9wYYxWJl4Kvwx55q5qMgUjY0BG+eFlXafty9bvVAQN
	 ppDy27QUgMSSlEvR1v4boz4PlCKBbTdArQRCxNEkoGzXyiJvP70tNYHty3USK0HGUi
	 NA4GXa9ABPdksK2jrnzG1O+jOomPCA5K/h9KdIleaEJVmmNFKkJWO20eaJlNO1fKVc
	 mTb3MTydNXe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DBFEE645D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172612895359.14371.2864409983160753442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8ca207c348a8224ce3861be12fb2e28d32ba002e52e6656942b6b68c802bc2
Date: Thu, 12 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726128953
