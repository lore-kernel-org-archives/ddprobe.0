Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE62D94BA
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781269594; cv=none; b=P1Ti+iS/XCxwIzawjqOwUuBjHbs6pA67KLTANWb76ZNAbWdkkrKfonBzP7bmO1aMsReItKy+dr7nD+E4JoUmO+edieogi4qgoLvyPeP3S6NibMBje06jRv38QK6+jwF5REYFHKx5SwcpWC0epYZKF4LbIWRYHf40CmOU4bLf1d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781269594; c=relaxed/simple;
	bh=IBThnHWbCp9UFjZCbTtDDplFxjAgyZ/i60Oc4D3CfOQ=;
	h=To:Subject:From:Message-Id:Date; b=K4Yie6FrCIJLE0epbSTrIC57B9miHq2hemhAa9AtYhl0IB0qAdxgzn9OKGQH11/Z545fWpwGKgBwKWyF2Tg12USXiAFeOpm0BD8L6Vm3Z90gGJFPbhN7/+yCwIuk8I5gyaEO3xAb5ymwD1zYk5fWckA9mwmu8dMSV9Zfmq1ZZjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcFI7RuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcFI7RuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EE6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781269593;
	bh=IBThnHWbCp9UFjZCbTtDDplFxjAgyZ/i60Oc4D3CfOQ=;
	h=To:Subject:From:Date:From;
	b=CcFI7RuTpgrFzn0YA+XrS7eAkwCYiRG6Rupkyl08kJcSFTTQ7LbdezqYUkFfkE0/1
	 1zSiNMfmG0T3f3suMCiXdRFzaghyXlgYD3OGUR7koIWfUKhGkEFMwmxhh+YFGfBX6A
	 QAQ6rcfMdtcVDRrLsIDZR+yB4AVlOT9kSQXp0WyBF4WNxue3R0cGzdfVk/HBXMFQgb
	 KNfuuNDLXUVqPSiv3XlKjKqUqxydZ14zHboVThxZLANKJwCmQlYcCV0+no1wzkuqqQ
	 7Lm1NUmB5/blL5/yR2M507JwXC10DCTUOk92RNIiXZTvJaATMuSDibtTfW+FseHHGD
	 21zj//n8gR0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C94CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126959368.4016.10429743865579536100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf21b62f327acf6dbb7f5a46e5fb6bf7319c74c2414228d65a6b56f01efd229
Date: Fri, 12 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781269593
