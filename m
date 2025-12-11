Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C170433A6
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765432374; cv=none; b=QTFShJOI5w3Wv36QQPXz+3Rkb2Riiig3dolJo/JSAuLemhr+Lr1Irz2SFpMd7IlvbnVt8Nj/I5rh8M5uY6Ud8fYtFzdnA0G9UEb+Dz+OyHa0+L6T6eo3PC+9yDf2mr/KDZXaFi8ZICs+BGTMAFPQAsN2r1mMzt7mEes9//jSuyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765432374; c=relaxed/simple;
	bh=GKKsOeLXgBPvrhrajk9jSPeIvdVIQSd05dSMwbVuN/k=;
	h=To:Subject:From:Message-Id:Date; b=rKceisx/FRxlSRRXVBjhM74agTahkmFYS2543tJi/r6mHmiCfM5InAfcsHU7X0rCffm4p3TQKLfMWkzz4Abr/7beR8DEiT7E9JESCHk74ggef/ZvikjFzwYSujoKsLCV0BivL6elOjj8aHoL9Hi/s51tu09h4Idbt3bUEQMD3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PaVJqLLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PaVJqLLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7E6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765432373;
	bh=GKKsOeLXgBPvrhrajk9jSPeIvdVIQSd05dSMwbVuN/k=;
	h=To:Subject:From:Date:From;
	b=PaVJqLLuqRId/xkdfsPSBRkpTAku7o4z40RtFJy8DKMouLbVziZpRcfRc4jUu1Zq2
	 gt3jcLlYw3Ut5BiNEKGa4Tp3VtIOgj6X3EmeRPBWrewJz1K0L/pMXeaYBbT8TmJf8s
	 07wrGL54FKZS6WI3DQ1vt/I5F6CalM5ea5sJzstv5GWPcy8PSiFAWwKxl3mhfcabfn
	 naC5LqO3DfxxOQ8I6q0TUhIhRCm6o1kGeny3ksNrfuUKYYFLl6lrAvqZgTcVtfx6nU
	 i5JyV68AQVeW7hrTh4ZcQDICICY4UIlyy8s58qjWUd2cd/VKT2Nw5itLISVvexrdV/
	 3d52sR4dhK7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FDFD3E78F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543237360.20962.10308944472825665907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ddb9bff7c6adf72b91e15c92b495c15d0f276895cbbe5cb4e4f862d9cbbde4
Date: Thu, 11 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765432373
