Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E744E762DF
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724655354; cv=none; b=hOyM8RWefgoaWSQAYzMgRFGlGpZoE26PMXTpKFtnHNZ7Ewh9ZPPfAGGQ7kAeGGUeXEwItVAdzIz7ezAwxfFNQVahbKdQWfi2N/hsQjA1Mz0CRLIAIHP6MQZjki+Yx/WgiTLVlaWMd3ccyXxjAugpHKCY2o5jVMniO+cJ+PAd6b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724655354; c=relaxed/simple;
	bh=7r+bziZyCe5BdiYARC1eXMErdtxxVJBH8rmD9r8y/00=;
	h=To:Subject:From:Message-Id:Date; b=XoICNBEt5UoIoRxW1bCvdiRI+Zkh+H04hAOWKck12RqjwN5ZukFeL0SO/2fVUblN90pa6AGNb1cSq1VgupzhMpKNYB+1K/wA1GIcxkl5GgwVmhBmsFXFJ9KdWfedpRD/2MrTO4y6CGXkd08VxYOU/oInCadc3qlzbxud02vIdhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AL1Kkwuc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AL1Kkwuc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DFFC93042
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724655353;
	bh=7r+bziZyCe5BdiYARC1eXMErdtxxVJBH8rmD9r8y/00=;
	h=To:Subject:From:Date:From;
	b=AL1Kkwuc2HFEGDxyZIcikKks3EuAbXarHskjD91p/IAI9rr+bDUqFFCN2FF35Za4K
	 vHbkcY85CgvOPadlJCDempd2erNYg6LlzCSz2Y7FaD70xtrPy/8nQkCdFJxffVTyfB
	 AHOP/TfZAVgmUpNo9hmjE1Mc6Q14BbKz6SNkUS0a/VCww44YC0XGE9KtZwncH87Sal
	 qAmaTWuaq/U7zSz0jtL+RjUIgs2N+HyUlx06hav5J3Swnw7N3hyoP+2mFm358wNy5A
	 I8yrGdx82kzpfcZFeiLejG2fCXfC1dDYLfx+CzYpFq2ylE1ezRilMOy96cY/GDrwoM
	 WVfgETdOA8JkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1968C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465535365.10980.8274496472624829026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693ccbe9c06ebbb9a335c6af066430f4822af56d0135a03fb44deb41a1e143a6
Date: Mon, 26 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724655353
