Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8263A6B6A
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790808034; cv=none; b=UGUvSeK7j81Mxx2Tu/IIxqG9O6Kmrf6B524HnCnnWZnupgx2IPWUtSLerYWX4PgwHChJt5RkLRpTF+Uz0Y2V/UV1tk7YKeR9vsTvo0CYai7DRuXScc0bgBBKuliNyD5m54I+eBrpREoZ7uzOJRigpp1Njy15Jsuv9P/SVIFhg50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790808034; c=relaxed/simple;
	bh=nw4NJBjf3HItRAkkI4Zefswgqi6hAYPcspcqzrJkZkU=;
	h=To:Subject:From:Message-Id:Date; b=LaSo8YN6DlJzryyQn9u5sbvbWFa/N6rm9V+ItE0XpPwFR/2dwKq7wUyyPZp04lWrY828Hb+yHaUPYFpBAKCm99wM+v2gT8vg8B9Oai287luBj06O5fvDjizF7FDOQX2fVNzMBRMnINDV8X5UQmgwDS82FuBZ1JK1AUg1v6xXHjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dII7WSbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dII7WSbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5548C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790808033;
	bh=nw4NJBjf3HItRAkkI4Zefswgqi6hAYPcspcqzrJkZkU=;
	h=To:Subject:From:Date:From;
	b=dII7WSbjAwELWQH5FC76GVbTzZDdFq/zftQUoni4TIHJFtfs1h7E6C1ox/UpuI70i
	 DA36/608uTfYL6IX19I5yfAI6b1l0AskdJII8E2etGG2S8Tx6qhQxqf+WW+7OFuAuO
	 9JxEBvROo9TQMzP3ODqe+D/7pOxdnwY9xDiXqgbjI/KT74t+cL0Ye+MtWclDSy5YJC
	 stQnYSExyHhWqP3iCwVKiAIm3F3ppqo5oQehP1WcHFJLd2nOvMhVWAus5kXwVQYEqW
	 1YgEm+U4GyjVOYgNXUDbCFhweZN2va9M0I4C017e713dZPjW7kcolGbkQnNGwlXNKL
	 bv3KdBywEHYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B017DCA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080803369.9076.4832666772458236370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf6c2cf2c9ad38f54affaf391e369e6981b3097f9583038376c7215e38df475
Date: Wed, 30 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790808033
