Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322D91B6544
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737371754; cv=none; b=iFx5+RVeAzhGly309dL1zX+2Z6xpTXjty95eOi563skWFPH6Pvr5Pao60h111z3uJzE0Yrz95PH/RTL1L4ksbh1IDkUi4R9tDdVagqdcKH4eowfhdhPABWhZTAEkq2vKQJYe6w6nqH8Sil+1tNdNaFW0ZfxTfcHlVgQ9C5ERtIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737371754; c=relaxed/simple;
	bh=G0TUUY6fpuE1SDqLw98YBLugimRSl/jjU+wvrxd7ASI=;
	h=To:Subject:From:Message-Id:Date; b=kBKMcbd6m3Jg50UFx8+18RZnka8iHMebwUNrtAToEDh1+AbvQPRT9sV1Qbyb/BkbYMbjOqLJqwDcA41XBJEM0O8CAyknCTFJHncvU/y6MxJRx/mYVLoUPrJphvFe184cYZlS58EwDVu0ktjSatxs8payYE35TiJNZFr20xhHdBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVxkPIGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVxkPIGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A8FC4CEE0
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737371753;
	bh=G0TUUY6fpuE1SDqLw98YBLugimRSl/jjU+wvrxd7ASI=;
	h=To:Subject:From:Date:From;
	b=VVxkPIGyjs0ENSoRmwrqkSKXZX/OSvMfI/kopymxMt5pHm0h7Q8//LQ0Cb+8fljhH
	 AJaiYia/bk8PGwTO860ffxkY3TynwPQPBM+rMnVWjmKzIfY7Cb2o1zaar9qT9VscYn
	 RjVwpXUscVINKxHStRMhdtteu8Y2TR3LBkmxN96phQV9o8vx8yvB4D3zxKxkEYMwWy
	 2WPEjtvmAzqyinqMigoLWcqrCzIwyrGULSFk1WD2x6agZ1V95WxCaHddrT9BsIRRN2
	 05aIRN0EDb8gikjezEMvH6XtWV4HLsfNEXjXYKkaXUW7YJKEH2cJHj+Lshvek0oFzD
	 4QU4Cvy90z3VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95404C02182
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737175359.17034.8113027163456499469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5621b54c53286a9e8900ea82703fb2707973578b263f6298b00ac4d28e9ff783
Date: Mon, 20 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737371753
