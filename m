Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD631F0E4B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747331394; cv=none; b=TJgBu/oLTfd4JtWyj1pSKda24H4GJFFU8rx+ol1r2AR8YutEgxlqdi10lxKkOij3XLUxl5Pmnt5/o76t1sn4z7sQ7cdCgj4549Ax5sfwe8P7HkVzlRWuAQo84klrO/1BA1pF4HxXyKTXnuUajho7DE1pIwh5l9s95BiCfaX5l34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747331394; c=relaxed/simple;
	bh=tqUxg3pbFTpjTC9zgUTrgebnfC7Grv75nhC6/6ZK0K4=;
	h=To:Subject:From:Message-Id:Date; b=GVRFAnzmMNWz87V2u6qgJ0/HF1ACggPxKfzFyE+N0DhRNLiXyeOu5ic5LpnOWkL4AndqNbbmR+Ept5oUAzyMvGVc3OCs+NnybWOnXK51c4hwGw4/Ru2X2L0S2qzJFgXlnm512T0BGyN3YyU/n/4Aw5BIs01ur2TeG1AM9PYFbtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXM9Zcgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXM9Zcgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9529C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747331393;
	bh=tqUxg3pbFTpjTC9zgUTrgebnfC7Grv75nhC6/6ZK0K4=;
	h=To:Subject:From:Date:From;
	b=MXM9ZcgiwjCej7CS5FcTyGEsvGzD0ajplnJh1ympgy06ykmb1UJ969Xu1MF3gvp6j
	 L74lsIg/qMWMoxq9Haim7G7ymN0Bti0ygsgOQ3BwqdbZr+vMyub+nDuEB66g/KQ3EE
	 pKMP891QvvYHRmBun43Vg+YW1y+vnovuDEdpKf2D1rxNupLxI0EOeVk+teKV9TXgKI
	 R931tDP95dFzTqWWy4fu03Z+wAsed/48QmG7nfh9aYOuTE7GLWs297mUDarwdh6+NE
	 57lEcsex2RUNI2KWzyi9gYoJMC9hg0wnkjbBuNuCyRCeY1kW3cm8M4t+0y/lclPvMZ
	 lf+a5kPsmUu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B16C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733139361.8272.9318556250858645923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5fff04dcb9f9eccd857561610b939710a92b59f15e8b4f615fa90af180e95ed
Date: Thu, 15 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747331393
