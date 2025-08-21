Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198781A9FA8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755789595; cv=none; b=E/mvC8VhMHqFg001iIntJHDZUE2e/I2XpPBPac0MCzF6lLh/2Pw/PJ9PT9kMppqfNQN0L/1wOMkkryMV2e4YX+Wi0BmgYc5I+QHvEUdDMxGc+xUntcL47K+ujNghEyr93zr6mvCkcf9hOOy59vnjuYYEeiEwiR+5JDI/0qz5440=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755789595; c=relaxed/simple;
	bh=pmHjmgSOMWGWuuH6p6LrpoKxKvjIDW/f+yCh24TvzfM=;
	h=To:Subject:From:Message-Id:Date; b=EN+EgeMEGpXUbE9Vf3LocR/k5XLWEl8zUrViWZctJMK7/37G3R6AHmtbjadhwhk5dR7b6m97aasDw7Dib7h8FOjLns0rN2+BkAnvSKsH48XkxeKFb8ndX+8/1fDf5HwadoeLxowsVDP7GSu+X5CXChOPPo7vskXLAxmwb4zHBQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMNSEoyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMNSEoyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A128CC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755789593;
	bh=pmHjmgSOMWGWuuH6p6LrpoKxKvjIDW/f+yCh24TvzfM=;
	h=To:Subject:From:Date:From;
	b=OMNSEoyyniOJO/VPevS9qWZO0qPBMSPhFzCE1R2wxjs6dnz8q13QKrUZvgq/AV43O
	 jfaU0TvUumk6fjbSnh9N6761VnWkNIlGOsgEp7W4eTrrFMbpjCY2kkthksNlJaxj1W
	 9YBorccsy8XuX83I0yu7nrzkqLZ9D28MkJbhdwwRarV6MeYZBu08IaXnTLW1ot5LWJ
	 Y9sbBh2fLoqoRFSKTzlrFrDwSH/ZPmGwwe1qWT+YUoPT45V/BHwCwpdUurvcXyIG3d
	 fzdxxhyZLE5y5EOmLFSAQgOpPh9vy3Nb1tigyHaAPVfwS+lqCkN5ivr8nORc2vBjRD
	 Lj1e9HDpIqV4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E1CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578959357.10742.15116641660962551406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3752e338b03832336bf0a33a3bf96ef1375dce91deaa9c051d50271863e378
Date: Thu, 21 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755789593
