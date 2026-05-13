Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3463943D4FA
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778683234; cv=none; b=py2dD/AIxHfgXlKnWehEeoEDvvfBxpyKSyL5J7bU7aBTOc2jkCDSnxciT7jreCVIt8xsxnPWeQZujT8NZpf1oRCdkzQ4qPWBLGiJ6HMkYfDkIyBo/HIaA/74Z09yCO03oYmBnD77qawh0Dj56dQIHr+9/RwqBYbHL1vyC5+I6Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778683234; c=relaxed/simple;
	bh=sDLFD+m5GgbJdExXUgLuyx0QTzHSQzsOZHJ7dvYRUs8=;
	h=To:Subject:From:Message-Id:Date; b=udL8YDENZPlfheOMvhaR7r9w1LrK/jTDJOMKcvqYHzAjCTr89hulKViwTlMo2NA0gQ46bmDfFoKyZ/S/007ddFNEZAMEe/ZCr4OF06EhI0ckc3wHYKRX4ftWrQz3L2P0k5Cjzjv6kyL/52vhQVCQ0xSxye7gMDi8t9ku6FjM+eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rprR0uKh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rprR0uKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97B3C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778683233;
	bh=sDLFD+m5GgbJdExXUgLuyx0QTzHSQzsOZHJ7dvYRUs8=;
	h=To:Subject:From:Date:From;
	b=rprR0uKhjm+tpF7ObN+h828NI/i04fDYQTxvAiOvAgVFHeEYrwgBAGz9ScaKB97Ar
	 YbLdvrvnWOhpBkhE4Zn6nIVgMCJ6jxHdgyP7iQCRoTI/IJ1GX3MhLdXuyimgZuZlfA
	 cQUcE7I9wbQIOI9q72IsdZU1K6fwABqLCwfsAMDeB685G/t4xtX5OMWYRNnVyM3SnW
	 k7eGowj2uu6797CevxvGwCcHTqxzKfoLNT2KjWneWEdkKZF2XB9uLelmLshQ9r5PUe
	 XiutfzyQ6BknxCyh+IaJ7UiPZtIguMxCdXDFINjk1OG79OS1vMbcf9xp9lCVScPY5V
	 50krMxwVSJ3Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4902CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868323372.28346.14807565223206395103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0017509830370ac407634a71ee97ac3e4e1e7ea513155b31ca49c5238ae28ea
Date: Wed, 13 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778683233
