Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5F930CDBA
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757347195; cv=none; b=IdJzZunz4WeLcCP1VgWEVeyNpASvP+Qavbx+sKxGdr5mqPdYrczjW6BkNGrtc1IuUxj8+DyLHB1EYTsIjvN9YSUEgQd7NAtJa2tUCqbTHyJ/EU0xBbZzrtMFAwcVAUWDUY/7AzF6jL55WEO7oj5Zb3Nvg4x5HcA7BvxpwulHEGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757347195; c=relaxed/simple;
	bh=X4ET0adw4MNGUY30db11PrSpD9WzL8EkD1UO+WFQCXQ=;
	h=To:Subject:From:Message-Id:Date; b=YHBoHe1+zw6Kumc9kioRoF+SRJzoG/IIV4BpGFsmhSHKqENipczxgYfQBFyBXl31stOxl6DT8MjoXdyFCF1yBdlmjJz3m1pRZF99VYwyXNdOHy6TKNnLmB7LJy/kWlB+6aqztS6t6GNB5uahUmJN1t+SeedTkf6xkB7av6C8D7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhZjFvGv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhZjFvGv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F95CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757347193;
	bh=X4ET0adw4MNGUY30db11PrSpD9WzL8EkD1UO+WFQCXQ=;
	h=To:Subject:From:Date:From;
	b=YhZjFvGvuTd6uWq5IASR1e6qUMez9kPgub3lqRZ/Fh4Fir7+sRNKPrIH9vv21k4AW
	 x9JxffIdZfD9fUWj4kUjVrN4zrK3KslMmZNWUopF+YR1vJjaskaRNpreo4FDGNggla
	 s3sSRpWj2S0a7QbSgglDPaEo3AHNOoXRTNVNmNMs8xpfaizF3ubZtztb0hZw7I4Q0S
	 Af9jcILNPLUH3zsAQHEYvOr3zIid81EHR4bys5PKNRewgTR+Gyz1Zd1JsNqPradqcS
	 NWekwAj2RCATR5/gINBBkGrzEtHLj9kjE5DSyB7bsQrhujR/gDU2XwXMXpwHidGZJL
	 qn61fS/pACmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C0CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734719358.12550.10802309814155209094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809a39ae0164e45d3d8c11e4d3401cf3cf2f1c4d249b7e761e0d7598ae69e140
Date: Mon, 08 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757347193
