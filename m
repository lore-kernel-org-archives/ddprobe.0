Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C6F25487C
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754834995; cv=none; b=eRuSrd2tXdzxqQo2LJ6TQazERwJi12SC7DSD9/yqppDitzE7I+Zd/YFu9cdqEmOiaem9F9fqLdj4BtxrzXDbXk7ZEklhuuKQQwAgr31Lz4Dkp2iWGtmvjkjU1Q2LH3ENnbaGUp0isg4gzK9GFi68oznrIzMrN7Aoj1EsqzxExr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754834995; c=relaxed/simple;
	bh=svB0rpRxknrZtfDOnPwjU0gtRoNMsKECaOfv59l5cLQ=;
	h=To:Subject:From:Message-Id:Date; b=vGFlkiGJQBW/AMwrTPpA4ujhf22SvpK706RxR33cG49QsRds/Z2SWV7X34T54a31cVmYgYVhbPmVGvN4oBiHEGCBLg8YL+z7ZQGVhaecKYjUZ1SR0TYveyM4umt+MMEP9uhyX/QegCXGQZqRCv+4Peo4AK8gnjqRQaafo4tvPBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnOg9KqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnOg9KqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1ECC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754834993;
	bh=svB0rpRxknrZtfDOnPwjU0gtRoNMsKECaOfv59l5cLQ=;
	h=To:Subject:From:Date:From;
	b=SnOg9KqSCv9Eh3MabMJwTwaCWeIjzNdaR6jhRSdd3tHOsk5FdnZHxG3310R6ks7eT
	 ANVN4dQ+uYvgoN4jIHo/wVsKJuWji3EzXaTv4VBeDfUjcvJaTrX2CC1R4aduDiZgR2
	 sO8pfMucMzLRTZuirzp9UHp6qMth1VvnfsakbWFXBQaCTXp8EdNm9jWyTl09n9cL61
	 b1gkQZqYDmE4ANqv9Dnz2rFgAmjrEc9izW01+xYe8eD4uwNS/fwUVg0116VV0Kr0N9
	 HLgWC5q8TmyB0vfOY5Erwd1QI62VT+F0cArDDrVGGKhxizSkCg/646asfDL45tI1dp
	 h/2GKtpnZ4HTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F4C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483499357.20790.1940725718596500294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be9c0b20c4d364574c18dd78dd8d50a841f8372faf34e78dd43c1d44dca4b31
Date: Sun, 10 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754834993
