Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4154D42AA9
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771113294; cv=none; b=gn76Y7Tm7yoqeKwoztYi+uqJjH+2yrU1JFpU3cPxhUi2lzNn2hhuNTkBtc4yazXIrVw2NVhrOQ1g3wjaGPrM/gOliGDizTTwldr2TAhNQLSjMLOunV8o2H5wXcQxzT/VBbYj1s2U83WR/rtUJalHL7+zOL+Bvjg2EjRIRWVAn1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771113294; c=relaxed/simple;
	bh=sKSNIpxgVtjqpLQynsKb5boQbLEba0fAMtp1tXOcjQM=;
	h=To:Subject:From:Message-Id:Date; b=gwvFUQtcqtHfAnc1vy+qpbSxKPq/pjkOR7SvANpzxWukfOA4wwUOaTNqVjU8zy+pdrjBEWqJspIxnbWSHBJcW1NnsocDGnz2Eg8uZgWru1kC/6hHXb2S9Vy6dWqPeGBcw16Feo4Lz8yJvwBiOIHQaG8LfRt7a9CgDXLc12jq7z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2P5TuQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2P5TuQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A6FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771113293;
	bh=sKSNIpxgVtjqpLQynsKb5boQbLEba0fAMtp1tXOcjQM=;
	h=To:Subject:From:Date:From;
	b=Y2P5TuQXWGZD7+CBi+FK7nCnaJ7fDQXj7hWMBLCnRB1wNJ1rMcMHCSuqbrs1LeiBT
	 5NHtDs1rBLGxp0cHOIj4ZFYXCdJNvUTFX+fZP6BnDYdMtf1jci8BSUmqfgd6yCYwzE
	 zYjFzZKuGY5pQNCABGDkbjK+ZkI/0aMMzNhB9q7jsiUcCc4VKIketnkmYTBHGuEjZl
	 HYyIRWntEJwdf7zOSLltKtAZLlZdQdGDJrxHFprislEuEFE1/it8cx0i7gG98uBQIo
	 TtZTxedjbNZPA0fzkdsCs6CzeFXgShqidWvBlEfpuI03cQxEv+1hWljk9LyNFK8USC
	 yy7rYjh50g9Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E92EF584D
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111329363.16330.3377324285612240874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7800e874b7cce0a1c2114d8a324261025cb0462b6682883cf84848212f435bfc
Date: Sat, 14 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771113293
