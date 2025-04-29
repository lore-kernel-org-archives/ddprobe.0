Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2902F277032
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745907594; cv=none; b=iZqaYIuU+RZYq2dy9jkHbrgTXPtXS6GDYKMX8+USt6BPZiu/KThoxaD2Xj91UEcHRf04KwV0wjabT7ErLc0MTzrsQNGPkSYeAnTNTdQNK6FGF0nVQOVxntcP9S/dlb/mq4GQ0AJROScVbVjcO7pk9mXmctAbCr9OOyZMDIPl5WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745907594; c=relaxed/simple;
	bh=95b5INjqRcIsZnEB7sEn2TR4p7wElUSpYZRq2qmRrH8=;
	h=To:Subject:From:Message-Id:Date; b=PU0F26NiAi95vfPnDCW7lG4WhlEJSfGHT4QItWZuh89QIa+BKIiSB8+ZduJXdwarUeON8Jm8Xxc2usqUPExXml85H6Ei0QWC9hSuxEGptVZsyO94JxraAiukwtzyryl1wt+dPB2Li4nrEfKjqR8knL7+7TGhiDZ61N/xUMuIvW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBDuLJM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBDuLJM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEF7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745907593;
	bh=95b5INjqRcIsZnEB7sEn2TR4p7wElUSpYZRq2qmRrH8=;
	h=To:Subject:From:Date:From;
	b=gBDuLJM8kDi5LXD5z8h2dwl9kHeyMXCZidGKbX3NLOP5l6fF65TkG/aDgi8e68Zfg
	 oO+TK+JvwxlQ4DEUsbjvVGA0Mqu6uVaW2zIn8yIJgxuxKTqF+aDR7TS5LvJA+kC+rF
	 ZuDQ/Y3MCOTD0IRbJIwqPDMOd3QTOAWu/NgyoOqbtZYyitkC6lL2MxNmhHnqz7iAa9
	 mvBfe2JfomSRPveUv11e8r2pDK/DAZuMqlEcMrbNoc0mRffXRXdoiLo8nKN2xbNeok
	 adOnzAINfa/bK+PZCO7r48pM36yxPpG7MH8DrkAKyFAguqzM3dlnx5DT3ipqZIhAfS
	 Vth7J1tFOQnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC11C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590759357.3056.3067430073654479253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefa6dd4d33155d9a40dc9a55e4619fcc41e23a448c40d30e3626a87828020cd
Date: Tue, 29 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745907593
