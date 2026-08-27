Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5542A1A6811
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787840434; cv=none; b=u74mEaUnEL+wgJ5ZjLdVwH2yg3zssWAoqhV3WXB3z+gs1CDx1b/WgpVodUSq84gsDwAbQLkLucBZO4bIvO8oDPpmNH5kkGQnEhaDc9IsEyuJM2wLXV7qyJJMxCt4dNNHrqkewPLTlRB7Jh2NiV0754oOh226QgelIqVrzUdsXnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787840434; c=relaxed/simple;
	bh=SKtIvwRs9r59ti6krl9FFTJNEHpw0paRibldrjrNeB4=;
	h=To:Subject:From:Message-Id:Date; b=ItTzTYFiMveQq+OQ8FQaItyinOEVw0sZnQ7gvjwZFS3lCY6cG//kwGrqjglJeEWtXT7fQbVDqwSieZq+Xjkb994KHhhP30Kgq5JnvsaIIViMejKuIjEpMaMs4USzeYoGmgbs3YLuDerIQpFu8E2eM7nItrh/93W7jCqben4pqoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9erXg3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9erXg3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD419C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787840433;
	bh=SKtIvwRs9r59ti6krl9FFTJNEHpw0paRibldrjrNeB4=;
	h=To:Subject:From:Date:From;
	b=H9erXg3GaLEkl0xOJO16G8zEXmiRZVDP6xR1X1I0AQUeM9jdLzinIjRcJa0VjqC2B
	 rMHs9AdCBjZ/1kwZaKSN+q7zXmKAVZIum4/oosPBxTeTV/zeFKnF9ciU773BdfH+7W
	 Ew5tbA/q/BLj+0lxGQ60zhcic745f5yPshRUITuccvu1W9AmrKskoQNQKeRT/b70ZU
	 oYMH2azE44CV4/Srp1c6QeCGQ5J+ygRDIpCHNn1krbIACcoQemJFCJaTKjtU6P7eds
	 2lZg8gMAWtu3WCFMVRe6+uzoXTEOaJBgk89/gYxBYIWD68HbhQTTwgjuRpK5w+xM53
	 J4NC4Y1otmFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA417C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784043368.4404.17956289939023898412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f04adde1892c5857220f02cb9d3c48d9f8ee56228bcdad63ad394c1e0bc61d
Date: Thu, 27 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787840433
