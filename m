Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDF022A7E5
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742504994; cv=none; b=WDM0jtcwUojr5ETgjahjeTtDKQ8Oi3WS9uYrLSokitxbN5V2T/5cTrlAN91THiQ6xSD3TkKxtWJXSz3wAyMtcD6bseUPS0Py/Sjg36H+Y1AFWac3e4gNr8ABGgk05NlAjXtCvIe6NkISzIxUwgSIHnTBOvGFemee+MsYpiyQGCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742504994; c=relaxed/simple;
	bh=+6CE9ORulKMhBSjC9A+tssQkOttfnH6PE+RidI1ZuwY=;
	h=To:Subject:From:Message-Id:Date; b=ERuDjly0Y62TtLUw7rdQvfCvlfvMPiBLRfmpCLIh0vpXFabs3wzICq297Z2nGzU97+r4XrmLs60z1W0jPJjz3dhxzio1MBPpx06cUIWL5sIpnOVWGpM4WnEUnryPeNupMr2qD8tf0AnhPmlKmN1rqSwdzsbm9GkdOXAKKtsWVjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noGPKwnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noGPKwnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC00FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742504993;
	bh=+6CE9ORulKMhBSjC9A+tssQkOttfnH6PE+RidI1ZuwY=;
	h=To:Subject:From:Date:From;
	b=noGPKwnKCp5CNa+ibjJdCHe2q/o6bBfiLRirch2ndkw6B1hV9A8803qgmh3HDbvW4
	 eLeS9m0fsCBipFGXNFZ3FJItMtVE9ATY3bW1PdVU+P263hvV1h+fsLWR9ZgtZDbiAX
	 Mo1C15EnXWB98+6pg7CvoPi+hzRztwBsYv9VhCwezxlKIwLhJ+p1nAFZNE3ETq704g
	 jl9oHpr2Iw+0KB0rPEXoY2sSPtCf88WN6rDFAEpRqhoNnSiiV8VHTZKAJu3m5ExWU0
	 qoZJZdDS77wGGJxhZOp6MrYL89TA+OPPNL//aYWJP8Oe5dA8iisv7Oyi1PfJzwtucK
	 44+FEIQ1Ld54w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5357C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250499365.29983.1150704506631342983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5171fbbab5cfa78c97c2d65c6d7bf34ba202089fcfcaa992b7130ac097d2cf22
Date: Thu, 20 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742504993
