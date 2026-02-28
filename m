Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331012D781B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772310894; cv=none; b=SoH5skO0Fgp4gGNjWxTjU/QObOk4a4apMFxLqgK1qE+uDDAqwk6aGtXfK7uAerJHooQrffoo2RJLyGOHytiLy/gfYhNA3tHXWKPOnwp2wM/MciQu/2iDw0pbRtfN3KUvCdkaNkF2InSunmQnanA/q2s73MFRzXU5+HhBi8mX7q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772310894; c=relaxed/simple;
	bh=WXlClAcrorSQz2oZ9ZojEXS4vIQbyioyzhgEg8DRW/I=;
	h=To:Subject:From:Message-Id:Date; b=LyFzlICENfhd/54zhjHryYdw6cmiVguD4LMd9YVu8dYEptmj0/h/jOdh0vZiZsG8mpN6ClHByYlsPKtowwEcZy9mKWC54meNKDQhr6nfLtxVSl+3fn1XJFPfKq0Ogllz17gu/sGw6UJf5PKBZ7VIG7paiOQGQQ3iTOtoNnUAGWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elJivHFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elJivHFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E77C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772310893;
	bh=WXlClAcrorSQz2oZ9ZojEXS4vIQbyioyzhgEg8DRW/I=;
	h=To:Subject:From:Date:From;
	b=elJivHFS/PCXfJ969+5hFVBOEo9Legetvwl4Zre/UNP6BEQBoQ+HCsWufLOC2n1jf
	 WhcDFnHTouCrX5ucDUiCLIF3WUTYJZHTf1ozd9z1+ABjc/Y3kS9DNsyHtMtKS+ihjG
	 kZKaHldhxt6f5yTyxXX/rDu8VjBn+oGjkSjc5uEsYxrohvPL+weMKYuRQkb+emaK2d
	 Clzh1a9HfWs8Wv+JpMb7RlIcRyQ5z5L2Dzbm8baEoUwnBXmqozylU2I13BD5aMwUer
	 T7dP6RhsMtA6W5Kfzc1xLbD2DMOOmgmecWHtZ5Ar4C5/Ag9Yt0g5YahQwILATpnHIw
	 8N3X/0n2M5ceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E4FEE4FE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231089357.19100.10505783338682063635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ffe086e82b976fac7a4ba8dd7cec97e73ad24cd2585a69b25951e519b2eb9b
Date: Sat, 28 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772310893
