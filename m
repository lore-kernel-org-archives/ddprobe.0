Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3951E5022
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730845554; cv=none; b=g7jAs8Wr/TDZiHdM3RgUr0nNkgieHE36COOrKbZwPdofuj4d/gmVzuNruY4n8Ioxyc44gjrfmufdCP5xZZSjrdxSmZRdABrfTnpmEqY3Jx4ZcVZ4erhpG3jkXZTb/sKN/hSySZ2NiPBRwFOBlKCl9bry2iMbdKwItsh8HuBBAuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730845554; c=relaxed/simple;
	bh=ahnCkIrFx7rLHACWC7MYXw5o3EnvEWVM/i1l0XWqSP4=;
	h=To:Subject:From:Message-Id:Date; b=QOt1z3X5hC71pZftm5yyQ77vZ1RWDtaWmbvBo6R/MhGvxSI50PmPqsGOc15Vza9ZcUx9CbJ4dVJWteF9RXoOLhmmUHtpwV2METmsWCvsnt9WJtsNiFJZ9G5jis7Q+zdGxfuKN9LdkOEeZGpuYoEaJI/3OwONGXqbNQtY71pu3ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyUitV0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyUitV0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B260CC4CEDB
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730845553;
	bh=ahnCkIrFx7rLHACWC7MYXw5o3EnvEWVM/i1l0XWqSP4=;
	h=To:Subject:From:Date:From;
	b=LyUitV0GaMdmQG8cGf9j8kGMd1Z7Bsz/TyYUAkoGKqFG9bx8KYBVxymnzmO4ujciB
	 A8N5icMGu37lPzcCUjYXyC0R45UDhdH09AICXCX9SkYeczglgJpHux0QMElzjP6RJ4
	 3XFZoZ+ON5Y0RXBkYEL3glDuPGuUo9TFgSW0t3IFEGoiv9Ojniyc3aTCtGE11bMiyU
	 xx1sIE0K9r78hLlpH7LF8iIX1NqYXud7kM00s6m6aK6oMo/F1PlJ3P3Ci9WqHNgV/4
	 sZ2Mel1qVotEYUJydSqhGbWEhb4iSffl8RefRYDIa+6+TeN95Gbw9W9Fc8vGrzxbZu
	 Nc4FECjNkGc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9834DD3E77B
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173084555358.3392.4435296640603266595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e41c02a4059349867de35efb5cd988f6f3c67c847e227c042273d353f99c20
Date: Tue, 05 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730845553
