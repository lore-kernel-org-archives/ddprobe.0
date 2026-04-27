Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BC8279903
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777332454; cv=none; b=UiU9RKWb+aiRsfhMmzQG/WbkR3LP5Yhc46UhS+1P5eCV3o+XB5XiHleeoMXdQgYWw5xlbECnGXukSGzTjcA6Vw26xyR3009p5RLyPb0xReQmzTGu0CCgr1rsZzy2bGR2u+MMFJL84GwRgaaukRGZF2RVNTxzwjld8NeF8e2PoZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777332454; c=relaxed/simple;
	bh=4vMZLTntBBWQnNWWJ3M+SKb5iL1itwUQuiFSrGBqYl8=;
	h=To:Subject:From:Message-Id:Date; b=NeWHhfaM8EIB+2JZeztcP/dvt3YKCgJ0JRAQjJSUxAEBRBh8bB1+2X3NgbzsPCD4JOTKXokFnO9C1ua1zusWWj1ZAYMUZAzpsJXzv6TecoQVaRWL14xHpHKVSn9u2lCXuf/6FbvMapndqQvUtfcEl11So1cm4Y/fWkTdL0zMRlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jh08OH9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jh08OH9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF3BC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777332453;
	bh=4vMZLTntBBWQnNWWJ3M+SKb5iL1itwUQuiFSrGBqYl8=;
	h=To:Subject:From:Date:From;
	b=Jh08OH9oeFe2cUTkSmeF+Nj2ivs1CTDkJDE+LDTUQqtApf1qcyyu0hy7Hd9mjCcXe
	 h5s+m2gskTStnjI53kmdm19eMibRBeZ7Ur4uXmaIlYPEaW6dj13ozps+eAHrSsSWiJ
	 WW9xAA3hp05aDceI5L8IoCKZOHC7F6RW8JsKRmPCO5DAJYTvlHzi/c3MUokP86o8EQ
	 XnZB9LotAbreYYfmLv3lYrlCRzGmywm04hwx5CJwbcnISAov0BKpMxn4gS451Kfl5x
	 nJ8KiDvNRvzTAJPHOeEKvmXTno7QiHcZVLYJMW8XfUBEfQy1Uc65JNmZQyFc3nLm0/
	 DxuqnyS5Wu7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1ADFF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733245368.491.8521736184540353091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a501a21e7b31b05bffcc0e7f2928b277f0145fb40e2f2a0d83772cfdf53bd537
Date: Mon, 27 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777332453
