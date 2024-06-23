Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8B6149E1A
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719145343; cv=none; b=YqwsXTLsUNWuMp/7VO4LBjojZR9gf93rb8COX3iGzLCUsgxHLw+N9x8d7uyVdm8BGjh8G9PNedd7ma7kNmpiogCkf4n/SGCDPz9gKe0QjI5jf5VPQS0Ah2diwfIDSLWapduBGFCum5+xvZHcDVzkeVrZ4wmhwbCNWlIJ8QjK6Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719145343; c=relaxed/simple;
	bh=6Z3QfTPHQOQEFeQ/kPMGXZzmQMgmHIujoF1X9ZiIgoY=;
	h=To:Subject:From:Message-Id:Date; b=XBcoX38nwWrk686Cs/XP4C5lUbVlgRGyNeDbMHnqHQXhQa5Xgh1zY2o23Tsgvea3t7q9OQwVxpz023rzPzy5sAe9MtAFZmYZkwqFswSLWf8rjLvgYzFQBWSHUOCYUFjZhXujo9knzs4fWvQQRJeWRq4BVGaMNrSwjHgoBXp0gSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNpfSXvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNpfSXvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4191C32782
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719145342;
	bh=6Z3QfTPHQOQEFeQ/kPMGXZzmQMgmHIujoF1X9ZiIgoY=;
	h=To:Subject:From:Date:From;
	b=aNpfSXviQJiDyNV9apOb7n0+nbTmwhygRD/gtC1FJA+sS6XtsOgt5k2gbkaDIhOvE
	 Uo2tNtN5kPU9Pibh/T90pbMY4Zz9Y6bFdutqZyGSNMOACFK18GNpkluLrQsxpVw/FT
	 a5WtSqhnpC0Vfxn2Sf/fMZsaPZuwCBH3xsZzOi+bseSRljxzCvxx7gBqbrmfW/s+uD
	 ua95JHTFRUMpQvPo8kDr5+87XLcKRb7Wn7RY1Dde/Vble8cQiPty8kqjkpv613Rkf6
	 1EYXddzqzmv1mcU0evdp9nNk5k4DV3C4xbYXOCYIuDskznjHq7cOkRFPOWot5OUmDb
	 +HVPzJM/XwcDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8E1C2BBCA
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914534276.27503.11468252547376401484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53532cea5c4cd7d6933bdaa1ef4f943fd8c0e1e7ccbaca005d6e7b290f33b750
Date: Sun, 23 Jun 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719145342
