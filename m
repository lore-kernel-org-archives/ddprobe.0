Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D153AEF2B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768430035; cv=none; b=CUczCETe2zQM98YX4LyrkiCiOMNViPZnnpqodxqPUHi9h+71pbv+JQ1JE2+omOn/rhSr6w+3F3Nsegt7919hcHr2Y/LaC2ZVZW2HF2I03YmK6DNzXj5VNrQ4uf9R2wm6wlQnhqyw2QLP4g5xNmC+s3oyg0EyZCtJGd28l6WLRR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768430035; c=relaxed/simple;
	bh=tTemQjnNQ3wm4vfSsXSgAZ6fureTHjkhTHSaC0Jq/Vw=;
	h=To:Subject:From:Message-Id:Date; b=UC177Gsmn+eum+gJelp0MTP3sLiOKqHkcweNJqQTr8pUbHZrRh0LGb/glF0AmvG7DelEYQ4NpqaMm8aL9Tdck1jYveYXuo9gPc4aakhiwnru6URLDkfCVCKrUmSPX82A96BvP1KR+Ckb4q34tcoDwtQ74qOUaa9mxCSBN34yTMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJPwdjXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJPwdjXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F19BC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768430033;
	bh=tTemQjnNQ3wm4vfSsXSgAZ6fureTHjkhTHSaC0Jq/Vw=;
	h=To:Subject:From:Date:From;
	b=UJPwdjXv9dH3SqXkuXIzW5xFKfIwHzT9On+tTeW67DTWlgKA245yzvGVaxPNWwIVk
	 WrPJu6Q8GE/b5ZDHj344CCTj9fcgpZg2A4g91si9dQWy9QQ8db/4qz6NTfd/tpUo+7
	 I7SRMQ/wLb23hlyL5SaY0caE6GaBEpyi0sAPgdoj6s0W3CaGAwmMeja1uGCPlOsQEp
	 9oPEgdDqEA2W2we0uh7kgaa2th8YQcQH5oudoi4UiT4rLxzJnvEm78EVBNj+//PLZY
	 P3S4KnjYTpLHMwXdh2fXGtMZlZniFnOfa0Kibb/RC0kcTsHYrMQkViBfHBAtsig8Aq
	 /UhMr1gt0APfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6DD3CC84
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176843003358.23176.16854081383908095954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d696ad1ae2b27f6fcf528cfda2301d25eab33b0604b7be51b37751e4613039
Date: Wed, 14 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768430033
