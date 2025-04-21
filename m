Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 523021C6BE
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745278194; cv=none; b=fByWbppCTTkqe+J4xsqtAia+wV6+8Adx5I4QjbQTHckN0S5qvjmRwRE2CikIZA13sCdV45A+svG3TMLTxGvgfXNukPPNkflUlha4eNr1m/LjS9/MJaNA/0EX8r7rZ/5nqTlvzIP8Fv8sIk5tJBSueFZ9gX2Wcmfr2lODl6R56oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745278194; c=relaxed/simple;
	bh=m9n9pi1pY3RLNxTxvqQWB85dDRpgFPb4t5tU4pE6n2w=;
	h=To:Subject:From:Message-Id:Date; b=CT5P+j269Q8xNF4sr4z5sntH+Boosb0JTt6vifFod0Jql3j4h0wi9iiVmlcWIZCiqS3PWOUCen6tTKJSQ3sl1NmOR5jxumtU+eFVFSfWO161SgHVVHNfhZ+5xYi+a7hQPyTtXLin8EEkpE1qi5i2Jp0F7fxrQN/hxgLSGQYh/w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekpoWUe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekpoWUe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4969C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745278193;
	bh=m9n9pi1pY3RLNxTxvqQWB85dDRpgFPb4t5tU4pE6n2w=;
	h=To:Subject:From:Date:From;
	b=ekpoWUe9T3pCBO16QYrMzp/5GeDri9Doo916TzlOV5JrCFilvplzUpFlQikdbUCiP
	 G2sYDUYGjeZLI0YWWw6+oluzFBmGFd2tj0qdn9u1NOsDNBtC62oIUpDvHiCKmw42VY
	 zn7iZ9Z+icxgUZBsbHbpQQnVJyzMlDqjVY2OsXpFfFA1Y+gKNM83jzsrUVS3rPQRbg
	 1wA9944xK/1ufkpVikiCtajjKCbbX/7IvO7dQFok/bDkU11x+60TkpatDXVIoiIJGI
	 NhxTdJzmg0x3sB7sHwZZDK40OdMG+LUbx/zYemIqYCvbIz53kTp6bVFWapYShowI8O
	 +h3uhf2y8wK4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A248FC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527819365.7122.7712602361744828444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff158529cefed19f106786cb472a9a605e192d214b82c0d635261d82d6c84d0
Date: Mon, 21 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745278193
