Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E082CAB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738208155; cv=none; b=MXr7XS9yO9fHd8HvgnB6Z9w+GaUjH38wzSO208dYcAq/BgsXWsq7t3DSBhLaCgEpt85NsqcmesPbQgimlQiTu6IM5+EbSlvkMgx4R+xnUREh24riRMhuODvRi1cEtTrkTLQZcKNfX1ahMCm8FnX6gha422dYPJwJDDE18jcZVLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738208155; c=relaxed/simple;
	bh=xZZf0inDiNHWS9oae2EXplITD7ElhCwiMjeRXJ1ZRdk=;
	h=To:Subject:From:Message-Id:Date; b=quK3RnqxtBLtX+Ob17pCL8Alzw35MdelTo0xOiQBm6wa5v+UV/pyUc16GwGTrR3BtQsC3g7o1Zuv1r/rVCtfsbI0S4JcqdHp0Rw4lQUlKIs3odfObqihH3lNCx8MeBNnvaqTHMPh7yqNdHWicUPLwq7Ttptv5esHYM6BEvsQmjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7fPcW15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7fPcW15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCF9C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738208153;
	bh=xZZf0inDiNHWS9oae2EXplITD7ElhCwiMjeRXJ1ZRdk=;
	h=To:Subject:From:Date:From;
	b=d7fPcW15eD8u+wGI5cUNgzueJQb8Tq/xh1ipQy4E5f8mGJzQr6IYGy937x7nHYrOQ
	 xvclRSu0+D0a9gVFnReNfh3RlsTHc2W6+9zQqWHkZ0vWbS1of+ArnBp6dlmyUtVv36
	 kZvyzU5ndu9jNAoQ0D38e7xr8HUllsj8Mh05stYWoXiv+b4r9Hb46iepfuKhnYVb/5
	 4CBq813WXLR7y0DHivZXGIlkzU1N5mLvrajC5B+uQceE3smag+Jwm8EGz8xX+8KsIN
	 JxsRu86a3Fm0tB02sY+mVNmG3kNrHMh7hXz89H9yKlJnCzYSb9KG0RfKmwZALEYX1y
	 ShW3dDc8nxkIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB185C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173820815366.20797.5514960268445956422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3f2aacd77220680a360d55d4346d428c9afb1ec729c545293d5172a1f62315
Date: Thu, 30 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738208153
