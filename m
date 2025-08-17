Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D92921CA13
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755463794; cv=none; b=Ckj1cv7mZy9e6jO569y+QGABFi4HszcLWGlWus58vMERf0s87g27EYqzdsUw2MbmpFF6pYvgMcQpqj3hfSVHb6qtwBSEbshbXGA43Cw5EztUzlKBvyTR3orVZesSuAi4WgYsYGrh1sgRRq5B6Px2dv8bUEltFJXn0H/fXAh7m/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755463794; c=relaxed/simple;
	bh=/oPgkAiR/9PDStWIGrydGTl9gjcUm7CVFH2SnWZ4P7A=;
	h=To:Subject:From:Message-Id:Date; b=R370luJfaTXmHaPDVPbkXiOAdWUbgZJlnsiala8WTJg9Y4QsWR9BwwNT/aqJIbjdQ59YuQl76Gvv74gHQA8toCRSxV8v1i26vD8DEvAbL8SlBALIB3E4pfzbPk/t+Oj5boHMIWPWVr2vRD/LZFz6RsFX3awucugwKairqvhik0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVOWrxRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVOWrxRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755463793;
	bh=/oPgkAiR/9PDStWIGrydGTl9gjcUm7CVFH2SnWZ4P7A=;
	h=To:Subject:From:Date:From;
	b=qVOWrxRfpV3ccP6F8DiSs611DnOuTjkU73aRPH9/XDpIXlrUevh/QZJFa/9txpjCn
	 +KZnOfBXZtFIzrLHqGwPQ9eU3hj58EEqdTsn2n5b6h1CphjiXKJchknhsldXFbTPHu
	 RIkle3pr19jMBN5Y4VEPWklT5xT8DPUOPH0NwRjSO6UibdGSOTJkUjLYasVeqph2xt
	 hCvMIHnEpQbR147xOsFMBMwKKjQuBy8BgAHam0h5aDVnrX0JZYlJ9mEs00Xv9DkorD
	 +5UV8ddS1RkjYJm0CV7w2qRePRLQromR8Vi1PO0Q9Q1XlvGpRcaPMixBLHWaUuDzUr
	 9G3TtBAjq+Jcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BDBCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546379357.17395.14187722891679409093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f89e52a602ecafc5c49551ae3e538fa91c79e94282a7b2ec6da19fa3d9663b5
Date: Sun, 17 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755463793
