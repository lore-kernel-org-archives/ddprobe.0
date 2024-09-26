Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A970F510
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727367954; cv=none; b=dJjdZdeoXhRwUV2DdhjcaCzE/CEuvSbmcjOvtbW+LGAdlG4YtB4kO4nwvdjH62r+uSJQ6OIS97ET9bOwO2XPpKKrO2J++JgGaIpNIcxFJlxLUYrFZi4ztNphh8Dyjh63uqdKgKxoPGsCaM/qqzdeOh4wjj5a/u9aZ51UwNCumrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727367954; c=relaxed/simple;
	bh=BWVHbJCXDxSkx+KaqaJgcNCglD43J0c78auw7smYOfM=;
	h=To:Subject:From:Message-Id:Date; b=BsvR+nXfG3yB5ipv3eJLcRpEEV+6t9krbFzgRUWEYKPFk+Q1uFuYDHJVdSKhMEBJcMZ5Dl7yvfoKMlh4qomsxMv6tXpGIgJj5hltfeV5oVr2Wft+N91j7/8LBZW5U6zbLNY94PxP8dIpl6YGwgYhbVBoBk3XbAFPT+ZBikNaTik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ru9bcl14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ru9bcl14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0647C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727367953;
	bh=BWVHbJCXDxSkx+KaqaJgcNCglD43J0c78auw7smYOfM=;
	h=To:Subject:From:Date:From;
	b=ru9bcl14QeDSonAi5sRaQ3a2FUel9qEllmI8S6JkAhcYFknu9NtV+jmRbBPB06lRC
	 ozNHFa+Byedsk8E4fJkZpyrfs4IL41Vnnp8+WhGYBo3ffyiPrdYUuVy70n9ltdtre4
	 DZjkm4WeN/s3IKwBNmvk+EI1vOEogRjKftUbF0gm8nC+79UuKKxgo3hzHPxs+TaPoY
	 uftevszBZHeMnbWhtol+l7y9smEemx+ld/nQdynS6t3GOsT8HswXxiqzerdB4wTzZo
	 e6+FbhSLctaPkPrIAHbdVPdKFPr8H3jZB8+hZ14bKwIUTCIPMPnsL+ZWBIjfYujzfM
	 TEhVlFyfSjptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D74BCDE020
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736795363.5325.4169432756712506695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e7ef0163593d57c96dec12bf3b547da1b4d68b18b80133555373f9d2e50b58
Date: Thu, 26 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727367953
