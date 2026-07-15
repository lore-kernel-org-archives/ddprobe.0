Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662D442BC29
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784078914; cv=none; b=M0olKh7DisWJKTJYnKO/EZF7HVwjAlnXC0Y1xrycHyfIKYdgXiUsEC3uLwgrKtR7+dD9UbRv/1Z9vUEyz+AF0F/21ioL/C4EDLwqs2Hu9Vtkcqc6PmprookPnYBLD7UnUQStWN4HWeos4618wjUrnzpndXqlOuUwhjbN2Ajv6Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784078914; c=relaxed/simple;
	bh=qz7tKPt/8SB157gzOUBGpc3tqrSokKVTx0nnCnN8wAM=;
	h=To:Subject:From:Message-Id:Date; b=pHKDrJ0jZvIoYzi5Zn/YCHCYaOSTTG3wdS5Z2Kv742qHkJNsz9lZN25HKdIKe95wSuq1tTqphc2/rW5suLbLsJQ3oNhb76T7BCPpLswkueZBX4WT/ZPEfxGUa5kefItsSBR1dlWbUSMeOon6qXMbM5dHPIvzViyRouat7NQYIrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzLZmGYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzLZmGYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF5CC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784078913;
	bh=qz7tKPt/8SB157gzOUBGpc3tqrSokKVTx0nnCnN8wAM=;
	h=To:Subject:From:Date:From;
	b=BzLZmGYwt+C0Q2xuJdGDzTkh1mNMXkC8W/lqtIs+qpyorfEH36D+I/SUpyqlNgOz6
	 bFnP4pyVd1czDzqK5iKcJYqXQ3JEs0gMNBXACqpON7RD+EOx78N2dGddWhkxotLSax
	 i08JTQNKFbwzrESQlMeLKAklRGQWBFmpHudkaVuwnS35/dCYRyuWoN6E587tokMOe5
	 VN4gkCXNowoHiaMp+aO2in5RJAqItON3aWSjwXWumai2hJekvGaSIZWIsKjV6SUr/T
	 zek65K6zo6qF9euxkNRUwWt/uwFDRCx674sJNQuktGe1oL+QG64LFWtMU4pISPvId+
	 TIOoZikoLn/7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EA6C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407891372.7620.17136128661867604992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d29690208727d224b6d6f61659c95e3fcd5869e5c960daf723c758dc293f413
Date: Wed, 15 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784078913
