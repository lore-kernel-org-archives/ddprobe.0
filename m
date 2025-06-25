Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C291F4297
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750885194; cv=none; b=KGJ/frxDVvMk1llXhC/8s75wDGG26ifJB+Bqw2QyP7LVt4BWykxaUknTeZhMpzzzRM1rN3fz0Xc11gKO7BzL/vvQ3ZLTcEmqCU7Z9RQ1wS9Gc62aBIDuaLIDcbESD+L7nP3utuSoH5Jpkm4UMASHk9Th6+q3ooaj1RqY5+pU9/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750885194; c=relaxed/simple;
	bh=E8JPu+EZIukuQIn+T8VRxsKouqCHGvc39CzeVIjqFNE=;
	h=To:Subject:From:Message-Id:Date; b=eEkN+jCveYHfAHtQHAewU92skqa2IB5z0DRhdJMfgnaFCv3bFyAWWQg4J0mUFaaU5d8bG7Ifp+Geb8UU0i27FTbfIkOowwX2D59O0x/Jz4j8hR2/1eIwjZoRdy46WrXraVlcV6KV7uctqc1H5/gOmH6Ct8yomJ5XjWEBkzpKGEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6OyzBy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6OyzBy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C0C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750885193;
	bh=E8JPu+EZIukuQIn+T8VRxsKouqCHGvc39CzeVIjqFNE=;
	h=To:Subject:From:Date:From;
	b=i6OyzBy64qYxgRFZy0klLKsHUouMp2H3Y0mpuyX/o7ndI3P2ZLllF4ZWrveqwAxlp
	 3eVRDb0X+z/shf5jILcQbpXEP/l8Qhod0qmrN0HpMSr4yffaqky+T7UjoieSd/t27r
	 90KVSDSB544uIjtFBqFLUVaVy9JnP+dOKcTUZWPIIdyY+Hr3XXWt48fEk69nYjrKIM
	 tTwO0Qkc7XWhh0KgDe3dmoGyXRa0b/YPK+RrnS3E6H9qBj56khwJdGbMPFmtDh74bH
	 sAZERX/gk1Gj/ILus1S2WWuQpkC0Gb7as2ltJVwSBVfrV0Aaro3M3X4jaYmEb1oBPx
	 YLYGduOaNthcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D6C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088519358.8305.1755751123340558252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12c56d67d526635df3257bafc4cf0fcb2accc494c33b8ef55371e5f6fd8c177
Date: Wed, 25 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750885193
