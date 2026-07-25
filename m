Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DE730DEDC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785009034; cv=none; b=OoQDTQGTEajOg9czwy42XFweasA9NRhLAYuLSgwPaglyxLXRzuLT9le//RKBn6knOrLcv9INomYNKjDO/ozBHt2As7QLNSZ0wZ/kEaIKCx614yPvn7DPL4ynKVcozbanxMTe+le4PdI6yTiT3yfGaFAoalrb18ZN5mSNHEbxXGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785009034; c=relaxed/simple;
	bh=ECjfbdqfSQP6nOAOaEP2v0RgQbn2uy5y6Jzkb/ytU08=;
	h=To:Subject:From:Message-Id:Date; b=CAUTsxAicZc51K4O8jZ0NCSRDRMl8i0lZ819TZTKMQAZNdYCOZuhynjuMdiCt871x9UfOnJ0zFBlK2romFQTBC+DbKoZq6YAFjZS6imvvByPfgpr5sT6rSkTJThQXn4IFrAMYhfWj3mZI1YWJIRqrj8eRPbukMYGd36LeeeJ5ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhZdksPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhZdksPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE49C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785009033;
	bh=ECjfbdqfSQP6nOAOaEP2v0RgQbn2uy5y6Jzkb/ytU08=;
	h=To:Subject:From:Date:From;
	b=HhZdksPP8T2f8p4NXfQahU3xEVuns7hN615Zci3VFQKUsIgLf3FLvRdPIFX27XjyD
	 1Z+7K0+tWyJKMvQk79GZkpuVErZT/JFzdMT3h7DM882CFAwUJIoNhs9GD7jjhAhhyh
	 Nre+RQOHvTbVtI68WxvHyIwSfOsbPftOTjE1EwPyhr8nWbZBQv/HC8NYI7BOdzEgaj
	 0C0QbvcwKSFJ+rapdJq6rfwzrJ5MaRh4h6o0iPO8yOFX0UDnwuFDN94pzpvBemROWg
	 l2kr6qmwYjkRULgpeKocDbdbm/CmxUHqELjcH6T8OOqe1MuQL5i1I9ZUyZcKaXVMLt
	 cqVHe6jnL/Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD79C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178500903368.19612.17015628208170751021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3d10ced102a6d59e879e098010301a089083bf15fd11ae250d2913a3a8b2c0
Date: Sat, 25 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785009033
