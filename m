Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F45381A4
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716797063; cv=none; b=V9BChIA5UbHg+M2IU2dGWnoBbmXy4d20bmB5841Tl8H4Gc7yn/DpVl8ZB9lfL6Ad9FSnNenvRilNj3lyDFfDrWumrGDxH9hLPKppE7qHmn202w8koE2pcqK47gxWBuY2lhbGWgcrvpYUMBTZ2idSEcuX8230qp2S+DaAY873uZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716797063; c=relaxed/simple;
	bh=ppkTC7fJiref19hb1L4c0tWWPrdqA5gBFUKv2AqzYIQ=;
	h=To:Subject:From:Message-Id:Date; b=eaY4wqH03t7Iolm3HWGx2j2074oOlOHP/hs3CHVqDoR8gu+ROTXYUqlOorhXcOO4baoY2xsgGf6fm7yjsuzQX/8Z6IzqlekaQmFTbhk7xeNiwsQPVGrJ8cucnxQrCm+azu8t+PpgEb+utGxU7F+J23te4aCb50LgjlDvmvEe138=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnM5H6Sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnM5H6Sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB6A6C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716797063;
	bh=ppkTC7fJiref19hb1L4c0tWWPrdqA5gBFUKv2AqzYIQ=;
	h=To:Subject:From:Date:From;
	b=cnM5H6SvY8pJc3J/hThNoPt2GSZacuLKB3+CZoTaIfEzI+4PAzL+xEs8XSH/48aRu
	 VI79uyEUbT+loKcE/ryW2pzt7zoT81VRoWwTuQLvKkdsQfDo6aQyIAiGGKf/wepgjo
	 VBh0chQGBo9kRCkhxftUcV15Ws3E995U47R4Z4MlgNpsZSjKlBkqMf/MYOThalmJS4
	 tXWWROE2KQr600tR0W2XwtEbLs0/2GgzQCgf56Z9SV5jfJBVYD84L4SP5MNEzWt+22
	 Jq+mEuOOKNkNkgQS6FiWfiz5wUBU406fk7/TDG6YfNLSw14LWyIZ3X8fInN6vqNP6R
	 TrexPwuO0SnXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8485C25B7D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679706287.20813.16911701970586259309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528732f1dbd73d6d8ab0faef25d52001bb4a2c2b7087120366f81f6afa793d31
Date: Mon, 27 May 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716797062
