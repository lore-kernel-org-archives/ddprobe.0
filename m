Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE6C1DDC5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720617383; cv=none; b=ccmFnDo9R8AsY4PGkwdcYq5R/cbJdfpXI/v3TQK7uw3Y9B1WbuvP6n3zTAuEW88wGa1zDbOkdwtplTbQGxHe+T21iyA8fSfNlX6VwpE2Ah7q/l3G4HacM/7kVDjr/FQ4d06MpWn2dE21JVcyyaFUuFMDoXxK3NaGrsf/95B74pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720617383; c=relaxed/simple;
	bh=Fu3qqVLLPRp4XmAp8We+SPD29mkK8EEIeMDJq8KVY9s=;
	h=To:Subject:From:Message-Id:Date; b=kll4ARwQw5NLZsziX0weh37/aLHOVAYt1PGJSG5mi5Ld+FWB+qT+BW+P6EifvpZQhD2kCb9DObPZdJexwZit7J5IHD9GZGVqSYjc1gmKPy2rIutk1D2oLC35aQJYB82OvWMcNzaKo/uPobBkf12/bhvs0zIcSKHQUaZlLMuSnNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lctnJ/Ud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lctnJ/Ud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94DBC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720617382;
	bh=Fu3qqVLLPRp4XmAp8We+SPD29mkK8EEIeMDJq8KVY9s=;
	h=To:Subject:From:Date:From;
	b=lctnJ/UdJfNXIOjAhLJwOgz00ugZHbfnUWm6IOoT81tZmrVnU5/dBEkudNQu84e4u
	 H7Ds8+B+Ct1I2QbV3pLT46BoiZOaIU5E60pm/7n0T28noz775z4P6iWA9TyJvI2Qh2
	 RHiQbYr1skMACNTif/jmvXqVRA9ohbhhGu8/Szl23AWi/0IzUv38TgdscWBPkuGwHh
	 DU93Wnpj/mbD0JzZOOfiDYeA84i+nN0dV5vgvJktfxDGcdAKWOw8zbC9x4/7zdPgiv
	 88MCpk1UzKDALVuy7exEgWESLxOGGy2Pe0NrxsyUkxH3qS0LvoW6noRZeI7YyzIGgN
	 BMT8oKeSrfxFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5490C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 13:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061738279.31150.8655899583876970096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b7480addcc26fa5be18fe2e6f7287e71a03668faa9eb2bf3012a3d82f3eb30
Date: Wed, 10 Jul 2024 13:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720617382
