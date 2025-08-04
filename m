Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D8F235C1E
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754293794; cv=none; b=B+AQBlnn9MpYa53TJDMCqY8NnUoJ19Qakq4R9ClZGJUTk2kggJhLG0+3wt3GH35/5jNVtctlm4Nrtc1zxJmRDZL1E7XUgFLD7D71QMTDdJhOM4whykS+WDbtNb0051KfIaBoK2bVqOu9jFWYoCeMmPViKWAFkgk1sxJyKW2x+w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754293794; c=relaxed/simple;
	bh=hHn/njsQaKU3X7Bz8w1N1glBKiWU8hmMBR9nzcLo3QY=;
	h=To:Subject:From:Message-Id:Date; b=opDMlQCW8Sf0YhLN/jWuZUhd0qFPg1/MeMjVD1BiNFVQDSEcCqPgoA353h0bXJQR+2uy1tcwGpZn0X9fZjLp7V9U/B+6a1ohc7hBPmtQY/V1EyUJ3+Z5ABa37ALlDUgt95kk62lXIvTltc2d3xnRbPxFRX/XW02WKWCjVWtNhL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5795PEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5795PEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD80C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754293793;
	bh=hHn/njsQaKU3X7Bz8w1N1glBKiWU8hmMBR9nzcLo3QY=;
	h=To:Subject:From:Date:From;
	b=X5795PEX651dnh45ACf6jM3NC221lXtfKuY1DZEj9GeOCS/C4MRukn6KWhYbCCJDD
	 ct4QUkt6phz+OuWY8/oY5P056OG/UNe8t3dxntXuuOyBs9RUQtlGK+Pp78nNLfhyDH
	 2AvYjIPMjUR0c9PO4o3vj59JK6a24omDoCSwnSciywYVgSsrNO9CNitNK1Db3xKD6x
	 lUgTXzRcjWORbitYt/iSaQt4DrEl7USHsFNUw8E1wXq8gCUxYXINfTqUp2GQoAB5yJ
	 9pQZDyvkXZiMEgcCquzOp43vJ9bTVnRyhhhXZBtsD5igkyMY/ND0hWSWsaiN3aSeh8
	 28QnOCrwBWbow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB03C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429379357.24262.6518626365029527836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ecfeba53670bc589d5f49e203f3e6316212b8777ee5c1c7082aefe81ea8d43
Date: Mon, 04 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754293793
