Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28820DF49
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765086774; cv=none; b=BNu6RgZ+bz7Zog1IruDITUkCH0o55MmHiTvTGTClu19O9x/aAJPmdStcpsI9vcfleZoLmq0oPaBIVGzMthyLxC57ZDYDZdoXT/kIAMAUyJGQOUhwb7uKtUJ1ZSfqpfRQV8XNt6aVA48J4d5ky2L0wQ/uZa9FdTwEW2g+zJ5ZJTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765086774; c=relaxed/simple;
	bh=Rl2in4Ym3XJ7lFgJiUCeKY0asQMRUmAfi67OBf/jkgc=;
	h=To:Subject:From:Message-Id:Date; b=LH0knwCRq9dIZu5iW77KgSA2S3lzjDMkgFxeMQuF6G73kQ0Bz3IEqtoyUPCNdw9MA9MpLwIVg/ylfRrRwXzxW6r2xaQgPxfJ75yJmzAozGbHV6uKOs6NojWXyKT7/q6oYRXrAFcz5bjmNaA/+/1X7r1pktXHSlKWUqT85MaLQKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyjtvpoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyjtvpoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F4C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765086773;
	bh=Rl2in4Ym3XJ7lFgJiUCeKY0asQMRUmAfi67OBf/jkgc=;
	h=To:Subject:From:Date:From;
	b=UyjtvpoFSTi7Ak8J+D3+TAr0bfh3jdW8xzP7Wk7xuKiGssK6JMorSdHSI3iAz1vYm
	 sit4pT52tdiZr07GwuoTN011NzoS9U96cEsvmj4Cqxpw76LmcbPVdXVeLZ1vaWNqTi
	 xAesdG8DzXDkYqBZGm9eUVJTCD6hXpGbLmZkpdpRJivr9nyPM82f7LFFA9tEoSpFAd
	 DEcuxtt6q9f7grhgvHPFPpvXZ2ZJ94en7K6gc/BhKNRZPwtXNm0Qjj7RrUhFV9HDoE
	 Czz+MrfWQTFRkPPeK3nnOvKoJcDMc5i9ODPKrSwCz78OeWwS6SH0mwSmSfnLUVZb1D
	 WJoGf+tN3CXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3DD1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508677358.19457.11703617879704490297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da89211d5f8a988e4f9a6b5566a27f1c6188b045c44a8f691a70bb1dac94871
Date: Sun, 07 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765086773
