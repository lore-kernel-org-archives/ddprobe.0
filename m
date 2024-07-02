Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E881B4C31
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719928523; cv=none; b=QJWt+l2YHApE5oYq93zVMsi8wOclGjpOBjoxl+qFCDZReW3+AdxT2MngpCnrFhO2bbu6xJY2p+u3erHoylqLnrHdJnu2DTzVyOf5KO5H7XhnfWeMPwcZMg9E1IViNRq8b2/bzQ4bfi5D0la65ssSiGbQHC/87vp2tnNCDZsRZD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719928523; c=relaxed/simple;
	bh=FmbpgHVze8BNfgBwysAJMi48fMCV2o1iqm+d1JMp6mo=;
	h=To:Subject:From:Message-Id:Date; b=Rqo+QrBwukC+milkUFoy4DiwGoKCOoNXv9Cw+ftAjCTSQSIa6wNbl5O72VgPszU94cUJKaj6//fXZS+pwEDBEjbix8gkSDLoGjYt0u34LYsGSrYqvLw2stVx6BzSK3Ob16vgQdqOuLC/zkYL7IGC9DsTIXtcvqmlfdi48Hp/8CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVkN9PgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVkN9PgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1070C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719928522;
	bh=FmbpgHVze8BNfgBwysAJMi48fMCV2o1iqm+d1JMp6mo=;
	h=To:Subject:From:Date:From;
	b=rVkN9PgL3jqBjOJNJCRIetzj6kZG4qsNyVYRAtnptzQ55KE07/caXjAWzzTqKsBb9
	 GbT0JWKkxb/tNuYhP2UTRxZOiqHG3NhgX01FBSBvawjlC89GOIQd1kM27IXe+mcftF
	 Zd3wXnVV1+uX8wIvBwvkqasHD+Nc5rLCi8VuGG8FoHctVusiJBWI5Yrii3kfK/Umjw
	 wGZSQhTAhohHJ9TON1Iq2dNO/kMv6gNivPDy02u4WORoWERqaq1nAjh4G799TcqWXG
	 YtrAjHBG9vSHHdeWjCdoaM/KuFF75p3X3UnBufEAEFgQ56U8Wz6D5pLunSlyKbXdj8
	 Wz4xWuZEExhIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFB0C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 13:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992852283.5570.361365576654691803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc90f3e124d703f2e688e7a04f9bd8b53050ecd3f12217afda1fc92401967887
Date: Tue, 02 Jul 2024 13:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719928522
