Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F0E1A5B86
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751044793; cv=none; b=kxCEVs1Kcf414GkZ8vXduehkA+JSVnFi5tosZ0IP/inblxMdmeN8UoyDgLn7Qvu5lUBR0zgh+yEfpiOtm/pVoEIKGNavE7k0XXy1MYGTOqHtzJ5oa0DDNsmseAnj20FZmG/FJNrnY3pirUpYZjcEzn2V7hLVGPQCmqGBokeyh0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751044793; c=relaxed/simple;
	bh=Wj7IjSYoPs6sB3a8QQWzGjIy+5jH8LA69AUQ7RrFrKE=;
	h=To:Subject:From:Message-Id:Date; b=UmMldgvLrO7s/B8t6h/+snk9X0JxtsLKLdNy0UNhdl4D86c20WSr+1FGzcCZmu8gI8euZ2/8Yn9gjY3Nu405TrKlcg2iuZeQP6GjYXqJL3oQHHU9RIpt+eLkwyntAKUD5XGY0PLVut5u6IlZK91JlHyaocT085WTbiFDMaVjYjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ev6Pqrzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ev6Pqrzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8422C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751044793;
	bh=Wj7IjSYoPs6sB3a8QQWzGjIy+5jH8LA69AUQ7RrFrKE=;
	h=To:Subject:From:Date:From;
	b=ev6PqrzuYSljFRSFdnZLF5yoa1aOy54TJ7Cg7hYQcaqln2EKwUImzE1g1muztWs/n
	 cA/fNNEscVFVxoOoCc2fRGf6QipyfMjPyr/ge/i7Hl27EkbLz3L9zB2Ar4vn68AvfV
	 XchqRja31cLNz9+1RLu9YRaPwxN/AgLq8sTsYKkt/TMMYVFBvjENvL3hy+hoXE2EEt
	 5j93X7UBHTIPShQV173A/p+CCyYYjtW74lsHoyDFncZgqmW1TLIXkdPApJJlwbh0Vx
	 Jq0aQlvrmiZcqBdaEoo9CnYeG0dwv0h3Pe9VL1nhqfMauwEnLBq/ndMwoqmBd6ZAnT
	 qbIXQmisnCW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956B2C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104479360.10050.6386793487932826380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80775edcf5fd9db78324da60d98d6d234a638c96aba889dfdd7b773228f55a89
Date: Fri, 27 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751044793
