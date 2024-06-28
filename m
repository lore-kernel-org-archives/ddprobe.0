Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E33F1103
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719569063; cv=none; b=g/Rvf54KVH/RJyrZCJVSQ37r3C2Vz8yM5/Ns+9NcwqCwQalgQdNqv7xovntvl4XPJS0OB+AI+E8kYT3vy2Zxy3zsXNCz3A/nJabCEuEFqwyMSrDHb1vxP5t6RpoxfpQMu58kibxuSFL6uqbhTBkZh1kE1TDRm6C0BPSaxvXYO6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719569063; c=relaxed/simple;
	bh=FXGWmm/GQ1bH7KJM5kjmXkN0X3VdBYXaZXZp/NZ5WFk=;
	h=To:Subject:From:Message-Id:Date; b=rP5a2xuhlcBnFl+kgW7+sW7167od9WJ7yYqcvY+jHhRbVl4cA5xV/QkCfrV7I9WemSD+Qc3S+fyrFwMePnp9mXow3oaSRrHa7Gzq2zEKKsavgeSgM1AkbiF8pbNo+OBD+vpaayiE3WiEX/KXmpvR2eqgay4gSjDb5ZqXHK7hzB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbja9Mw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbja9Mw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF0BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719569062;
	bh=FXGWmm/GQ1bH7KJM5kjmXkN0X3VdBYXaZXZp/NZ5WFk=;
	h=To:Subject:From:Date:From;
	b=jbja9Mw1DQuqNUCN7EHVZv84ZBGle9WrrIcVD78H7JfBBCHoReQ+yHN3Q0FmdE3AG
	 xyuX2npEYft/WiPw6/cxrAgnZsRRW7loA/RfhM/DbFaxjRgz11WQvHtXkzouJHAh1Y
	 nA1r65brVRhs4oiKrZFF/vZ+37H5o1oBvI74IWoRIS4F9JraXaHw70ucjTx5LUuLBs
	 jgD6J+GIxNfJz9q+OZkaPQXTFM8qkj6T2+7+AxAJ+fc0wKXhRXYe79JSTE/OigL9Ai
	 k94FSFPOvsNRdFyKCfSRvpoabnXvHmOI3a4oIQxc17O88v7JfiaRgPNqBpHenFURRE
	 1YuBA3hIkSYxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0DFC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956906277.13078.16764116016950408540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb5535b8ecd66be9c7ff5d0e633371d5e16632f18ec104075afdc1b76e70470
Date: Fri, 28 Jun 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719569062
