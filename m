Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0127218AE2
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773714894; cv=none; b=Az4wx3IsETKZ6IvudN6KjFpLxWclpRH2WBeLGph4FFtIyFBbk/cnlXIQeXBFT59LjF7fadkRUm3UUwy5/It0Ggm2L+JYoalzShOQPWNAjp+CrkY+xPew7ulFumzohQw8+FUicBDXQHiLAU0newV8zk1wxawBtk/LejNvUZC5Q50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773714894; c=relaxed/simple;
	bh=BgwEuCj8cj4OiZG0d9bzmz2u14YHESPXh63Pa6lpyws=;
	h=To:Subject:From:Message-Id:Date; b=nlilLWPXx2VHdk5JAbQORQZL+45GBnVA//QeFFwpLEZKmjSam2iKryVRohjcQPPMZps774tYRqtrNyTS4nMVhRdAVTgkQXRKviMCnuFTlw0AK6nOMKR39X/cmqj+c691TI7hZk09yLNd5TJmJAIiVV7xya+UOWu76iNuerz85yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjRHDtrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjRHDtrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2184C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773714893;
	bh=BgwEuCj8cj4OiZG0d9bzmz2u14YHESPXh63Pa6lpyws=;
	h=To:Subject:From:Date:From;
	b=FjRHDtrqNCwRDpTkXdCMvxcGnatJvkju2VVTTv9dPaBei/W6K1ojeT0rsXroMzcMp
	 +WZUS2QMYI6biyG9Nyb1AK57SHO9gqnfHRj0WSkfcWVL2knwAA8G7ytgx5rc0bgbbi
	 +GkzWm26HL2mjkALNeD7T+jD+p6xP9EsAS4+yFas9m+7+FrbjO3nAbYhs9LsDLTCcU
	 3uKJfGzvpWN1T+4yVLroz4I5EyIbowD/A6sXTebBztUv85NYgKWm79iaQq1rrDqP1U
	 X5qfqaL7IT3tEv1DqgfZK6Vyd7ccePfJR827P+RuJ2ScX4OhZidoQTNIhr8gelLH2q
	 2WMlfpSNZXhqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F9FB5EA6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371489357.28515.10666661797829851817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f389c1ab9d4193c9cef0143c4ac9213f2365b8936893dc0cd66e143b43e174d
Date: Tue, 17 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773714893
