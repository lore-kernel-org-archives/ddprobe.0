Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B2C2192FA
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752823794; cv=none; b=gQ1lIvqcPKqvwtfd1B+uHV5Fh9X9qUpzCWtwQnbtMVtf/hgZ6sJKuHbpCEFIFEAbiBqBGbjAOgGSFIlkRwN5MZNQoaITvuiuM3M07uVihfisVT4tijJUthWZuLQmJDe44HlmVThdXAK7ck7uNdJXKpKuLqo59MLnryQA/qDxIQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752823794; c=relaxed/simple;
	bh=9tgnRDRpJQfs7DZ6VUA3JcGUHCoAiZUDeW633FznAs4=;
	h=To:Subject:From:Message-Id:Date; b=e63qTvDL/xP11Uj68+rKs5YsdgV6ZNHlBLI18lB86U9MXO+5G7GzRrhAmmMWB0BNULdCEkJydTB5I20poQzwI7a4drD/9M4qmifc1LtN/MpOvm744SveT9NuLzA0keyKMsnuvzSDBLDUKz3GjB/IAVvH/UBRGXH0R7cMwjQH4ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8SqvNM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8SqvNM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0145C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752823793;
	bh=9tgnRDRpJQfs7DZ6VUA3JcGUHCoAiZUDeW633FznAs4=;
	h=To:Subject:From:Date:From;
	b=Z8SqvNM7hmIKp8x82qUZdcddMp8vXt2cNQnQjhailAbai5ZK3KiURY6dFYGX4p9yg
	 GNGLmOKtlpszdyjQSIq3qmDtqs/PPkLJzHZCTXbAc1RUtenoVMt+Eztxr8gOOw1lzp
	 7Z7t8pw9BZDbs9nVOwIkBlVdVWkrSTzKwOzy/XU2lYJspcjV64+5Y38G1uzG3lmXEQ
	 +sEk1EaTJsqdC+iVTckaeLdYKWmR2i3rqMd6mAigoqF+a8XpBxkRl3PzvLEpC2GEn6
	 hRCLhrPhbzK/FOWcjV/CeBo87he89/vBBsUsCbNUQ+wE5SR75UF3F0czFXbZlOiY6u
	 zuktOHVBT5BiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9FC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282379358.4457.7025528394799586486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c73e3476798077b54b6dfdfd0294903b8e96c264b37c5792d3ede10b5f5230
Date: Fri, 18 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752823793
