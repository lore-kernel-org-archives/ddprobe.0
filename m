Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED794ADD8D
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778005654; cv=none; b=LwsJWL8QMXyu+egc1zqA8PhhQsJcV3zkOWUGfZX1MZJS3mGU0X9LCjBi2KHtrWsCbTPl67PnqQhMSxZh1+0tu2/Nuv06/8oazzKC22cQBWCHUd/G2dVNzkb+7DyhQ+AZgapAJo+nFJ0fS6UVDdc4DCtcCvLE154M2lZNagvstW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778005654; c=relaxed/simple;
	bh=z91DQniNhFVeWIdzgvjUEF98QPiNiq0yLcf1AfvDF3c=;
	h=To:Subject:From:Message-Id:Date; b=Yg3clrQndMd9QlGuuCaSdPK6l/dllG7pRjHBpZMNKQUK5p1OOgjNGFzmSTM1NqlfpwZCBytftx2BX+sSVHsqa9ENfITB3ChsS5+KApFgFYRFV1SOjp9UMs98Aqd0u5A5zn23cEEoMN+z7YApGQgEZ/z6gzGVcrV6r/xVeeLBf5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPXgen9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPXgen9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81FDC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778005653;
	bh=z91DQniNhFVeWIdzgvjUEF98QPiNiq0yLcf1AfvDF3c=;
	h=To:Subject:From:Date:From;
	b=VPXgen9TzOfTaQrJ400JoIiaqpHDBMDaSCS+5j6vn7CODcmLkGB8DoN6P/u2tC3tL
	 oZLMm3aQbBUEelroGn1/vduFIY11j/BtBRKxOPg5ujPFh1cpgBbgYPYJ/ZnxEUex9h
	 zMc3ChFb5Mfqp9wj3xopZr7ZBXw4v2ikUk2HKlDayaDrKh4KEV2mSy6aREo2WF1CD3
	 KIkmZZxJMLmhRoiiFqC9x0laI7VEADCrrUZFzVf9OBynWI/kIDNFco0+1xKmZBJoTi
	 9Y5wzblzqp8ypCATfR+wprNpHHhlnwhV6cIJDiPnedHradogJpSj9rXMRjgQN+TBLq
	 +fCztjMOGCplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF97BCD3441
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800565371.13666.8681302956649752191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412ccb19483dbfc01a47721f636aa6d1de6817d8922aa2af3e0d4ec5b25266d6
Date: Tue, 05 May 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778005653
