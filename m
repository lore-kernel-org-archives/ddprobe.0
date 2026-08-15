Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226A73DDDCB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786797034; cv=none; b=DXFHdJAz9rMhl2yHOTXf+yz+qdoj+48KOLarqwsPqv7Rhg0Zkh/nxSZXaor7DGNuo7shoKEad23Ji8VbHhsdenpI7ldkNUVV7klHVKG7GK/UOQWL0TtrSCn8+0oAq5nIaXwXgKr624uvBpDArQvLaBWNcmyy1qFwI/YMHESDmNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786797034; c=relaxed/simple;
	bh=f7zUNzeCWJNcCIQ4ELIlElB6EQ9qSXIJCZoqq4Wbwws=;
	h=To:Subject:From:Message-Id:Date; b=bpM8l9VI6MMvUghiqv9zfnbNfqxhQglTGVlO5Vtd2f+bU+IW8ewlXiZ7kJQ1yKUPvOakCX24rNd5AIqp4I+BKp0AV1xGpbqR8t9koVQjkUQaNEFDqqWdDEYzcn0V9yrxlRPAxaFx5qhcP/pxvg73DsCHDYAl6JfWzzuJEY/Rm5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSY6fTQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSY6fTQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D632FC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786797033;
	bh=f7zUNzeCWJNcCIQ4ELIlElB6EQ9qSXIJCZoqq4Wbwws=;
	h=To:Subject:From:Date:From;
	b=mSY6fTQrVlXXzHeUMniVT0Ilm0PekZWp4AniZrNlCdapSdqt0w4e1N98MaZP2sKqU
	 2eXme2iIIewjei93Qu0xHOZsjXTpI+P/n1+31LuWQj+ryZVsl6t/cgU+qEHxZSkBGW
	 K381ixv6FlpUViuLEGtGvH/mpI7lTH5SkbXVHuFvoqLwp8Y+NKq5Gdj70QnfQb/oDj
	 KviI92Y5fwbNZsd63c+/71qzK4DJQvrp6BK/Riu+1GYs2OFZI1nKdoZ2z9H+nkiRME
	 yM2NEtBR6t+4TWHrQx+qqOO77wA0gjAtlNtgEKzl4UkhvPmhcw33sVrcXe0F9a215F
	 aVW/nMF6tbJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E26C5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679703368.26209.600595080349271164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb12add46973abab91bc877e892aaa0829f3e04864b73ac4aad13ad9a3bca0b
Date: Sat, 15 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786797033
