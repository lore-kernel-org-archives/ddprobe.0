Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B72EAD3
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708296497; cv=none; b=R6xkP2v8ARtUHhOygfv5Roq3bANaYgT+C6TW24Lg+ael95tkwCa6l9g9MYbs6Nedo6L0JnYsUFgFyMk8qNQOzeJXq8tK4trufUz+6DnxLEDc8P+3rCfJ3xFjIeQKR1Tu8w97UMcP5ooEcGn9KqlXEWI/0/ORSZPIcz5mGk70drw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708296497; c=relaxed/simple;
	bh=z290Ut+vs/RhMReHvItyyEPxxHWUrR+f0rbXUXnDwPs=;
	h=To:Subject:From:Message-Id:Date; b=mEdbF31HsSmhdry5p36nWlXy+HF6ktjYhgp5YcNj693P8SlnCN6z2wWgTx4qHS63SDK8qpQ0G8DC4ycXhttfobnQCOxLYH1TbIUtEOsFtouUhIzVPa/JVni8R+wz0nYbrXIKgcu39zBISho809FhyRAA4UArQE+9DHepTiKsvAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlKih9xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlKih9xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E7EC433F1
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708296496;
	bh=z290Ut+vs/RhMReHvItyyEPxxHWUrR+f0rbXUXnDwPs=;
	h=To:Subject:From:Date:From;
	b=QlKih9xYnB8GpDGAWh9EA04bBM2vShJh2zDL7HNvLu7/FwPxfOHdouqZmzc5RxrJj
	 il++MeEhzKuD5H9AcPH0rIAuBCOPjJOur80HcNRHryLY+9aaChno6ImbQBiq+tL7cZ
	 UdwyzO3ySpwbQoV3AD5d2yla5P9DRRdmikGQ3Se7F4TuBwTaZAKllofmt7I4/bODsK
	 m1sku5WuXwAgfREL+X2b5auDfmkzvsOnRPXdLGxKh2gyalm1uhmwn9s++KZzUre1Ut
	 WK5c4BHubqbR2EUomhqwlkXPjgC2pSKUTLmUF4GxR7cqXKazPg/eG3ovxJr86+dUMy
	 Ph8pIeMwrjGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B358C48BF6
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170829649636.17455.14927203716793623635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a50b162180aa772654ff3bba80485587afc1fbcadd9f0b9b6cdb6b00196940
Date: Sun, 18 Feb 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708296496
