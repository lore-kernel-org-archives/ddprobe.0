Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BBF21CA13
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751009394; cv=none; b=FGUVAfGgblbKvsQhfmvvykZDIuv9//mG5s4uJpa/hyncZdvB8IccRNNfemdlooLdXuYE1vZB/SuNO36xm/Zg2PcJeBjSQprY6q2SyvkLrYCoMGPQQPxIMJNMqi1Qjs26pCCNl1zh6X+aAoaD9Trjm25zTmE4Wdz546QtJ/rkJqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751009394; c=relaxed/simple;
	bh=bEFxDz9CuRoWJEUi06cAN/JbAgQwXfRsb5KKUU8+WVM=;
	h=To:Subject:From:Message-Id:Date; b=JCWwlAcwgEQVJbZ2L0W4h2A8o75ESFWnrBOnx595IliU1Fh4ZfsR0dOH9SGBc3/gLABXdEoN2TtHJ/Ax1RsOJ6zmNAwYUxOMf1BYE5ki0a+SMqSBsQO+ltIbmpIxt4EPZK8Q7tu9Uc16Wwm1DpoVHS9OOvA82Y5FDyw9FAAjiYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hllS1mWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hllS1mWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B380EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751009393;
	bh=bEFxDz9CuRoWJEUi06cAN/JbAgQwXfRsb5KKUU8+WVM=;
	h=To:Subject:From:Date:From;
	b=hllS1mWPrglkQ8rHj0rIiD560rZx6DdqC8jbpwrfTOPiR/5fuYY6j54I74ebj5d61
	 IjWxAXsLR/LWKrpspvNPRociX6dQBuPJex4W5vpBeTTCgWuUi8eEYL+68zpvcYExoU
	 ZK1v7XwlMKe4d55c6NYwG2KoavmUcMqMKh1PQoeokk+1CLR9VggLxAVayE0igU0ESX
	 BzeHF1p6w/7L0XK/iXaqTI9WBE8kq+jh6g8K8H3Fd4zMfVG+dtwHuvV62Azsne2kx/
	 uUy6TVSjgo1Q2MtsL+pUTY2tA7xD7cQziz1mXA/GnsDXjmi1VSlo2OwM9q0CEpMbuL
	 3nkZp1cKPLj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96346C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100939359.19377.18135302538258639000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4686696e7b27979acd13d2821a0ea65a1aea35d10b60588b773ee8cb2b9288b1
Date: Fri, 27 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751009393
