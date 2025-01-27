Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC44647
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737952554; cv=none; b=Vx44smfLgfk4FXGuiYKY+q4sg3yHmleHLRCH9W64on2gRDzP5/3TsREf/W9QRujSi0vGkOp7P643f7mjXqgo9im5ei8hYMT7YyQ8fBnm3c0G+epM6dHwkZ/CQyMEFctilxb0MN19I09jXMKlCAXoQZAMITD4dvS+i+lbBjqPtGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737952554; c=relaxed/simple;
	bh=9wrIWfDIxMrL9rIKqQe8eyhsHinZLmJm/iUAPNYPA44=;
	h=To:Subject:From:Message-Id:Date; b=tevXJeSVBDlQrw1+BNgUs3FgEykAZBGUArJ6IDIiFGEnUiKuh82h0jsfKmK7TC0IJfupp8BCapzbEjPODjqLOJsoiOLKZd/Q3vhU66a304UDuGhzTuRKpQ1lXzCTeLgfm6OnMPEjxMudxE4KpThHXu6E2eV9tknXynTWaR6D7Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo++yaTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo++yaTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725BC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737952553;
	bh=9wrIWfDIxMrL9rIKqQe8eyhsHinZLmJm/iUAPNYPA44=;
	h=To:Subject:From:Date:From;
	b=jo++yaTGTB9b+GIMd+bF8kLhCq9XANiu/jicZdrVTKwvIDdN8yRVtSGi8ryQeqESC
	 7wuQIO2puij+otBhxSz7AyY/uQ7OTyyknl9WGl3Arzd1a7Y4sd0gREotG8pHMmr1+x
	 3aGZ1gcugpx9AYmY7N5PfqQvQVXkafhsB46bohBwproh1UmHs78oRTpl0+jTt3mcRQ
	 HmgOfKv+FXr2qDTjc4OobUvWCoNkHI3hLQ4vUfVboQHQbTql6BdOU1Exf7MnGjNxRc
	 fw0tw8/11whcg6rcqEZ5fPBM2I4muFj/ILFK19LBC15xpfNYlxwTyQr9yRYkCxCTXC
	 k3vO82tWiKLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A0DC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173795255359.32538.9343687329082869156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc86c1cb5e39c6404a8835078aa1abd9f0080b410db294ea89b1c97030359b7
Date: Mon, 27 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737952553
