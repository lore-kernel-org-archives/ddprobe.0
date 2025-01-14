Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4832144D4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736891154; cv=none; b=vGpmJYPYAfIdpogE1v3qCuyOWjmNsA+OBxe2cgqK2AknW3Fzm5mQcf4LcunMQNL5DDgc+ByVqkYdr0GX0wGTMuRA+CqOkxuaaLQJaCUeM4QPcQXjWYz+68VWGh5lMeynlrjio++D6ufIGoli2uuQQSFkYW/Z3AmDo9xkUrWruRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736891154; c=relaxed/simple;
	bh=GycsxGQVskflOFGNJC9eDpVwSPQ6ecTQtqELG0pcJTs=;
	h=To:Subject:From:Message-Id:Date; b=UM++tE8V3E5PWRKO9mcJAy8MDzc/DbN0yDHOlH/xbYr7PGbD0QRlJqatSvvZf5XjqMqMyBGewfufHHcn/V24vSR+AoUToJ2C66XOfEAi5rt0+fhizkPvzIoOTMSHwA37ipv/S/ldN5THrOkMbD6PHaMhmlShuPvAw7vy3NLOKtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ce4sZFCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ce4sZFCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93E7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736891153;
	bh=GycsxGQVskflOFGNJC9eDpVwSPQ6ecTQtqELG0pcJTs=;
	h=To:Subject:From:Date:From;
	b=ce4sZFCxOHYt2xlli189EP0xRRSPkpy6aUJYQnrdCnpM7K9kmCuMVn7T2DnjTdjgO
	 dOro8S+XnHuN7FqdWhP+PyQPDwwBJbVSSbeUq15RDvVY1+6dK/rd7yY6e+OuJZ6p0O
	 5M6xgDBtqeuz5d6+jfF33rzFmkIxBzx3XoUhEMwrH0zu1f/amRKEqJBrjefwv6tnsN
	 jkL8pyZUzJDCc0IikxjDm70Celk+ygp54CR2G+46OD5kL9Z91Lpqr0Ej0YsyReF5zI
	 6amyjnjwRHfUbh47L0cHl6ZZ6L9Z8xR1g5MqTLgHbkSzYc2qSJ1IjF5bqiHKMGczRs
	 1xJ8qDTyL2ydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E26C02185
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689115366.2432.12967530907865828510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a69777a9840a3b8fbd503a52828a384abe5e7cee574ffda43c843dae7eecfc
Date: Tue, 14 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736891153
