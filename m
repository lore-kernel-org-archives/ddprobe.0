Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE8A29A312
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755110994; cv=none; b=QUNJF5yQFV3FWMt2XSZjE9LYHAqrq0tZfhQPCeqk2e9IAOO8MvxEIASstu6CB5sL+5JNerXwEeZWxVN+F7rxUIbTeHB0F0mWIw2gWyHFUv96GwGYz4ocYWrUBY0EO74oVeIsyK57kGILOXfxwkkr5b8MFcnordt4ZdVhF3pHi9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755110994; c=relaxed/simple;
	bh=f9JwSw+g0DR42c5BCFY9L4Rodgq3ZtDzUCEU/aEGbD0=;
	h=To:Subject:From:Message-Id:Date; b=LyPF1H6cW+FbfoKRoXE52B4LY0YmV3xztSQAOB099UcFYlsnzr+LTNfr0sUPA9w2sdsikbKesxgZHnt437pGMz9U/VHPQog+n8xGteQwtB3lrWeDO73MpTVbmhqsaFbz/ZRt2jeJ0x9rFmnS/quHTZW7ISUhtOQWBlwZagV1EtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQ0f6z8C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQ0f6z8C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D761C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755110993;
	bh=f9JwSw+g0DR42c5BCFY9L4Rodgq3ZtDzUCEU/aEGbD0=;
	h=To:Subject:From:Date:From;
	b=cQ0f6z8CBa0VgzAdaJN1hlQIkjMVW2KrnJ/zepY9R+cpAnDNgEpIddsTw6jirL5nx
	 cQoG1io4k9ACuEsciDX4uKybx6h4oiG5cjcQc2DbWWxao3lWlr6czPCQIV+Vee8jUP
	 qmTjrA9T0uOgeadKF40D4NZODJGkG0YqX0SyCaRLGPOkoZ2x6byRL0F3Y/3nZ+pgEC
	 9GqmrPkmrCUNepX33fgm2blFH1AV4sqn5LG0LFKnVo6pEaxhFzoFixBrQ9wkxEjd9R
	 Tg2XTFlHez0PzbF7aedHxIkTcTXFrGvwJTolIZB700Hua5GMxhCeuKURa45Cv/ZaiI
	 YNKUg7Lnlzdkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A1CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511099357.532.4687130769296590156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b76c46d192dc5ab6eb7bd0dd845f3d808ea0ff72023c4f466849d57ca358fc3
Date: Wed, 13 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755110993
