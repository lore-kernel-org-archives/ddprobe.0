Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C1C2C17A8
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752550794; cv=none; b=lWzK1klTqin0Sc3M4stD78ypwM9m2PfRg9vN7ZInQWJRe+yfcW8E7GjoxPvIzWBv+HWn/A4VIx8x5AC//nIV/oqq4QkbwW7KN4IamU/Qhyb+eeBGOl3upW8wfpl1uWjhOKaVMTC4Bn/akLUD5N+9KRI5rv1yD/c/TU6ulRZd8Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752550794; c=relaxed/simple;
	bh=NlZMol1J+6QzQeZAb9MSwe+WgvGwqCm3EyoeKsjomAY=;
	h=To:Subject:From:Message-Id:Date; b=Ee/MetNiDhMgmLiHDrC27hMqIa5L53fCU0QVGzT3HWSjaCz0CKEHBLpgJRvEk8Jm0/JcljpGMuWrE5cjafmv6+8qL4xkzTs/+ZF5u55Yo0Tl9nh0MrIe8VAkRQTd4gfk3JsSrDftG2f3zYh2M5G8Hjsoq27ch5ZwCxcXfWz2alo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcpG9ZYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcpG9ZYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752550793;
	bh=NlZMol1J+6QzQeZAb9MSwe+WgvGwqCm3EyoeKsjomAY=;
	h=To:Subject:From:Date:From;
	b=bcpG9ZYu3otfk8ajXvV56q/of+J5Df5DGlkdQ4qzyxzLkelF5TMk1GI1KL1f6Wo8F
	 W05GeTACGmgerHDP/WYA8kH2vZ82hOlaW8UuTIDZGf3rjBxU6iLxFcfzfcAFW52Sqf
	 6PUTZl3kDTUl0g9dLq1JUvFOW8Em/pnO6JaBbPGquF2YNGRO3XZcZnORUnfR/Y9A7f
	 qRuFhiquFGqGGTCZP74N17GOu9B8LCFz+otqh9wjnahTFuargk4ytHPVwVuo0jOnUL
	 tDplBgOTStIIWbcrIIfuSEY8dd1Xs06HmwFMRzNjR9mrXi9u6DfMmZhPVVQY74Wy/M
	 UsHnlf/T+dBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F325C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175255079357.11333.922673060889503008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c0a21fbfd57a0e06a84ce1ef9e8a32e9e7011545c1761dfbcca306c06a30dd
Date: Tue, 15 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752550793
