Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA9A1EFF8D
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771797894; cv=none; b=hdHm3lpjY+9Q+SwM0N6Mf8Ji6ABgLqlzMqpkvk/7EMvQ6JasbvQf8+D+JnvaUzBTkzcsKBV892fpWT5b4qhAwyWnuMzDuk9O6RtaaryZksSog/N51LbMJUz0SOEb/XBoBe0Mc0fqKO0H3PzaKvCGGGpmLRn47mGz3IXFx0LysK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771797894; c=relaxed/simple;
	bh=vFGHXhSBUKXiCpugBDQ9KdfplXumMOgT5wuxjaXNSW0=;
	h=To:Subject:From:Message-Id:Date; b=N8IQ7kZWYg7e6cwMXdC07/mGZz04ZKZnDvK8Y/YJqvlLfwVnuwMLWDFQggogKLc2NdlJmyeY4/Cm0Or+teN32m1ux+y+vPRv/UufwwpkA7yw26y4uK41QOrG85wHLZbmP4Ja8u6t37z81Ql2RJP0Y8gHzzUZvsa82+U7OQs80YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pu2QISHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pu2QISHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A5DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771797893;
	bh=vFGHXhSBUKXiCpugBDQ9KdfplXumMOgT5wuxjaXNSW0=;
	h=To:Subject:From:Date:From;
	b=pu2QISHZx98k80m/nzDsZeSat5/eb4kD67d6sF16IIsC4o3523slwIk1yXIMgJF/U
	 Yvm46fx5PLvopL/pw4Qjp+AAdFbdw4jP7ivLMetBsQaqA1BkkbX3YU8r8ZPCITBLrx
	 BEHcOF5uwNNpBAo2e5ak4KHjjilg+6L8vwrtOo/CFj74Dsz9mHWKU6cgJlyNUqMuvc
	 bD1F5QlunO1KjZmcUZEPtjkRNKsLR9OKx1XsYhxnSBPFCtDqQfDwDJ9SDu41bK5z1S
	 tdKfMtmWohRjYMTVSzjzDUfNjqq9kWKKak7nOZISI54GAFthEA2YAMrp2X8ehOHWy3
	 0gKkDP81YwiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248EC636C4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179789359.18860.14093232259258122753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496fdbdeed3f0c7a9f4c389c2a025ace64653fd8451a82af488339472ce4b369
Date: Sun, 22 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771797893
