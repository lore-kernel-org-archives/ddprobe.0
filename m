Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCAC4CF496
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792290034; cv=none; b=PPPd5hCnJhXknhomrmuUHUO6T3vraCEIe42W2f3UyAo9ItzijoSsJg/Clm0/UFtOy7psXNa70gxsZ+PXcywgx4MkAXjjlWQlTahqLypMUbdSbYbDMUOh9G/4EnWmcdodml9e01KT9/dCQ38g4kJl9jILQQ8kNywq2sR02JrS36M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792290034; c=relaxed/simple;
	bh=eYckR9vSee6LVIAFbtIKIItSNsFjT7il7QCKtAlCmD4=;
	h=To:Subject:From:Message-Id:Date; b=SAuSt7Pm4uKnO1f89qelniBA/r1aSe0kAUF/SptU5RcKnSXvoV0Uc+xA4oOlh4ARbwHmSkvEZt/He3PO3QCgDfI9V33igXI23XWi4g+gsHeUZUoZqg7SRjh6aMK3Euo5gm90uG4op3Qn0vbwgcTyrpnZFVb226k3InShKx+rimk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHjxlMn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHjxlMn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53FAC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792290033;
	bh=eYckR9vSee6LVIAFbtIKIItSNsFjT7il7QCKtAlCmD4=;
	h=To:Subject:From:Date:From;
	b=WHjxlMn6MCGUCy+TGeVOdolMEwIihNInMHGKjz+3Kq7nM5uu0seIF4qlWCV7ABtPF
	 IrLgqNTU4MEUNry7NldYgR9Ob+82BBFGghNyIBtwDDKV7gP9G57YFwtD8+uM84VyFf
	 +nTTiSqkM+Fw8o2+95iKejQUdUVHlXS9r9veD9/8oeFGm/23yy3tlwpPBdq/JT4trB
	 ui4ID7hxs7B5BQWEcocusVrXy5C2taxBxoIaKxr0GTFlpkUPQSyxJ/HYV0wN/ZKrxz
	 8FWcawLvFbOCb4sFPbZfHot13VOXiY1uYRX5V5390s6aczZwwKXYEgRJHanB63rcTj
	 0BFyzDs6TdPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28E6CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229003369.23454.5054112112105084164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 044a3211c70e6e51d7e8854cf5aff73faed2d89eec70aef84061a743bed9039d
Date: Sun, 18 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792290033
