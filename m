Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CF7153BED
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747466394; cv=none; b=Ik7R1Wkotj/vd5RdZf2f03YSdyIuOnxlBTNI1VDFkmGp3U1QYh7GcN6Y8iIYc1tqpvtYVmT48s4TIszotnsY4LMlP02WZpW8lA58plDn94c7i0VjEfXTkcV9GM9OZ01tC5tXdD6prQMTFrXB/SqpTicKGyOGzgfQxCFP6VCuBi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747466394; c=relaxed/simple;
	bh=upyhIrN908SC/peyOEcppwArug+Ju3QRGXupM9iEOAs=;
	h=To:Subject:From:Message-Id:Date; b=GISwprMnTdRUkNmJildy2d7mFRsnTZ656sAXdYRHEQG/e9CGiEZADw8+YcB0fWwfUCIjWDIz7FPyDmZ2LtG6yqDazfDXLQpWMOtL9Llk1EdlvVyTst6xJBwAumI4Hzs2kDNY/Ob935kfzJvfzSVH9UqrXXHEwkplaBoobkd6Fyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivkxdtOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivkxdtOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7056C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747466393;
	bh=upyhIrN908SC/peyOEcppwArug+Ju3QRGXupM9iEOAs=;
	h=To:Subject:From:Date:From;
	b=ivkxdtOMcVG5YmoCgJtV60R9a3csTiSiqRkZKT5LO7xhsKxCPuMEFw2ZQe+44+8cx
	 Xej2dOgq89zp3W8bzje0Rizk8FO+oWMi/3vEVYVFpEWaetCVb9wpRgQ9bG80eyLkjO
	 yP2UDz4JBN2sXpA+1/GR9uQCeQBnU69eiOaV/HUYcWfYT3ZW/p1JPCBzerTBEUVAI1
	 08vEaG2P1XkEjetFDjWgb2Evi9TL+aHkCnnJYLsse6j1LnlVGtrhjg9KZR7d6/wNgS
	 6D0C8WR0r11uzAK+9vqet5NPqqT/xwStqKX6PoB36JnI0/pAb60Xev3/Q153DM6S5T
	 mwH9MxJrVwmZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5BC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746639357.20090.15478444939503899200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1806cc1f2203904984574475aae0b294497133dfcd3cdb91d70edbf8f280abb9
Date: Sat, 17 May 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747466393
