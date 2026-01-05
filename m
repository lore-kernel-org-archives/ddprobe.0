Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D472E719C
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767625434; cv=none; b=WUzNQVQ1/uqhBfYnTbNw3hGBUqE3JvuLn5WoRn7n0SXxL5fMahS4rrZ2T+/wgcJBnU8HthnQH8TVhhxetNFXBJGPqKZriJx4mMgijLekIxE5jPcxH/U441GLbivdEGJOvTKOeJ+cfg5a9+QywFJ/yxnHuMPG+U/QA6TGA3JGrcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767625434; c=relaxed/simple;
	bh=OKtq/0B++8CZnd55hRsjweLT2j05MnbXDULbgnq+S7I=;
	h=To:Subject:From:Message-Id:Date; b=UqqwmZb22coTtBq82G62Vjdbznia9OTSdQw4hg1Aoh/Xp3794Yq7pG9PIyK2AWCqzY3kykf5n4Eut0Fq12t6u7y5LwOB64+/alKGTO2/QFIYjFNNeTafBrpnTuLZAzIKTHx7HR8TP2ZVPgg4Jp6/4HOUKIU1GVCgbPLPNMZ5wzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQo3gV4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQo3gV4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3E6C19422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767625433;
	bh=OKtq/0B++8CZnd55hRsjweLT2j05MnbXDULbgnq+S7I=;
	h=To:Subject:From:Date:From;
	b=lQo3gV4y8DJ+oUFXmVv1rsVyZeMfYQpeq9dhENiWBn0ftt1xx1j4ql6oVr4kEqwVg
	 B2ZCk29rk3m9KORNZpePvgL+t/YY/kmoOmpXoho/2CMT04xzOaFiZ5MGvgnn5vgBPU
	 DqznUlALO4Si+19geFJxsoELPABYIsymr1BNWVBUrZWOcyILepv1fCSWCAHH18NV39
	 SgeKR4rV6KXUxQ8lhnMnTZd+YoPRFZ3Svw3SH9BxbJ44tbpf3IIePYXgV2xb5AD5wl
	 IjDUjfOWN3fWzrEqSv/BUVd8osNvP5n3MsvAyYzSLMS61GGzWU53RD+Evk+PZqJdvj
	 qAYFEm2PSdPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90656C79F9D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762543358.583.171997655557380214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e6a64ff704fe1a1316aba376dd4b1804c6f3ab6a12726f7b81be64a37da5c6
Date: Mon, 05 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767625433
