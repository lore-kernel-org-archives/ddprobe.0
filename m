Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E34D2288D5
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771077294; cv=none; b=TBSNqXOchjxUitizoScquOkZIg8Kda8J6TqguvoT3laJXvEkRjPHsFUUtdA8mgA8Tq1wv2OVLDgKFYWSucCkJJ7FUKsEwHUDMERAGZzkKnGTbDYlI/gOkhERoFwEGWW4Gb3pXs0mHHujG2LwwEubDgZS3f+mS8I23LCRJ8plFsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771077294; c=relaxed/simple;
	bh=e999U/JX0yZ4OShJIRaRUgEVP5867nZ7OpLVPu1waDc=;
	h=To:Subject:From:Message-Id:Date; b=sLcAmKu4U+VSFZVPC6vNhWBDDVplmW/zLWA1zQ+1N6di2ecJz/uAPIQjX7w2C1+BmIQewu/+bFqElvxUuFzGLcCGiuryzcdec8kTqY/tVP+AmqjQVOoJFosr1bnavHdtelNtUq/5X/7/EUQD05/lLpK3+Ld8DN3f65Dttrl38Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmC7ws5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmC7ws5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB74C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771077293;
	bh=e999U/JX0yZ4OShJIRaRUgEVP5867nZ7OpLVPu1waDc=;
	h=To:Subject:From:Date:From;
	b=NmC7ws5oS10SqHYxwJs3AbHh7UAaFAIxgStBuic5YV/pHqbcB8eo/VzU6b25wsDVg
	 Yd9leDk3RLYJYtQgzm/0G3x4FHmp694dValWaA5p1LPUnw/YS3O7FtVsDtNmVp2eZA
	 yOLSfvaDk3DuNYsXAL+dqUH3ptMkRQb/TGEFFVtaqAvuCRfjC4avocWxnkvdj6btr0
	 6ZMPro8BnABgJIaubQKUlDf5tjVcDfkN7KS5lDELQ551MOGWZ2vw1tR/kgyPej9nYL
	 2WxYPe8TqfCI5MMSGu3SImu+ugLb/5dFGOiDdtjMMDbelC4Vn/m/goLhxdA7e23jex
	 1+oa9jOyRCYTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB7EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107729359.13769.4479013323224349532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50735ac659da3d0c711e5dec76696624b88e97b2f1499325c6136df276ab114b
Date: Sat, 14 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771077293
