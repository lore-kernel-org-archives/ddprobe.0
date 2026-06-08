Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3372E33343C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780935274; cv=none; b=FbJBNtV6JJPcvyR5nbzF7Goa73H4dFSXVwD7t5WDDQSPorVehXsUgdLQmFyAqivJuy5MGXXQdXX/1POXGTyvz7zf4zdr+rHZ/VAG2xhJ2vYmZp5c3lUwaO3kcO5Y8XCJiU4n/QOWp1DMux59FAuv/6PGdCkWFEnmwU+wC4lNru0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780935274; c=relaxed/simple;
	bh=2oJFJnv16P/+5Vv629PlzVOSNu1w1ZBl231M64d+KP4=;
	h=To:Subject:From:Message-Id:Date; b=u+ebcb82mRubEDU5AiD/q5myrVDu3f0dd+cVQBvEz6YK/+PKVn5vJOxPWqXbT69Jd9nmfPewHjZYXBz++bsz+55Lsk5R3uPOj8T1RHzQeIMaNZmGG+6Ezg9862/W2t1UUSTWu970SfxXsDWyynVw/WxGRLDlR28cO9LMaNgT+bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuWproQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuWproQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC702C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780935273;
	bh=2oJFJnv16P/+5Vv629PlzVOSNu1w1ZBl231M64d+KP4=;
	h=To:Subject:From:Date:From;
	b=PuWproQbVvCKld258SigLqe44rkShRc0fuq70vL4hTUBvzGs0xbrZGjkRY8XWxIbA
	 t4cYbcQvM5xIfzPBfQQqtLsGM0nh7lFQfE29uZEo0rjxO+JgyrXbcvlZlgNGG+RK61
	 +ilc7b+0PT+nO4WW7LmY8b4hxVE34nr0FCV8jdvpSYmmhNIZscfd8t2VrpgY1fmCPN
	 3h2SKyv+pT2XEsHyDLH7u6L5OtkaalEHuaQnWB8SPYOqYGJRTrdPzasmIPh2TT3nol
	 GEedOf5gvqXDmcF6h0x+JnOo41ygiYVJn+Ro2WfF6hUjtkWokK6qrPir8rDX7elHP4
	 dnHT1GsixZCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC48CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 16:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093527368.18819.313591774345496903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a05a18ffa96117ca2e8e55040eb381b50494b637ff6f4760c87fca2442a0d6
Date: Mon, 08 Jun 2026 16:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780935273
