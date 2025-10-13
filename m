Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C174F213E6D
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760377793; cv=none; b=YGI1AcM/1jjyW1qL2rlyxzLVbliMrqmSJ9hYX+8PSfp8GiUr8CZ925BQasMn3aYXnv2Su4JXpbyREMT4CzApM1The49/1sWKQRX7hIEu7BxJt3myVSnkaVTpQ98Qpbxt3BeljbN6h7YFhWnfOl36X16cmpv4g1fX8TqHoS9PWXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760377793; c=relaxed/simple;
	bh=YSyEJISwvcaV73o0iwaV8Q4GvKtkvMtgQdBPcQ6yUHw=;
	h=To:Subject:From:Message-Id:Date; b=lUybiBb65nxrQlyH5WTf6XTLrWfQ33wiaqelBeYeTfrcqWdKqeQW0F94O8luTPXOAuwTzFd3jwrtR4n86UDGFUrmGmwnfIqL+dGlcKIquGwzTOM8JYY7xd3C4E1Venc25LT4p1RJf08R2kaGNjsbQGK+lAnVAHgxj95vVSDpJFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMZVb2ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMZVb2ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760377793;
	bh=YSyEJISwvcaV73o0iwaV8Q4GvKtkvMtgQdBPcQ6yUHw=;
	h=To:Subject:From:Date:From;
	b=VMZVb2wsb85cjle7oRhIW1fpnBtJf2DK1Yvoy6TtnCVjcL6twbEXSNBH1r3AdF12K
	 XsE7jbZkq9XZNMTju5/5KI5Z5tgKYwdUchpHC0pVkEGfcmeZh1uq+6QjGkTaWKKzHb
	 cAtEl4imHy4fCWYDy6WXCUzBMRD+HbnzcTN7J7C1R2dkgoZWDZKUeE/xwd/1CPAKk0
	 ci1ntiHfXJxXA3VuFCkbEi/NPVfzFngxhCcQxfBGfML1cL7r6VnZuY2GDCHvoyyHaL
	 ZY71WM+LBEiB8SGPCIwU5Qx3u2gYXwgwthQ4BnbzssAvJZLVyzdY9hYuQqU6vwtMTg
	 KVq/7Mzr3zwMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950FDCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176037779360.12905.12234700111988308599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9145db7fa8f84971a92b3599fe0ab68c2e1b763cf8c6bfdc8b1b14ab8ba5f51a
Date: Mon, 13 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760377793
