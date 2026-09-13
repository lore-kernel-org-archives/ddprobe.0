Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A3339446D
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789278034; cv=none; b=O7zUvyQav7dQ6ZYBxkX+o7gtzeY0Pf+3ggxBCKZSJ2QVko8INBqTcilB8zR+pqvf1x7XB5WCr+WSfxAKnk9qucuVzDgbXYQuxD9IQQTtfKNLgvXc8TGqw9k9jU8lW8Fzs04hNYlisJ2Be6ZWs6kNMFi4p0xBBDpA9uu3oeJ38o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789278034; c=relaxed/simple;
	bh=6ZQ+Hj3RwAuQbKUj6z/whYCDynN+x1sg/0QfXJIzERw=;
	h=To:Subject:From:Message-Id:Date; b=toMJ8AFLmw3Xgj+IbN29xWZIDEgkS7GDO9u8SSNQUicc/9mTMtvATOr3/8+ORUb6br/BVJw8PpIeSmmMi4dc9YCPu+1Wonp6Wh9qsZrZHawYm5cW8BqVdXg3uRvYjhOA8MRGQJ85nfdUt5HcizYeKlFPtoFrya0FCHk72BuZus4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuPKoE2Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuPKoE2Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B4BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789278033;
	bh=6ZQ+Hj3RwAuQbKUj6z/whYCDynN+x1sg/0QfXJIzERw=;
	h=To:Subject:From:Date:From;
	b=VuPKoE2YuRo/wzMQLPp+F1A72Q+kWXFAoEiFt0gjBXGxJIEDDLgsj6ngd8nYYzH3h
	 MiBGIcBLUoFnntGUSVSDAZngc8LoBYdjIBSnr658Y9n7f6tY1FvZhKoE8O2hDKH/qL
	 tC+BdP750fNYz8GPJ7uM0Xmsqp4fjdgs6kV+sJjR1xUC27D/IMoe3FZjybYyydduOH
	 GN9waoKe/2pyDwxW+UUCRtrCK5tCZjZx5kRzw1Xn80RxTJdGUH1HqlbKDFk8IjfT8i
	 BiL/gu8TZIiDvjUZ98qXKJmXW3Y6cBfboagjrVUaYKIN1WK5JihqCt6qKVFer+6Qx5
	 xm3y6YE69hD/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B27C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927803368.7426.2442772156299145593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9618e09181cbc94693a97ac6623c6b4e8778db7c958fe2df5ab0c4d469a9a69
Date: Sun, 13 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789278033
