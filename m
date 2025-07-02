Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C5419A
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751480394; cv=none; b=hfLroJS8fGZIa+WOmaMoSYxWltdxPT1nSR3cxP1MtaIFrZCfVhxSwNwdpDVn1DPhP7AEUBQMMA2ajmUg/btkJdfad6X0onSaESVKlIHBjIqY1ksDMm7wCSlmsLzbqGbYHIhT4y0Vu7snB2pLHQVfmQ/lf8jQoKQblziEES/6yEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751480394; c=relaxed/simple;
	bh=JeLpTvOvyxpquqDNTko+2nDpXxPxxhnldLLb8BeQ2Zk=;
	h=To:Subject:From:Message-Id:Date; b=uK6HsFzaDDSyHDpcxsQcx8zAHN6UBTkCBOrNt/2/63+JPInInbWLZEue6iaSN8Ourg8zubRCh50StPETa55WoDjmJeZwbPIunrLq/gkz9zAT9f1AsUCa68W7y/rzrbmjzErWDa+9WmtdNkhDgwqMqCMN47Jlr+rQC4kM1jslVGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcEtnKII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcEtnKII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E93DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751480393;
	bh=JeLpTvOvyxpquqDNTko+2nDpXxPxxhnldLLb8BeQ2Zk=;
	h=To:Subject:From:Date:From;
	b=gcEtnKIIf97ijN/pVDy2sOrPYAYB8aQRECsKvEeBIXfRD5X+04H9HObWnrRJYqvzL
	 kWSMw4dnWdRT1oFL+NeNlsNrNxVdvp3XaChc5f2nrLm1ePzbtcVdZMou7WZ90VyLdh
	 mVcdPYuVTr72jptkHv9A9BrFsPhdxo3yzfHiWIq9C9kZTl4+AZphadX3GdHpUacDaf
	 KAWuE0B5t6OkC1c8D6CksD/CNNdNnJPNyj5PXT4KgXIF4uzoTD2+XcGyivBBCcOgB+
	 BAbCBv9to5xqWNFkelRRcXZTYs9Wl5q8ISYLkSaDTDjBug4xbaFZ0ZI+oBrFVSFkQ0
	 RHAXfASRJmmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F985C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148039357.21785.8113184890483810267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e55e79f087772e4876c6366d7b3bcfc59b11ed07e2ebec3896d7adf4ee0d12
Date: Wed, 02 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751480393
