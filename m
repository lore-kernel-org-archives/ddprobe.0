Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344BD2DC77B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769492634; cv=none; b=HMVPh5I+W8xg08k4uNSmixhhnGeljIOns/StrjvCkB3PsM/PsRPuAAyDEhzhxoW0zf0gk0QQbRsKW8rKZJsLLq+VWT5WTLJBOztiDGmpIggkHNfuBKmJxfOWZhFg6LyeY8RFFbMZihDWz3HMaXLCfcbzLOx0/xOoj9HiD7b1B3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769492634; c=relaxed/simple;
	bh=DIKeBIVcmUNIC58sWTyvIaG0bMNn+/bne8GI5IskFrE=;
	h=To:Subject:From:Message-Id:Date; b=MimDjS6GdvcuKhVtOMB+nU4ufYAq0dGrx1XPyP4jTkfyD4X6zqeOsYO4TViVXtxLH/en5OXEwbEMvia1jqq2wKrz88/P1ipo+cADgYoYSSm4bOZS1h05y8bH3A6zECLFzozmMTRkOrKTIClXBHt64QuY+HdnAVewZIHXjWmTacA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrzpXWKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrzpXWKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B4EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769492633;
	bh=DIKeBIVcmUNIC58sWTyvIaG0bMNn+/bne8GI5IskFrE=;
	h=To:Subject:From:Date:From;
	b=NrzpXWKtxHp7Z4e34fb7C3hQFyeDh0VAYJ49eiGzqDPdvxhJOaOq8Vi/mi5IyWygq
	 u0mN0FUzsHBI07rsCq78MhlILUPCFcuIWPKxPW/yn+Btru7mlFhJw0hpRIeJ8r/K1X
	 otNuqB9SMTHM8oMbcT1fMo3R5CoQYKKan3izmrb1RAb9bSyHeyu789OrV/U7e8bM8i
	 +4UhllOBFgYm835ywf/7r77gImtu/F92HmNQGqzZAAmxLqL/Ziv7yclpY3LQpcJJNM
	 Dw65v8L898lW4803CI8rHB+c8ZuLQu5rEYdAKsxhhDm02oZSxR5dlxcBL7iZx3eEgS
	 8kK+t7vjRI8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F216D25934
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949263362.5000.17149531188020984836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ca6a1e10404337cfcec4e64333aeeafcc4a4a914509fe9911b82a5f0987279
Date: Tue, 27 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769492633
