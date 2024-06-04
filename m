Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0022E64C
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717529783; cv=none; b=MPjSgTNm9zh2o+gBMqu+95ZQiS79uxLIz2mPzSOuUo5GCT+10n4A4APXbpUb67bEiTLSndEO0fCQcn8KbXsIdoyNI1yVfSuCbY6NFz/a0TEgvuBvG+dQ6YAjfKdcEYcHFMNDF0bDM70Zf7y97YGZ2kQ9adZRSYzblx6/uALFLL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717529783; c=relaxed/simple;
	bh=gzFtaNFa+lx2OiwJKvVNcEPmbUpU6f+Y/pwBfJhiuTY=;
	h=To:Subject:From:Message-Id:Date; b=l5nk6tYFmmU5O1UaJwok1S6FHbpXf6YSsE4pPPbHIvbCSNhFmFRuqxo/0GmK2zZyGV3nw1iR3RABH1xeHSVWA3I9yNvJmHahSzlWwItOlidmQfmjdSzQt8RiF1pTyPzWEn7n/sZHuiT83bhrDWdLdfsaOlZaylg2rkNWi1LjEFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXb9dOKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXb9dOKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD54FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717529782;
	bh=gzFtaNFa+lx2OiwJKvVNcEPmbUpU6f+Y/pwBfJhiuTY=;
	h=To:Subject:From:Date:From;
	b=mXb9dOKL4F2dWJRneuGwhcbD4nDTDq2zzY1fcN2bKcV0fdTe6mv0ebizYwV/Fx9sQ
	 sUq5Wksoq9GUOMottOxsZXJyNGdfyJH6+tMv1Y3X2cMeUtEcZia9DuFLSeTirz1KWo
	 y7WjVtw9Q+UklcOQYcD/+UXHvGgqLi3fYuEBOWsj8Vlow/xzDgYmY/puyh8VS16iN/
	 yjoHuGl8Zik8pFt/45/V1jJrqxcvEN/T2JCzj9CiReR5j2i8wqqrbhkbTL/GlgkWS1
	 ObvfFgXF2HmcfZcw4Wnqug02732Q0BajyZeRYvAjBe6sRGKbjW1gM6oJv9PgWlmjFc
	 kAc4OWaWVH9ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD862C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 19:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752978283.32140.10795585785509596816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbab7cd9480afce6c220162a1b1979d942ffe9b3ff0f2c2f661f0ae7c93a1fe
Date: Tue, 04 Jun 2024 19:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717529782
