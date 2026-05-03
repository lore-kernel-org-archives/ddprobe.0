Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1176737CD20
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777850854; cv=none; b=Sg/OtWkuEnJT7GekAqy/WnbNkAAHdCBrF2vyyl0Rb19zAyESTCRZj5tfhk6UDJwbMadHfs6rEpwv2yE9tGMUuljtAk3j4qtF1J+yubXjFs0r9pjbVx8mJp4SN/u522kIRn47H8vNECaWbEi+9smaJCvuug3G12+bJ8nR+WdTYIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777850854; c=relaxed/simple;
	bh=hID5dPzg43DqJII03rHWOKPpZX3hitQfD4In7jdrfaU=;
	h=To:Subject:From:Message-Id:Date; b=Byhg/FqpmZfSTlcZUq1HZ863wfoaK69qNSIxTd/f4DKZ5t0hJdrfW+i06HzbnPDuQctskXULNty7i7TGnkb8Zb3aoapsBTPwfm6m9IotkKKYx5w84/VYoXkB2MQKn8z/vTtObxK1qQz7oud5WRUpI+dm12KRiuzb3gGJM6Aux5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2ixoosk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2ixoosk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2816C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777850853;
	bh=hID5dPzg43DqJII03rHWOKPpZX3hitQfD4In7jdrfaU=;
	h=To:Subject:From:Date:From;
	b=W2ixooskZjcmpi3WCvF6iljnZFAEL45x+wBnGDcsFkutbalK6jFTd55bSKwykTBcj
	 WYck0k/lHd4n5ux0GC3tVpo8M8QCThI6877xTJhCt42XrnTqLqh93ELy2nWNx+Enip
	 29SQAZxcGXUAVd1dZlM32fCTPsssSsR+pXhycyFbRjhekXM1KszKK87VK9A/BNUZHl
	 aIoUgqy8jBiB7S24CVGRYT/JHKmbEEamlQkqtWQjOp5pIlP4m/YYbllmWNpSjcrfoe
	 bN0esCJGvuFVALZJlp5JlgKOjmYm6yX8k8eOG2Q/j6ixjXJNdLvchig9+NGVyvoPSN
	 GMYNv+p86YGfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAC8CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177785085368.24487.16019994577678682733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047468e20129bd3a1a2120fd279d70a1fa934750c3ca3be4e7c0bb86e20fba1c
Date: Sun, 03 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777850853
