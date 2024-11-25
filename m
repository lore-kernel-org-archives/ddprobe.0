Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F69A186294
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732534554; cv=none; b=j6w5EbSjoMh5myKcNNntf1dHXWm6ZOkYqTO2eRSgYRBkG+E9ISZLV65I6QEAGu4c8Q66MK79iWYUYcgnMm6x7vlRfCOpDVRR5BnJi8SrbfLyWRpvVAjX6On8gxQOjH9Se2bHx8z3HjMKYBkvoS+V9BgbqEwB0pUx0Hen+eT2QaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732534554; c=relaxed/simple;
	bh=296PuqiGYZ5KXwbzf1pahMwXucu3+rXAm76fPDMRqbk=;
	h=To:Subject:From:Message-Id:Date; b=T8cRzSSZcIvv7r8nTgiFKzxctrKNvfw7ENcFW75wFARhS4BD7RfucBYOxs8p/kOs4cV63EOuygmP3WNns5kxdXmsQBz5H7z0GMV6M7I5H2ASwZlZePxKL64f38lRksxzwlLCvOhrlhzLVvwI5HcQ2Yhs2hf/xUU/scR0qv6laQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItWKEjPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItWKEjPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5570C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732534553;
	bh=296PuqiGYZ5KXwbzf1pahMwXucu3+rXAm76fPDMRqbk=;
	h=To:Subject:From:Date:From;
	b=ItWKEjPQFu2hWX7PJJrHKSEpPp4UgdDc/ylxDLAbkHu3grqhWdgMW6oRl6+VZfGFU
	 L2Aa/gXmkkex49msRUTkTX9DCXOCdS6DhyJVr4rcJ3on1oV+dQ513wBPjboB/y70mq
	 mWCx10S9gjWzlZFnxSuLhW7dWrJ3jXx+cdX7D/t+ITZ9urphv3MXCB1WSNOnDuXLaF
	 0hh9WUX60UPxiZG6FlI/KT+uCbF9GXZNtQhBRTtWtIKmINDywofI7IrfXwNkoBTAgU
	 lD+FShSrDBN98AbCmRUsjr1Tapg4HxnW8M/D2FO42QLXYjtPbl15RYZ3XjgTqy2CY4
	 TiNdAiFcoUqbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E42CD58067
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173253455363.19921.14127036997341256005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d778aedaa179a0fac44190d5201aef560d8f718cb9d85fd4de5d65582df0b242
Date: Mon, 25 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732534553
