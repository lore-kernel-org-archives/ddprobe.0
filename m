Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AD8299A87
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762248594; cv=none; b=l4iGLOVfmFXA1K5y9Lp2zdE5gYPiy8oBWdo/+uBQsDvJeaYIhpPLfxFL8RmEkkbMBAgxhoLjtrR54zVsFwP2TjhKPPDLVKQ/c4feU/ZIMVCO44bwyH2Ljf4jTthyW7+dLq2IHKpBJ5z8Zv2sKaj4r675Q7LF7dL5xqlQS1vVBEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762248594; c=relaxed/simple;
	bh=9CEUb8ETGnz0fJlAyiMjFlZcSfVpWW4hSoXzf6Lw1QI=;
	h=To:Subject:From:Message-Id:Date; b=qq+L6dy+AU+emVxD4FRdn0fVC4iOAAwaKzVdVGmY1nKkD9++1gwNKLj8FBuNsLgrpMzwRy5DT914Ovwv9b+nqdbHsDOpEw5+J8xV7LQHbK3CHr0HUBvT4hzklXa+3uPnD9zJaqlBfc3KVuPzy7msYxqVI9+CT9AXQV67xwG2Ce0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLxLH/Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLxLH/Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69E5C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762248593;
	bh=9CEUb8ETGnz0fJlAyiMjFlZcSfVpWW4hSoXzf6Lw1QI=;
	h=To:Subject:From:Date:From;
	b=DLxLH/QxhiP6XWs/QFVO9cl00y4THwMWCmEWX49rsS/ficLDa/FX7xjKbTj1F65CF
	 KUdCvXWGjenMW/NTxE0hCILJ3VH51Aenr65xleF6K9GAkm5tysrZp8ZpSyBabDXwez
	 C517SW5zSwo/hU1DDe1kIpeGCGP7PDHpo/NOtOa7Qx+JjIBzu8Atur8j53jsaTa+sV
	 u5mTCfU+QRaUAaIVfY9G5wMZsXqKL5lRwazApbzv96VeRGWL6fRPr+soGrWWmYiWJj
	 uXFnHP9WbMijl1wgTTy0wL2DeKWz1Q/xo++9Y8BhikgEqkjiVJ8JDnvPgv4QL22WAb
	 8zxEJUc7M9fOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79AACCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224859367.24514.11324217570865419764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68586c30a183fbbb69d90ac6c06f22e00ca39147ca6d8f987f69fbc5fbf3b393
Date: Tue, 04 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762248593
