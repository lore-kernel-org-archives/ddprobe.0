Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72FF025B084
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784495914; cv=none; b=Fp7k+8g1yfzbow36P00s0TZCSUzvMThVEtq/q7fkMpjbJB4T3YmQkK/uuF5It+B6XWG8NIj2suECTo1WBt0TgO+gCtp+eCgSC2eQ9ASkARUioKsYWgAM0Okwe8aafq6gSanvtONPPLEp2XHWDutdTyZnlsvv1vjH3HB7eHnHEzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784495914; c=relaxed/simple;
	bh=eFdz4JaHCD4TEsx3B7W8UajhDcMp8CKLEH3Kx8909rU=;
	h=To:Subject:From:Message-Id:Date; b=uIeKjE1kaUUbZ6EdFb4IkHkIw7/be28Qy1tmiImd3AlLQCtuIZN+sE9oHF8HHqu7PUXJfytm/qBThDQr02AjYGWrw1tyRkS4ee74w1JxclkCGem8kE276Xs4GJ7n6C7/gh6ytK0RDbdT/kisU97y5E3Xn38vwse8nl9wjuTVbD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQ6RtY3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQ6RtY3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2701C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784495913;
	bh=eFdz4JaHCD4TEsx3B7W8UajhDcMp8CKLEH3Kx8909rU=;
	h=To:Subject:From:Date:From;
	b=XQ6RtY3tPF+myqEiwLRqfbe1/CR5aKvk0MxJQ+Z2Ogavhs72EDK5VFZpK+mciaFTs
	 8lqU8JDmT9ua7EYmD+T3tE1V7uMlezXkJJF3hCNNOcchNQYiXNE5ueXTZLWfTSQeer
	 rT/8FurzkD7cBxN3cDS0ekkWpjne6bYafK/a+HvrK+dGNeaszW8rIdgWDPW/6utq5g
	 58b73dJUKUuWniaIv7AEKEPFkm30OqHMhYZeTiNN/PSZbKje7qrnDxdx8mCiUbdoYg
	 fgK+GCYgqBCdT6FfxL1wLIWqZmnAHNEzKupTY4Rt+LRtgPmZJy4YmLEmncPJi113Ga
	 m+4o2d+ko1RDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB1BC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449591373.10706.6468739419090595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4445a1de1453808f87398bae07cd2d080f7fa9d577db401ce1ef52ca65bb3f
Date: Sun, 19 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784495913
