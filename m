Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F2015AAB6
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713967223; cv=none; b=O/UM+YDxwF0v6j/edLL3CIFhsgkhhHHBYYcPXnfsg+xVKxZ9ccQlG13LHugiSk7eeQq1dYjlvotN92kcZHnIBzOtsE8Jw+rz3uNlLr0R2oi7lCAu3eIA1VBn2VilFglv4jhW/sbqBe3wgoxieT9/jgi0T+/N9EWBBDoGwvwqMVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713967223; c=relaxed/simple;
	bh=d4pGTSgEVZ4re51LA/+NdIUDXVlYWmY8CDlwLHVEs6M=;
	h=To:Subject:From:Message-Id:Date; b=j5Ie8E0T26pBv/pZwyzA8N6hys5PJEIU+Vf388Wo9VZYTBRDzRUTjJAbOLwQ+pNVHIXJU9y8r4DUt9VNlKgsCC2ph0NyGegE+zdbUZzQ7TIhrbvDos/jO8PSzl2PX86YEMUzM6hA5xg6RtNMqND7BjNQcx9CMkF51gGuyvS1IJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KY4zk3p2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KY4zk3p2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1956C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713967222;
	bh=d4pGTSgEVZ4re51LA/+NdIUDXVlYWmY8CDlwLHVEs6M=;
	h=To:Subject:From:Date:From;
	b=KY4zk3p2wWNlpTvHT/fxMzWlFasW8A/bRUWpN4kZhtqQ5ikmR3RWZ0P+5tqmZYvoY
	 Os6TlJNscTE8Cf1JlMGq51k9QaJOSwUbMcRurTyCpc+yoBnYdBeL3665Hr0WgtwNnu
	 MoQ3QoPeCfmDCq5ZewLomEtJgJWBSplWCAP94l87j2WeqTPKL2DVLAqo01Ga7oSXN4
	 4Q31lc2vxyIU8Si1qN8KuP6gU5tUYH1E4keAqtXWlcQi3U6f4w1/OmvgTJ3uaKijL7
	 MbyL99UbGNt8m3mXGqTW/IiKE3IfR+rsPl8oMZSAhOO5pP20ULRGUyNJQ+7ssjo2gG
	 gEJr2y1Nhv9ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DC2C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 14:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396722280.6748.12865105445917560975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74cd9674ed9bd2c0ae693597dbe18053e6defa0de344dd53382e40ba0142442
Date: Wed, 24 Apr 2024 14:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713967222
