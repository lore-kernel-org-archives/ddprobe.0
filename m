Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FE52882B7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782785314; cv=none; b=afFEYcgIAw/A/Pt1mFeldL6phh3lggp4LtvmfqrcypiMjId6PHFTxvvdvV2Fv/Fa6vqEdqjfGzroQBOr8/pUBBhAy/wC8m7q14/sTjXnVSFB75HOwgf2cehmathaQWHjMx2L/zmWaBwoh4sTJsUz0UKaufAQ6DrSDOwU3L80px4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782785314; c=relaxed/simple;
	bh=SsgVv5ujgb8dY5U2tOuMsGc7eQCylsXlql2DgZBFqjU=;
	h=To:Subject:From:Message-Id:Date; b=J3du40857I5JN+bnDolQSfl4qCTIIMuU4F3EEEqxBLDxsDtwClfkV0gHZa2RFjZnZH7M8GOAMz00BzEaaDAd7v0vVO1yrvnTNBPGcoMt8ahFw9uFZYcAZwPi5XOKijR+ycJY8juyuSooRf+SwR2ufBwUFhuEzmeU39ex4uLGRm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFZUG6/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFZUG6/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D46C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782785313;
	bh=SsgVv5ujgb8dY5U2tOuMsGc7eQCylsXlql2DgZBFqjU=;
	h=To:Subject:From:Date:From;
	b=PFZUG6/qIirzJXkZYDYXPys5Yt/dw5xtDbFxXjX/jcDfFHKLSDnI+LF1a9bdkHBiM
	 xXY4iGMT6za4XJfX9ij5LuF6OCko2AOwnX1tXItNnMoWL/Z5wQBlzpaiO5N6+/tQae
	 hBWQibW19cCc+R0Hrd9ljAvmeJqKoaNhE7AdIUSrpxXvR+GC4wFqHsHFcGZMOYZDYi
	 ESywuDibotH/spZoO8QCs6GsCTFIVdE5pdplqB7sAmIooneDgF7J//AsiDQa2T/Noj
	 QJKvxcUF1Zhk6flXJkwAvxCeoZ4Yg6tiHBXJz5cOVwRTqiHgycA+3i4JFAxXDHVMrG
	 oWV8E1T35PZsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAA2C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278531368.16158.10050959245979291090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e401e7ff11644b1c135668a81bff18b83e5b240df22500c32d54f26b143087e3
Date: Tue, 30 Jun 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782785313
