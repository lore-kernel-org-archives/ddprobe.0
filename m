Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C9835E1CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782870514; cv=none; b=ceHJamIiJL+PrH8ACIHJkIgpz6LaPRkad5FNQ7EtzxL0k+R0e97wivEmzmT6FatRpZIkGuFicPFrz9K0Oe9GbHqGUh+fo8iQA6Nw/jksxvEbqUJeR03bFM71U7YT746v+FRBwsFhYxmByJBu6JkTuY4elUz3uyJNsQE6gHLcFwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782870514; c=relaxed/simple;
	bh=ec7Y/pGK1+OzyB8KJhMeSrE51t2LPFYg6B90xpLrBPc=;
	h=To:Subject:From:Message-Id:Date; b=GOKZ60PqdAj+5kzVg1afDpYuEsvJvCyzwLXvN7foIAQpFdsn5r8m4F53v6zhRQ5Ew9j/Qg+EwoovtbF3r1lSKvzg+y6xWHJzKvyCBJK5jDBUw50o9NtU1g1TAK3dx1py9lEcpvT+pae7cPm2/H3R5ibCtz/b6mJgwj8a/HtsD00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBiPcjkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBiPcjkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E5FC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782870513;
	bh=ec7Y/pGK1+OzyB8KJhMeSrE51t2LPFYg6B90xpLrBPc=;
	h=To:Subject:From:Date:From;
	b=QBiPcjkfZn6CKKUCR63aBOOauEFi5ToYZvE08+lp+8Al9nUSRQrTaBIvjH2sWu+DE
	 9R/29lWEpTT7KtBOaAoIuW9XTBo9fQ1z6XDKRg9GZDXho8LK+MqNZyzc19ROep18hz
	 ErpcqwYU98FiPyKRbSuUKDo7xGe0ZIDFJ/V6BBxGRTfI/vG87KSdZNq7PfWQ21brSX
	 prq9hsEfS+m0yEXft5FxVMO/ZiqEDFQDhPnGFJnQBNBg26yP6Iqr/J283H36HunvtF
	 1ntI0UsggYQzrtPTlJXyGRJGU+k9gREqWv2lmINUaHkELMyiTBLoIMjjxf/hOFeDXi
	 s/URQldRBPVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE9C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287051368.6397.9662538116023280460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5d168bac52eaaeaa3e1fed5019d5d12bb57581342acbe4083acd5b4192f6c7
Date: Wed, 01 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782870513
