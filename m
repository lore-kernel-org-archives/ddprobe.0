Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9512FCBE1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755179394; cv=none; b=azHT5Bmx/2Lvzv2eXQkGmH5wjZ44nJ3QcRFw4nLzF+yEHZzgqfIZ3J8Wl4A5KVb4HsroLU1W6PsukkuyvSaQhXaFZqJuwqRftNykxKmNZqqF9MVExP2IjNBzXEqJBEKnM/42k82uUAuxu18HVuANxCMpiFHFGgQmvDpbZV4Up+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755179394; c=relaxed/simple;
	bh=myCPMkVLZn7duKT+AThNxjJXlX3nqLYG3gUIsCaTHmY=;
	h=To:Subject:From:Message-Id:Date; b=pEmhWsgtdDURKKkY2aU+lDhEvE+a5e9ANnDfxxD2vfWy0PTw4vzWC2m2cZZEbjUJ/8RVMKu/Rh9jODmdrndPnrzs3z80UNm8Fw2sEX4+cNpUa0KIyrECB3Z6GRqarHSjUSqHkCHtYH09oO2a+Fw00zrL71waXcfHeifb/fN055I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUiTK0Tg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUiTK0Tg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755179393;
	bh=myCPMkVLZn7duKT+AThNxjJXlX3nqLYG3gUIsCaTHmY=;
	h=To:Subject:From:Date:From;
	b=WUiTK0Tg1v7cC4bJ2Q269xJASCCaFt6pxM11gxtGpe3J3fG4A7lO+Irxuz4jBtJ1g
	 i5Ep4rlatacp9f3Z0Ht4UZKLONOr8uveWXucOpjVGOLUSavjOEenaOtoIX0nY/t4kk
	 A28GKg2EzvRamWBRtlpQNt+IU5HNvYrwRFlTNytWGm1YmWgZbEaV1UseQSR9+HEn6F
	 zE1lrec8QAO24INtWtnedXGTZFwxg97BKXli08tFZ7IesjVBwj8OmJU4Jsv9NyceHk
	 5rzBoxEZu7GUaDaYkpJFL1mmYKgcZwbDlXHcp0tDNw2IK3+BkAYA7Jm4jbGineR8WY
	 iQhq8rOkEKL8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA80CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517939357.6764.8904622126522781927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc0ee4a3848c0711f958fc18e24c160c0550f1955b79af0fde187078de3f268
Date: Thu, 14 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755179393
