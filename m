Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066012F1FEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771451094; cv=none; b=XZvfL+w9Bb8u74J+xgzfKhUEl+z01jshzGooALJg84wKJDhh6wiJVzmP1MuOjP7LY0P/Ov3tcSfpREufD6LsRKFQ8baERnDQ4bUFAN+WtjYUgl5D0RA9vqbOuX5TqBBZ89+lyqDAwOEHwrymJmMMMASCkKkB50mTia2FgIUtV2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771451094; c=relaxed/simple;
	bh=zJj62F3nxAD+1ySBcR8dYm5VFzucRIgSz5Bprsdphxo=;
	h=To:Subject:From:Message-Id:Date; b=K9AC4YxGzNQorDlt3clPUqSJ3bT8j8OHUrLAH58YAReEju4SfiELiApxJWZX86rzBq1AZd+7SoGq3LOQLg1IXXxxXQf48UE9j/zPXtHjOQwmSOeMlYAdze0QkY8N0Ck8tmCdBe3Yx12R7cDOlXvkynDPSdFRPoC8z/+Y82DX36U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByDmMYG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByDmMYG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A7EC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771451093;
	bh=zJj62F3nxAD+1ySBcR8dYm5VFzucRIgSz5Bprsdphxo=;
	h=To:Subject:From:Date:From;
	b=ByDmMYG30DbBOMhZ15Ik1+9ezVrmIa65jIvtQP6Vp80RWgqVlckcxTOfshA5qRomQ
	 5Kx8RyOodze+fBy9TRI0ifLnxTLZNNEBE2J8qFZZsC/7zhtYwlGbGvLfdFrB5ybmc7
	 N4K0xZoj49191YAukXaoq1jp3rpHIU0BRUZJyWottTJ4KT/DoSH8XLk5c4LR5Izoi+
	 AOh+h0wCGtix/wbIqO9pretqDSI5iKLCseXKR/MttiZmASj/4abob3dYWcAdFFcLOt
	 olPNLJPgSZNad+yZl6wPoKzhjlQ+IW6qnjZWzyjezKV1egQSDQE3nAYCBc/R3yWApM
	 mVxrMzZg8QZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D44E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145109361.18981.253663196219566434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf422b72a031c02d61006cbaf0db2ebce41451c7fc4d392dc1f226a1617919c
Date: Wed, 18 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771451093
