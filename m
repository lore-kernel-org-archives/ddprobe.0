Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250742D7814
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761108594; cv=none; b=Skubu4Ro19I/YYi/MPNbFhwwavwAyiF6/nC2fsLntJLvHKIN4NNuzynAa0LDqRyB9KyphuBTd8RM7jC9bXy9o4iflS6/TR1VoL8p2oy9iNC+dIaPC8T+eu4vgB5QIkEEwR0fnAh16WggHUqlU4xtRdYMTY7FZ7RUQ6en8KUgD7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761108594; c=relaxed/simple;
	bh=15SeHZ3OuP4C033zW5mM+OhzBPRfGUPAsdEpLXPKgJY=;
	h=To:Subject:From:Message-Id:Date; b=K118w3nQ/StG0GbymWNGcAqF/lolOxQh2b8NdLcLvlUw8XgqE1xuMGhlDIcEIB3tzPY0Uv0ZV7hic8kGjhtbVKQucUpYc7aFDfc6apYrOyB624xal7bGhjWhkDazEXIdDLCnoKnGQsviQFvpyt2jzakR4+bI57NRC65jEPCjFZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eA6KpNjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eA6KpNjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761108593;
	bh=15SeHZ3OuP4C033zW5mM+OhzBPRfGUPAsdEpLXPKgJY=;
	h=To:Subject:From:Date:From;
	b=eA6KpNjW4qVz1p3vuP7K02eeVQyiLEpRAZWALB9PgU0CaE/x16zttaT5MrqHeYawj
	 lDaMI8ERgYgLJmx9Bw21HoXGqWKGvFdcG4zgN/HRgTctsEMuLhCDUcUG2Wf69borSL
	 pzTXFfiP8QVReAjv7eRczG+Wf8rxf6T65p9sj8nuihSNOAeZLj7h8s8IXUMf1Gn9VV
	 eBaOFY9uGfLb1pGy5OOM2tU7u2+6A0U65iYJGXtey0/pE9CJkjDYXCwdaD/FKgiRwL
	 /tfJQXk882iad6Vaoen945WuJQVGq6DqQcGS/n52wp3a/IlYxDhOeGyK697EUxFA9/
	 ENTgSEgfKOYaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95699CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110859358.29348.16444106947513388819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98de1c80cc0c9c17e02fb79fc3bd4739decebff52fa47669354fec368480e6e
Date: Wed, 22 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761108593
