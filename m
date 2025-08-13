Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438B518B12
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755069594; cv=none; b=PDn0U0p0o6LiNFRMgSZWlYqRHD28Qyeq143+uX7ej+P77FZODBqWoj/t627K0DqS5UnLRdSEEFKXaKI+ZVrphQoLhmby3Wle2Yp7SRUAG6usDPS0u5c7Hj8TkWNmX/hunPmjiW+WTBNy6XMQK7SNpmZoLwzHSvytfO8Box6f9vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755069594; c=relaxed/simple;
	bh=ZIvXABod7OCEnrgvvqcUf9DAIle4L2GcDfFRjMe4QHA=;
	h=To:Subject:From:Message-Id:Date; b=I32gHFAfkuulJ5tj/WDj06Ja8C/DDYWDdzI5fGseAUEhgf+Vk+ki2+fysMt5XAtz6vCe5XjTaTG/ayHr9RYofhIT4M0d40toSctHg75YGenprYO+kvQ5Hv9CzGSm0P5rvrPn+Tg11jUkIPBSffaMU1dkVIcxVlX2JixyXxqylw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1QiDrox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1QiDrox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A8BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755069593;
	bh=ZIvXABod7OCEnrgvvqcUf9DAIle4L2GcDfFRjMe4QHA=;
	h=To:Subject:From:Date:From;
	b=B1QiDroxRW6gpjDH5Z0uUnnF/T1Wu2gq/1M4tBNg1mLdxtQq9PCh/U1+0kl/Xj0c6
	 v93BKVYIJn67vU+C9NwOiU2wGCal7wGP6T+lOs2gCukNO1WkmsY3flzhUHYzuN3o7X
	 xaFSovulCI0z3o+QoPLK+UMKgMWUSjcMXccIhP4JUdJqRu9YrlRe0ItzJLQ5FzeaFU
	 ZSl0ii/yz/P/p+iMQhG/qaKUZdVhxk241rJy7LIQ/16iS5ojQ1H4ndujjEuyBRJBLC
	 NXVqKZ1KCKvW7761+n+cda0O3S8biAuSYUoDgingTuwBSVsi8pPW6L9N6jtGrzkvSd
	 qJkoPnYKpfzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EFBCA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506959357.4908.11750288344234669335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fcfa1c93aac0409a6fd600e7f805f61a7bf6bbd72880d677cd5f1e720fad65
Date: Wed, 13 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755069593
