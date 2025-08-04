Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07F26A0AF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754314194; cv=none; b=ot2d2H5Ee6cDIL+gHaSjbDVoUZ/YapoV9R1QmVVaR7/e8IUTOCL8Qbfo3CVOV2k2UUPEIBdXiehZN6d+r/i8BYmVfiQUXhh7pLF540oc6W9s00R6El8eu4svlrxB39yPULhGAJXaWdzaq5hn/krGsH0GZQ8jyAfWsGqSKMnzFYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754314194; c=relaxed/simple;
	bh=UPzwLHxO5sNQXFAos2oxevlfZOyEmbIh5cB3oce0KSw=;
	h=To:Subject:From:Message-Id:Date; b=sVUNk6Dlv+L7gJB9aFLCugUKoSHpnIjbIZUyXHvtKuBJanNdbKgYpeInUVqMsLRbOqzVttjoCTlkWb6Lu36RVf12KEnv7GFxTHWU38jDOhmJcMgFkAjeFjwfGvbwpHFqbhSXfwekf2Guver0z++RFeSfKZLcvTbmwiXUKaBqgBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtGWAO9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtGWAO9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B6EDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754314193;
	bh=UPzwLHxO5sNQXFAos2oxevlfZOyEmbIh5cB3oce0KSw=;
	h=To:Subject:From:Date:From;
	b=DtGWAO9J0gHK7c6s0GD1+nwWSkyPb40MYKX/YV2iIJrhlYoMJ38CnYT2JmhVGTOEu
	 stxdNKBxoZlAf8qcsJ/rXluM6AD+c1B0Ks0NRdl7ZvWGXAsmSk5EHqeugI5WNIe5IR
	 5cgo5Z9sDn8MQX9Zm/aJ3eNugMeWk/QcvaKwAQYHPgMYQ/Z8LHIH79PFIYex6IN0Ox
	 t5Mepu7sf1GrMNBSC6q0/RXVlnNlRldJYlXLfBt8hv2+9NgwkgabxPYpszwScs+FQe
	 KqZ8Au+aELhYW/C9V/jmT5kAAJ9rhbnVE1xwhWpEmLjsSMjnJqxRDuQ6cahmHceH2i
	 tNmOPjJHBz2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DDC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431419357.31447.7764882660308695947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638834bd3d71ad6e3dfecf09406bd325b0f17da0c8b8b0982f10a18dbfb82507
Date: Mon, 04 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754314193
