Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAFF33F8BC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789899634; cv=none; b=Frky6pXb57ww711rougzy05wN5epcT40ODnmH5xVnsfAbcQLzd3SCJF0Q2ATZNORVl6oe8ugdstqNHN/+oGqea5JwufWip6H4YQ55d5HN8c2878YxmJY3B9h7T87tcB5HdGGML+Jl/9sl4+xUSbYjrO+8JCbgpei2p/TcxH9qco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789899634; c=relaxed/simple;
	bh=84XsWtdnT+fKRQ7mIEKsRqN6LlsV22fN0B4R3BaUD2Q=;
	h=To:Subject:From:Message-Id:Date; b=gkHjunBOpDyVodlo2eAqATqzB3PeS9pgX6aWRaArZneslaDR6oWEFZqY1wI9MIvMuudGemCGG9afSxZvFiwG3t3tmj5XzMbXiFegwJfhzjfJvtkK2aOeqbwVcYUwuC21tiOJNIxwowyudHWiE5x/pD5FOA0mcxZn/6xk7I+52v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCZ7PGP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCZ7PGP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD546C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789899633;
	bh=84XsWtdnT+fKRQ7mIEKsRqN6LlsV22fN0B4R3BaUD2Q=;
	h=To:Subject:From:Date:From;
	b=LCZ7PGP7EIrc2190q0uvrXCsVXto/8S6X4vD2aH2J4JdVs0HpEtkElTvXj90GvbzC
	 qcCuebbGwwNMGUtKcr1MyxPg9mfCn52py+MqFsFQpFcoFiGo0iMjzzXi7gWIQLij3w
	 ZNwctSICzZz0fAqid2ManR+dnVOdjt+hcYMV8oG25tMqi2qtFqAHrIM0v9HIfrNPhA
	 E7IEdKpPdMjSH0Du2RecGTteTdsFID+OyLhiqTyOwV+6gcI4fjT9bEjIBDiitlPTk7
	 /J0OjbjaDzJa+UzXAPw0kJYHPOk5XHY/rm7Gg2QoA5xQY6XKIjJ3uWU3MK1Kch2cbj
	 pl4w8gLpcmLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9761C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989963368.10165.17460906367820424073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5c3204b89d6abcdc3aa16b972f73707e0222777e79102cfd66acb78dac61eb
Date: Sun, 20 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789899633
