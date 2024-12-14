Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284D917BA0
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734168354; cv=none; b=Fza2yKZSS78DeK0qBwJmKyAeU69mXv0+6revSfm6VaPwWEnIESjhjvKMKf0d2Ec7Cf8TI5UmCEn6RDEz063KuAbuNbVe2QvkT97SawL1wNfk1uVPL1hr10RC2gCBpC3Nubfvx94a60OLsOaJZBMSkJfGjEfo0dJMkUgKqA0ZZa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734168354; c=relaxed/simple;
	bh=AdBVy7z74vsv5/y+4W4TqKBa1lTaCjgMFFcq+oB/57g=;
	h=To:Subject:From:Message-Id:Date; b=Dxgb2G2v7Ic4Quflkfli96Fd342yos9FzDKPoUn5NWWXuAQQ2bO5zhYYUAsGYWARbsZcUmLR6YzTFE1IZr6Wj2XqbPHqRE8Bp3PpLNLlUy+cuJDI6q1Ctl/m1eIDbOWEVhI3tizYz4Fumn1g0Cg05S7WBAxL7rBBTLwnR+gOsII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8OGrZV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8OGrZV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D64C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734168353;
	bh=AdBVy7z74vsv5/y+4W4TqKBa1lTaCjgMFFcq+oB/57g=;
	h=To:Subject:From:Date:From;
	b=F8OGrZV8sXXaPLFOIPZS828mYaBcIv5f+zwKAwyDNvLuF/kb8/a3EWWmuCQkUhB94
	 WBksUe4+qM2Wm5ywBaruwm61B6+89JNnzjCdm8wI8Jb10hMRkbL08mWi5p0AjF7BE2
	 YXJmWJqahIwkJj9ItxIDa8GozByfuJY5Gv2t2Gqn72p/QLX5Vlg+epelLQn4wSnvaS
	 /WP5xKjzNwKZgLQenwEydo+VgHapcIAB5GaCfDkbcfV++5zN23ONBRAnsCpcG/tMgv
	 2169VEYiR2E90vg5kctVqWzTtLVB5LZDT8b1x4FGcP/ijRxAw3jx+VVVXMoUVC01Cm
	 vU9rlOHn3vDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB56E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416835359.5460.3268559737782719702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b90ffcfc97157c4171784ae7342539b5b18738ffcabfd20a9a31f79e0582ba
Date: Sat, 14 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734168353
