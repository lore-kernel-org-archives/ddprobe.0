Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFEE2F39B4
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765810374; cv=none; b=dHMtDuUwSy3f1UAx2s4j5hqjXMZ9RPeQjfR4fYEGZKZcBDcOy7ms+4Aor5rrkS1P9cmVii9WiPqm8s7xSwvzE3saPRBKMHenuxWSTnSJZMTIQdBsdUcl7J71DbTvwhq/lztwcEIxkJ+2Qd11y8MsclgL9563J6aBgx+2HrlhO8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765810374; c=relaxed/simple;
	bh=Jtu03E8bW+LC9dlFEArbCtLRwWfUjbSZcRVoukfyMbE=;
	h=To:Subject:From:Message-Id:Date; b=bAYgtruUt/MDvE+iNmM/4y/m1ocP6ab6CTNGl50fJxwAJOemvFDsO2OiHx038Na6KLkAPG2fQG5fqLYh5JoA9+3KkRt3zWeha0atmCca1nMCshsbuf8UWMdCDZC7ayKefHnzHIxVT6fFTj7Een1bdSo3r/8qa8Uid5Twu4jPkcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoHKxGNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoHKxGNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD76DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765810373;
	bh=Jtu03E8bW+LC9dlFEArbCtLRwWfUjbSZcRVoukfyMbE=;
	h=To:Subject:From:Date:From;
	b=JoHKxGNvora/TA2ZLj2zKid+55OfvDesXuMLcxaD5+07pHKL7TrSqDESoztvu4eht
	 lu6jIQmY1Wo8ESwnrspRWtue0RoeC4M23lEQLqtrLfu5b4EMfaXAD0Nm9s8mytq7u2
	 NDyRmgC4K6FQfv+r6VHjGckPvDqYpMoLdpZLNoSmJY+9wvaKVdOGOIj7MzHp6m/wO7
	 W1k2zDU29z1GaiLZkzG3Gr16r9StRsPxHPLAXbY8b79/HMlbi9Uz72x+MnEdJb6NOz
	 sZV4/vXSX4kUR0V4NYqYF9gWZ9WEGixkZbejlvmP/KpUMqkL4SKd6vQ5+pkguruhT9
	 niOC6sP0QFT8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCDCD5B172
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581037361.2530.15709772204063900494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d80fc8df55faf59d56da3156848461a3d69f44eee08af2123aa949831149b970
Date: Mon, 15 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765810373
