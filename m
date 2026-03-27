Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6B634B1A1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774653894; cv=none; b=lOfOxtoMVV3fKDP3kHSQT/2OCYebwb2tig1BSd/Zr5ZESbWOOZaJ+rKjjZ8rj/emtaBzYxlOcix3ecMbyYMUTr9+ticRyUaQ6qlJHk/Sc866jbd52kezsy4xmvOfB2bazH2G+s3AQ9CshTMC/cu/6FXPEW9b9YZIOsfYhMF8qAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774653894; c=relaxed/simple;
	bh=F11hDXdS77u7Z6YGUoh4GaFzPB+jJ3L10hPKRu5Fv8s=;
	h=To:Subject:From:Message-Id:Date; b=RnDUa7Z4mIjkb02P8011IfWS3SzL81rRO+0zkfaTFysWoxVKP8hqQzSABlULeTXVcf/hg1uNpvk5o8VtfJT4XACIY1XL1kAAtRUfwksI011Nzf6RUABjRmE4TVVn0R3zQsLJ1eQ23SYHDRRSz8dOB2gN7HwUQrit/51jxtvjG9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tszha4t7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tszha4t7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2FC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774653893;
	bh=F11hDXdS77u7Z6YGUoh4GaFzPB+jJ3L10hPKRu5Fv8s=;
	h=To:Subject:From:Date:From;
	b=tszha4t7+L6mTr+SDdnGaF6ue8kon1n6fzPemCRaPNQsOjAf5xTw49KQc/6kBIly+
	 /qD53zGkSXmAljfgV+IRepY06NlRAh0M2ssDJucJ6LVO7gcxGK4YbI8qFLpNtKRm4k
	 ly4cD4JPbRZNbk6c5hNV1oGa7zRw3buAtJp6cSLBMQkB01eWy2yfIMN+uzKNr2524+
	 RDnOZSAiESdsFtLMSTksMJRCY3DEjlHEAJVrKuqMLMxaYFzq6XryRIHzu9ziuHrX0A
	 Xtvivg8LVGE9u236K0bgAZhdMNCcLsw+NjrbivBPTtCb0yMXGjfiKYigiJIG8idxbL
	 yfl53Mb6cDSqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F210F287A
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465389358.32091.1336992129299357513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff60a249b191502736f82f1d5de508f886ab119fb88f20602c5fe2f2d1652e20
Date: Fri, 27 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774653893
