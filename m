Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB613BBA0E
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791189035; cv=none; b=e75qJxn9EKbj8t7BIS/eNkv8fL79mRtemK7RNL1wOAxqSOUb2n+ixoWBl8Ixkc7RJ1PTo9iP/xJ4LsQKx5e3xP5KtytA2P/inkI3gJKOG/eaa5R25i66SpX2IP+lJ+/ESroB06dFEx67AD0DZohTXDJRUoMx9Lp8UPy9Ek2RzaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791189035; c=relaxed/simple;
	bh=Sz/GMg+eqVYGdQL/eW/PCU8VbzfhJrUhscihOkYaVNE=;
	h=To:Subject:From:Message-Id:Date; b=j89dn0E7J91MpqcQa/VdunrNIdS3H2lNg+Bm9dhz4aTBpGNh9x1NDIdIlmkrFPyKS5d0nDGVcnAxrPPX34GFBm8MXTwtzWpZ9dIToLlPfaAzJ8ShSY3XfxHrgDgO2r7O+6NNE/XzcV/VRCxbQRVH/hsNFQ/O3/+x69z+Ld0iq1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAY3wJdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAY3wJdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF19C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791189033;
	bh=Sz/GMg+eqVYGdQL/eW/PCU8VbzfhJrUhscihOkYaVNE=;
	h=To:Subject:From:Date:From;
	b=mAY3wJdh8QKUsCq99EFaAgzr7jqNPr+rH9ABxHnJoQyjLLmSPs+ERRXH3zSA3EVji
	 VnawBvVKA0l64nFjn9c+t6dcw5UNgPDcBMFB2BAHHHInORYXQQVphTcz3cdX348goz
	 6sfaNpJ5OZoxgAvZa35MP1XjeBVdxgBDGJMjUD2A2lBJMHxth7mYo1dPnmdaOqSqRh
	 QqOk6nmLUGxtwq+/SsTCVrer6BngCar7QxCsyqvPYscmpVNrAxOnWSOCD3sO9jx8MK
	 CxzihTlChnujw9i5lnpdGrs/awnxwqBwtplhZn15ZJwzUhe/jJt6PKYaEWVlD1ISbF
	 lkoC/DcU+PrfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC317CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118903369.17001.17718551173630075238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa34d2ac42a796e04270484ce5b69f48eeb2a8b7b8d850226f2bda868c9c4e8f
Date: Mon, 05 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791189033
