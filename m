Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F076148850
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776621454; cv=none; b=kMHd8v1LNuaWPCac3jyJdHydfNNzxr/vagFWXKYkfmUSMe5H1/I7EdtmkjeJxYu1T7w1wGVSGgpFpZ+88SaCkZ8HUuqe4ejS8dI1TMOCXZJUUXFGm1dYMBCWH3EYAVBVlO4wPTkBsqfSAGlu1JMkWcRILc02pUKoaJMLdxpPfKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776621454; c=relaxed/simple;
	bh=wWHZSHUsKb3lBMO+A4wxkPqXloYUl6NZalTwgMciJPI=;
	h=To:Subject:From:Message-Id:Date; b=WLN14YSyjghqeZuByQE7lRkNw36lxWhDOSUeUsa3zbYsNgMwmW1I9wy7hx06iXVMlXGvIo9aUU6wmzuogTRiFTzHYda+2Tv0NqCsr9+IkwNQST9oJRX3heG8muADRd0t+CrU9xAoLF0RyacAjUNDFq+AdZ2rWpKAx4QgiUqxpIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiLL6U3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiLL6U3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB0DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776621453;
	bh=wWHZSHUsKb3lBMO+A4wxkPqXloYUl6NZalTwgMciJPI=;
	h=To:Subject:From:Date:From;
	b=tiLL6U3w2QCrpkAiywHUTXsm8XAwu9BflqVgHloXxZkJssgke+jVOvWWzUx3OYdi3
	 5jszp/bxygk/6j5k69P7NrR7Uj9eibUHN6W63Sura9ffp0EwmAizjizhoBv8FfMg20
	 Vvj95K9TrHjbm/NuBQK3fdTZEvQc0OurlHIjemMczJhAMLp/6UdI7kIx101fUMVK88
	 Ov6i5PBqhn7JIyuwcbvFfB4s4bLsV/mxsPf++KzvoXdRUtUHxCgBA3tsOq8yGF8toP
	 nTnCMnwEbuF5p99RT5VeWpjYHdb1QvmTyENYKXjQfPTmCQroPRE4uAx9D/UqDEAtPq
	 SeCz7CzdsojvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9173EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662145368.31057.15091547031156105022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0e0bddce0bcded6207aaa0916067611f2fc02928bbdd4089ee869b0798c11d
Date: Sun, 19 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776621453
