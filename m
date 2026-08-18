Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9942FC037
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787074234; cv=none; b=czNdOakfGMtcF0nrQaU5S1XmUyHxHfSLSDTVmexxFNZIOPXU2UEGHGAWJCojmELz2gnIhTUTy64661xevldXXmAtullQdSqvjpx/ebBbUbLZE9xWUQZZ+X585iVXERKoaIOeSh0mUxVqDHpgH//8dvXtBBmXnwuBxrhXVh1KGjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787074234; c=relaxed/simple;
	bh=m4BA8YSQZ6TpuSWH8u0LpkQ3gU0z4JDmHBC5wiPIfTk=;
	h=To:Subject:From:Message-Id:Date; b=I0iSgbbzTqKnxdrExxR57ajOWS9I4qy39GOgrV/jqttKlY9bVI1qaQFX8LRtxrXMl4RCepY/7/3c+YWLs0fSLKnuf2VV/Y8kqCqaroxDQEUJSGrS2+JZ08nzUsUI2TY55rFXnAIaae/4Mg/5M2KKFlvh7uddn79DLIqf+BX/mCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmlY38CN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmlY38CN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F93C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787074233;
	bh=m4BA8YSQZ6TpuSWH8u0LpkQ3gU0z4JDmHBC5wiPIfTk=;
	h=To:Subject:From:Date:From;
	b=jmlY38CNamRNOeyZAIYXv94WUKkKQsXsQoKlhmauHsYa4TFXtj7hbyyiNN1Ly7zty
	 qiXap9J6bt+okd3E1PwtEkZZTm4PsZ8LH9khf4nlBYquaGICffCgcgRvsk7i3pKACy
	 ihDesajDcb4Yh0bLTGzC2hLqqFwgjx4/2TuzEwEXoFrZJn/JsD0qdJq4FoZJ1lL4dO
	 4KkgQoE756l0XEiDbBPh9hCyD5XkAnR6cHcvvUf73PXcaYE0lCILkdBnlnoVAp/BHw
	 7Lkxbl2rtTkf5fLJaCH/K5WJ0tXQo71hUxHUbyomFM2jku115g67+WQSGQ0S3DTS75
	 E1buFJoZ7C0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21EC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707423369.23736.15647954671229981678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77a2459c0db04a2325fd1a725ae8cf1277e33bfc9e7ac1136b00a7f8078ade9
Date: Tue, 18 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787074233
