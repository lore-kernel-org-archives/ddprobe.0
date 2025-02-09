Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DAA1CAA99
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739141754; cv=none; b=ghthaL+tl4H/Kh4rPHApyNuyz/Bvnbk+rnC2MX/5fj6XFZlFspfIO3ve3vZwZKr7DWW1ZHB/4KOiyVewbULv0xLEl8xdfUBHSFd7xeeBOh7bD3sUbU3HdGf+1i8kLCwhaQNWsdkt1ycYM3B5NQG27onZnYiHSwL5vyG3xwv28O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739141754; c=relaxed/simple;
	bh=Lg9zjtjfB8Qflt73kVFiP2Vg1s9T0S8/SunkNdMffdE=;
	h=To:Subject:From:Message-Id:Date; b=pBrCiBCZVEYjiYwngqbL61ofy1vD68OAQJpetduw1VnjL6lV9eRQW5e+U1SFtjzIXTcy9GrAaBd3pqob/p/pXTQV8qcVFQmUmqepj+AbCOFu18x1VXqZ9tKNOviL1DhUArrTHEcwLnoK+Ogf6zwA7G4CwaRoj7qcFFx2YtWz4BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDGZZysW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDGZZysW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE943C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739141753;
	bh=Lg9zjtjfB8Qflt73kVFiP2Vg1s9T0S8/SunkNdMffdE=;
	h=To:Subject:From:Date:From;
	b=fDGZZysW39/80sitH4dLF7ewo/vOD6HHrua19+7ut5if+gScQMTVZd2URAwW+yVri
	 fo/0qKzxAhuVfJQ1we3aD5yc4cCI+2wt2PJLLI1C8won+RU07CZELR+9YDRpAvMv53
	 UuQ2G6jzAbVoPrB+W0qYb3HTEre2iR+/BMw1yU5dC72WE9uLzKBKuecI8NRHjicWp7
	 1gSDWFM5eOzhhyR4bJXccpbO7LSKT7dAqbE/LE8XcwjdUPKx+ul8I4XZ0+tPort2+M
	 8gaPrsRuHStGGrypUPLgiJgKlL+luX/7TbK6RWXbydPOkdYgJruYjM+AoW5tYrS1/U
	 j9oBoqPSMrmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F89C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173914175360.16143.8305951367616122299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7c19e7cbb42ae459fbced3abb3cc87cbfa9bb6242cb2a229d64e9124af617f8
Date: Sun, 09 Feb 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739141753
