Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C80153820
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723758954; cv=none; b=ZZipqhculojhNBsKMFlHK04quPJ/0xmmLM5YKTYjixD8Tecf1NPt3OE9kkDYe71n/s9PbziWFlr2ugwTPBemkaM1PuDVwoh9LNQ5ssts3U3Eb3sksmS8KZJIQiFfElz1covpgnlvKA7gG6f5RbRVVDcRnme16FSSjJfC7B/smUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723758954; c=relaxed/simple;
	bh=MhxOR8fLACEHzQPNZT7dm79pBgwfstCYaDJrAam62yI=;
	h=To:Subject:From:Message-Id:Date; b=u9Wo6GX2wI6+12HLxth48Lph/kJU3pYo6K9XMgDTgP+2pV8GGky0X2lNP81RkHHkJD3N0fEJmt0ASS8pfrfIc3PvBJ8MFUtev63OakCxS5+JFllD5mPwi2cjOubQHljSU9lolKjWmkyoGXgExaj3NusdhprEwZgOPfsvfEZhxM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VekuV7/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VekuV7/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1170C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723758953;
	bh=MhxOR8fLACEHzQPNZT7dm79pBgwfstCYaDJrAam62yI=;
	h=To:Subject:From:Date:From;
	b=VekuV7/97CpbmS3RENk1YJ9xXSx/kUr4LI9+3I1EDwEyQ2xnG75dZkNh0iMzslMBx
	 eAxjLFTCtodIAF1oFL07ahdBE4sKIpS7zmgw1m+eUHVHxLLK3SNn4WB4nC2UyvVlJ2
	 AV/eN09nRePahHsYlvXFD4NOxA/8VqNIcfZMD0bO3F7Tl9ul6h3bz36NEsEZJChXr7
	 5rwNn3sloWSNK/2q1lJLD0VFT1IfNtXubbt7tFANja6rsJhO5cKkZNo2YQshDBjblB
	 +qCwkrt/u8IOQGfBY3pWCUu+RAXVNq2OIoRbTvdVCuR4qZlStx9bMqJPv5UIDZYilc
	 v/QiYHNWf6SVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AC6C52D7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172375895363.15955.1260883970891116072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aaf5bc65b2f3a20ba0e4767e91312ba7dfbe846915241645cc850bb8ae51677
Date: Thu, 15 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723758953
