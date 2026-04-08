Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A02C1584
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775663134; cv=none; b=rrW8unmh+4rKV5qrlrJH6n3CK0piO2Ns8F7etqjkcaSxpxcGeC4kyjxxPG+S0McNgQ+eF/kqY0gfaBw5ZDi6cQz79LdeZFtaxuOIDvHQI8L49v3FMiVEnF8GaKNMJeOJtajL25L+Za1Mgk+Lq+focZckZVkcdZiIY1CQAY1eS0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775663134; c=relaxed/simple;
	bh=69inPX+ev0dw2w4blB1E963typwAprA5IgYY3eDvl6A=;
	h=To:Subject:From:Message-Id:Date; b=DvOSf4aKFgdVdXRqiffFHycjxs2cwVM0vRVoW+7UIyPB50MM3OvTvEctkIavzqDLMwCMrCjDtQs/fgrKBoX/P46PMFMM5b78n3PfRhcv2pQE+SVUzWZ+O5A+YnLoWtNE5cJPBf2r6qrl2YNI9GDdED8uQWZpQtK7DSZsapyVxPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE4fdElv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE4fdElv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6BDC19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775663133;
	bh=69inPX+ev0dw2w4blB1E963typwAprA5IgYY3eDvl6A=;
	h=To:Subject:From:Date:From;
	b=lE4fdElvPEnw0NbSLnFvnPV6JEMe+BCJjR18610juUVtt1CfjwOabtatDPX0YBS3f
	 rqaD0QLB4D4LRR7gRB3qNipmuE1L1ZJwatEcczDWxu3Ntd6bgtR84eGLR6K/U9gebu
	 8UY913LmQiwyDEHuwN0E+WY+C0QPPGswOzsxmc9PBBGyvOPX10W4PufBFVGSn5p7B8
	 hUTpPb2kkWT01bCp5Tpf+aa2sTDMlC3QQ+FKtgzuIlZtLlwk/p0gE+ggOYKqCAY+Kx
	 AYiHEirEt8zaWvqNym7wqoYHvXjWkEH8C7FsxrW7EfMW8PR2wQtZAq+RfJnHgVTaBS
	 UsLpYTTFKuFbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEE510F9958
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177566313369.26177.8653360328585607833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2661eb04cf246eaddb4db38bdb5e9a4f74b0ab765268169278977857bfcddd7c
Date: Wed, 08 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775663133
