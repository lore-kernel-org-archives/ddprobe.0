Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A46291C1A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750795194; cv=none; b=ZNpKxrcjbd2aOj0QmMq6QmJsZ4dSIWgd+szolNLlx47A6xg3IYV3pwUtmstXKMq21NwzUebAh28AEZI9ijH5YmJx/BcTxzu8cbLJR7jwRNhF2B+dLH1+u1vcyfD7ZzxEUFO7JT2S8PKDYFI9PcK5jLR3jQ8+jcOzQyVTQtIiDeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750795194; c=relaxed/simple;
	bh=+3p5cDvz0bQ8bEGzcYVc1kD+v2ThF2Rws4Mz8riIheY=;
	h=To:Subject:From:Message-Id:Date; b=dKCLLq4i7poVz+slmi58PFvXwnAkkmNs5FXIN9RaOzpzLQ92b8RPL5TRieYJhOCw6RjbcvcZL5YUTXhJ+2y60owEbty3V2rr0rx5O5C6vaccr0Xk3YxwwwQ6+2Yvy5ftxSf5W1AiqQcffz9riFvzVtv/EFPR7s4PKi8t0Q624ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ+fpkct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ+fpkct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750795193;
	bh=+3p5cDvz0bQ8bEGzcYVc1kD+v2ThF2Rws4Mz8riIheY=;
	h=To:Subject:From:Date:From;
	b=fJ+fpkctrVPq8mSBPE6o8znntv+8zdIsurXTLEhEniEKQFCK2PShxPK5D3lT0p35C
	 1mJeGjSaWqFQHNITqyxJKbNb+xPUuss/zeZ24guFv48lG9hjEK7mZX3/bhhK2acG0u
	 dQWsNWBGudJ81H7RTQ41vrK1BriwCa0p9ZdtlR0bzrBgb07+v7JzRX3BL63ycNd+zq
	 ZlTIKlGux5RkkFMBPWVej52WOFeNxCb5BrXzhOZOky/5p9IuA2G2X6kFADvdXJOvYZ
	 5L5uZ0c5AbhrJunZ3mIgl1Fnj2PzpO3vmpZfybVb8jagBEYo+HCt75QrrZeGs16Shz
	 wcMBtDqR8CuzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F380C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079519357.2131.17741413476454732080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f999e48abebbe407a468f010a078e8cdf8b2adc2d811246a643d11b77edf0912
Date: Tue, 24 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750795193
