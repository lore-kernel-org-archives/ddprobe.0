Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2406E2FF672
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789332034; cv=none; b=NE8sMuE/YMfHJ292Aj4odCV1yPKcsYYvkMvvVufgAFAdx7au+KODl3q4k+ng7nKvi+YDE8ADT1aiIgcGrBYGnAO6dy5cscrUkK8R/PfRC/ZhZ43QKSIUhEDl98iSM69J5e5mcOssRsSltnOQontTJOmMleBols5qs/N5hJy+hkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789332034; c=relaxed/simple;
	bh=Bp2wPsPYDBRBMUrJM/9AThfcOU7KIo4E7IlsJfLx+Q4=;
	h=To:Subject:From:Message-Id:Date; b=mSXt5gDmXhhpjFDHOKl+2uF/lzsFyaQIKcifCTH9jGbiFCzUNWwKx8eA+70WV9ossyY2y1gVvlMbCun4xp98HWAw7K4905C7/pwzbIGhgNpJy2oG42qeRyARKvox8IaG1s2Fp5h99CSECsKq8I/KPNQ2oR6GAAo+k5J6vihgGWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNc01gMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNc01gMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D396BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789332033;
	bh=Bp2wPsPYDBRBMUrJM/9AThfcOU7KIo4E7IlsJfLx+Q4=;
	h=To:Subject:From:Date:From;
	b=XNc01gMaDeUaC1nimWlhcBs0ZoCVZg7PFy2u+SL0WesJz+BIu24U/7m/xshg9QHdl
	 2eZeB/zClul5C+RR5lIFbjdKFWSJbSEKePu3oAJXihd3FUzYC5D6weJPuNLCc/naxW
	 HjS/8Hf5jAxqj//NkMrzERdSaxyztAIrj086l6IzNTiWVzjRBrQyyLUPx65HJUBg28
	 mfYBCG6lxFSgiwookJZbnbIcTzmTzijR/izpERy2vQ7P6W1BIdbwKNjYYCugi4brZ2
	 xUu54zlz/+/ERasQaSYsCrN9tkzc2OhKlXq8NM6rDLvFzJHsPzMWjS+/WXlkg5++Cy
	 lK5fYr8Rl0dvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B032DC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933203368.28823.3410974343361219290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1c6ab73be82c2db4b100c4b80c7b501ca9e399f188bc4fe07bc3b707302c2f
Date: Sun, 13 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789332033
