Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC72AE70
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770780894; cv=none; b=IrN9LDtJM+UEJcHw+jWq18pHSoXnGpNcczxSze17jjU/XPrcDdant95vbMiFGH3YO1T+c9ulD2bUiriuEKRkC/cs++hIMsMBRvVRQNSpLgaWYMxag5f/ge5l93+tKHHdZpElA2J5Do73hcAQr2MCKqWFLSk+W4//8HYoxHQJQxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770780894; c=relaxed/simple;
	bh=EnACjP+Fh2IpjoKtlJl5/DouhquYWzJKuoQpUQzhMyU=;
	h=To:Subject:From:Message-Id:Date; b=E9k7js9fdROqAUytGuJSBmmuu6rAtHqZfKQGIGQodqvAIf1WwGKyw2NTMmBSF/4Du9BE+e3e8VHAExR0B9b6j1a+Zb3DPw8EMi0TwtWbm9cDBMyldowcqMFLAOY0NQH4jM25dATzTXQtF0PclJhIT3/aBrebYxVsFrovN0ttDN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDTnM7YZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDTnM7YZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D24C19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770780893;
	bh=EnACjP+Fh2IpjoKtlJl5/DouhquYWzJKuoQpUQzhMyU=;
	h=To:Subject:From:Date:From;
	b=oDTnM7YZ34UG6G5uVJRZqbOxEq/xvikUqqLkijYFEYmxBDU7FMYmRKF75vVujrBsF
	 LRARNyMKkW7BJ8BqU/IPqfF8QV2+X3pMRwqeFPbACBB3KCv1LHfi9CJwC8WXsq9k7D
	 E+TX2f849mbF4jGZyNCVEkBmEIF/95Lsr6OMWol7wkXy/HUMaAAjoLmncWUhg3B40K
	 UIhF2MOETVUnCmAnC0Y3llY6u7aBb5MHWVxrqPAhTzjxiOUnUMimhWZYevi+oKBWn0
	 Lmt2T8PSqyIEZ53+D8GfrICsa1JAkZozJkaDEghOtVEQa2vSg2lMTa2H++Vle/8VGp
	 Im4kBrruG7oAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA33EEB594B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078089375.7009.663290470997606468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf4797ad32082060d8104cb8124ccf6e33f1d29a235e5a32dc60d6185bea83f
Date: Wed, 11 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770780893
