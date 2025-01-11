Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4463017BA9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736557554; cv=none; b=XZgR+6KYbLk+h428uVFBI6qm8/wSYxrBhiAK4yWVBoPu0gIUho1oiY+HEBB45BKXUSNuZ9AKo3rCbUx1TgwuoExl1kauO8QRk8QJuWpyEnnpSQobJHi4SblTq9/Pa98doqrks7MKK39nTlTjKUlKuBj5VIelktSNRA2tnQw8Vqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736557554; c=relaxed/simple;
	bh=Ad3uPfUd9vkbsobDsPWH6dgl8NiME3mvlZ9JgALzVmk=;
	h=To:Subject:From:Message-Id:Date; b=AHhEnARkeOhvCCfqgq0i8YD36EWryl4LtMUTml6PMzeC0MHaBfFbCQbN0Xb2ktF/zY449tf8XbLLKcF6/SjbvdH4DxzNQVd1zePD+NzQBDdb1Fzgri3Pkjz3wyo3mlIVoJiUq8PRrbzB/18mVJhFv026TpMDX0Mu7kiJWkv02nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdXeF92w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdXeF92w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8685C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736557553;
	bh=Ad3uPfUd9vkbsobDsPWH6dgl8NiME3mvlZ9JgALzVmk=;
	h=To:Subject:From:Date:From;
	b=EdXeF92wa2AkMSujpGSWWyTnE/XHf3bzpKPz3qYazKHFNpz0SEdjXUyxRCi1xh3Ki
	 mtcxFVc06x25MnmITXvTdqGzJRdIcZzsBNxoGC8YSc1p/0jB8sPqsuvo4Q6HFD5mHm
	 1MK0/U7SPPYPQipTuF1siQIE5nCAaV11wC7Ctb+NClTy0Qc0FHyQuijQK7+jKVuIiT
	 LGhU6V4vIAstUxx8hFkj9AuAo4iIDnuC0JeFR33hnq8zd7fBEnTFIwjmQOiYV9dD+4
	 lZtBiedMptttFDeUIYF0+E2IgG4ysyJlk/kw8nrC6/8ED5zMdjHweNBOQZtU/JXKON
	 4++5Q+uEtsi0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97151E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655755359.31689.12992236987815830706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60917db3326e2fd345cbe10e8692e9d529ae13196434b095890c1cb020039876
Date: Sat, 11 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736557553
