Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCC337169
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719777263; cv=none; b=TNWJ8Ic69ffvuX4/rb3g/zW0alSrRVFqkfPSi2x6sm8FA5kCEHYVY5jVjtUnsUX6PKKjt+NOnii0MJmsxbzofXs8XIY3XLQPoXECtl/65xRzKM7sA4r9w8lCCCj1MDKKsTJ6iPrnUV3WSHgeppwQ6+ED6U4lG1y2PfX0dpqSE18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719777263; c=relaxed/simple;
	bh=2pWsi9ewAuJTAYlv0YJO08w34bokr7HOTrSfgDsV0r8=;
	h=To:Subject:From:Message-Id:Date; b=sfiMxra3OVNZXYUv7HIUcK45ZW6SQ/hZ93fyzdyr1wq+S/XXIjd5NCsSbncJzwSQxYHRcPjH1RPXva+om9E5QUijsez5FlGkUadrwxDocCFrcTr+WwmCr1rufkZdtp2n7Fza3fa+TEISqK91mnnA97dLUW5por7qCLZwxALnjPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP9Toh0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP9Toh0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06AFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719777262;
	bh=2pWsi9ewAuJTAYlv0YJO08w34bokr7HOTrSfgDsV0r8=;
	h=To:Subject:From:Date:From;
	b=PP9Toh0iO0ClEHU563RjlYEr0SxDTtbA0J/R3OpzMAQF023Je0aL5SnNfpdUIiH2C
	 R/zbzemY6vyVdcNiuk0VOR/PXVwLECn6LWzAVQ7ZadYelXqhgSK6Y95qii+oG4cgFM
	 l0UqeTD/6h8CbT+szTed11JnQk1IXw0ijL2UhiRG/3LB8IjMx5dBrvOLHKa+fy8jqS
	 SXzZcjJZZnsk/SlcMA2CJCcs9GffOhuQ0aWB4Ug2IhhAHnQeI8/+RQ9cvTs5KbzMfQ
	 ZhDWBALpyDbwyFaWaGOWWPqQBo0prepTaoaTUZOS2xeGlcrctkjW/JnKp6TciE6iZF
	 A6uXBJ0wCYSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC082C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977726276.31996.6198285046821148109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd9fe7577320ed1ec59a3b2c05db185a7e596cecc504195e73506cb53e65898
Date: Sun, 30 Jun 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719777262
