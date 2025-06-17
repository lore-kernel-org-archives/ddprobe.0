Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C672EBDF9
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750177794; cv=none; b=ro6Ge9w22+uK65iOszqpuOSGfOLcBN+/Bnrn1xVW45WImBKVvdv6Vy71gpdtc0RCbBrD2tgfkJVDLnvCNnNCZ35nt14BtSHmiqx14cCgZ/3/+r7Cih8YhzAUtB7kvl+xav+38UUMWr+p8r4ePbCU5bs0vyO14JU4p8+ZM/A4m9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750177794; c=relaxed/simple;
	bh=Q/Iuq3BcklsZ3Y4OYuZEAO9IJmipe9Fx0bM12eM+40Q=;
	h=To:Subject:From:Message-Id:Date; b=Aad/w9kqDHGiGsmWVKzU37rNR791AUdSrYv5hew5TaVsZlcV/6VI8I9TPsBtSsui/lImFUoEKr9zQQw8jO0CpsRQe+VVgYNbZjK/5YW5dMf95vbdM5w4qjaUVhRxscnaaSpNIBYmtPQXI/IkFB+C0GRpWfMHd9RJPqB4hSgIJtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMLICuo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMLICuo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA13AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750177793;
	bh=Q/Iuq3BcklsZ3Y4OYuZEAO9IJmipe9Fx0bM12eM+40Q=;
	h=To:Subject:From:Date:From;
	b=kMLICuo0SZEFitQfQ9PPXVsOlU3ZtGJJWNCapNHsi6Z4JQ8Sa+l5CvYwDVRZ6A18N
	 EcbeTUDtD8WoiOtOk3J1MXbammdfTxk9yQT7d3IwmoQ2XfVgRol8eeUW/HQx6oRqh3
	 zMv+OsW7ZUx3pmbku7FOKsvqgea1bUoQWKnXLLIaEyWWavR1ToycByJ13uOhLzF0UO
	 TpqwAwopqzMN9QvaL39DovnSy9WVAEe9AyEPdNFVBcT4/b/6rRiq1iAe2DaDnf38Lf
	 6x02f20zm4GtGDc4D2kcGhlOt38wIoA1LqNnVjU/PzMwRoOCcl4EK8JIO3WWA4+tlO
	 vMKWcFOlN9OJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E4FC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017779359.17846.12894036251353617525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a364dd05c8c2286c61d0a21c85233f0f732a5fd04be709059b926baf537ce72
Date: Tue, 17 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750177793
