Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B85E481D1
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734507354; cv=none; b=gODq6ss6oGJjn7Mwwo8TqOh+yp0w5eGgYah9XSSCSpzzqmAhYmEwlePGOFEc+sCZMyAZQtS6T8EmM0xjRGHGXeMw8Mzajr/czyk5yOaE6tFRo/S9WNbixJW6Zo2F0oD3LHtNUbtk/RTRzK4DjGX1MpO9T6s98/5IyBcX+kXtvlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734507354; c=relaxed/simple;
	bh=zOzDfGEf4Nz4+nVPkBb8NC/r2MuzcxlMC38CW+RNmH4=;
	h=To:Subject:From:Message-Id:Date; b=uSOodwFOlA/5qtaJJeBSNCf2Eg0cEHeZvTLkmxn5JBAzV4wGN/eW30ixxhRphMjGizR7AKvAbuD5yyHEgI/pW5tzfT1+KzCi3gd9s9NPkAyuVkEdkhXFSO0Io5824sLHUwtA1ss98ztfdbMQe9C92p2ylHTiXBOatjvBltoMbYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht5EMEpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht5EMEpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B010CC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734507353;
	bh=zOzDfGEf4Nz4+nVPkBb8NC/r2MuzcxlMC38CW+RNmH4=;
	h=To:Subject:From:Date:From;
	b=Ht5EMEpROa6ILMlJVeyF5A7fJTEuGy1DilIK51u8auWgMjFHF52gE1mttsjWVB2Mk
	 H3mr4VOQ+QfDuOChS9xDE8LXDIhXnTtBCIVLQfLd4w9Z4aCnYF6VnGDhETYT0j8jxI
	 BxgFybT3oUoa6p3+SlU/WUoxYfneiTqfS+SR8cqbs/sllKGlrDNudl0MHqvKqkgpWU
	 bgT4MnpAKdY0LZmwxddqeoz50M7NRoTSRs8trUaKSObieKnjZEhzqL02dcoo1qvJbg
	 Ep8Vrq4z+hlxe9+3QLzc53tqjtjJMG3+1ZvwjjzMbKwyBM/Qx18h9O3Rnk8L2kP83m
	 MF9KZurGAEDVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977B9E77183
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173450735361.15554.16820225427604252680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09e2b8754c34368a5510b3bfe80a2df583e62a7ee974f14e302e548581e7b53
Date: Wed, 18 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734507353
