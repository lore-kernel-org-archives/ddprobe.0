Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2532773DA
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766455434; cv=none; b=EQbV9V10uH/IM6/RyvcIOd9KkjBREWYdDuwS/PPW7q+K01ropfK5RkrI+kBp8qN1HrZ6IwwqHCxMYzgh8mCuAcbfOnUGltEiXNA50udARLxteg+sAAzRrNxT+Dw8EGJUtLDp+Riy2cv/Rckw/XvYMDXn33Yo2mon4mDpCzIBTYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766455434; c=relaxed/simple;
	bh=Py2hOMiHinE6asWaZZJ7mxQRSw14s/h5a4oA2SF1Who=;
	h=To:Subject:From:Message-Id:Date; b=twxW7Runs99zypRCj7pDV5pLPO/39ryqDj6pB0l4BXjI2mTqN2C87YlavxUAvD/T0CqCbmHz7mlPkKlHQFUO42ztDgtOsnW0duWA3qM6NRjP4txJfoLNGG98LbpOi6CQ3qDgehCVIM5uWRUCERCmei2D4J3kFgU7+gVJaG81nOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJ4gjuYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJ4gjuYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A797DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766455433;
	bh=Py2hOMiHinE6asWaZZJ7mxQRSw14s/h5a4oA2SF1Who=;
	h=To:Subject:From:Date:From;
	b=qJ4gjuYrtcaXOxEN7eR0LLd2huUcD77ct+GtnW5g5n9xsPaAv3GJVUeMXySu2FP/r
	 9OUtTEOS6c9/mXhdI0lPfqe1aSCs8fsriutTtN/E8rxNfciVc5yC57AasEBvgFO0NO
	 EqHH3yzoLpOhnxn6VMw0+XGYBNP2I4n5YrIC/2i64NNC9ruy3lR+SFEZnbxC/+1tP5
	 zol66a3sR+jIsefUt0Q0Vt3+TXi82ldbAyojJN5LWY8I/E/Vknv0C2Ps3AWUeMcvPp
	 6kk5XZ/q/Pbeg9/LsCWAA2VIDVGYn27FJa0HmFSVphx+n7uC2q9Qdbxthhx2IkDpeQ
	 lli7dKV3iNfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315FE6B26B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645543358.19664.3406939445101225510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f00d6e09ee256843643079d5ddfe9a53747a09c7bc2fd0f145e2626209901a
Date: Tue, 23 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766455433
