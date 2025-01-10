Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE12257D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736496954; cv=none; b=PMb45beVlf+XufASSy94OUKqAA++RJ42ZMR8eiOOH9oinHHtxyFKqVVwHaPZSlIZbHF2Ewk3bEOdNzrHLfGGy+t7wcJK1o33aAmOcQeHxjHsgqY1hYAUorym3qaqEEr2Tde7Y5jQZVHfv6q/DadgH7eQGWkS0oDEC1CxZBCMfyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736496954; c=relaxed/simple;
	bh=FR3oS+H2xgS70l2NYFrkJbC+tmpGQYTlx/FwvTpKwjE=;
	h=To:Subject:From:Message-Id:Date; b=p+Nhcu+sTEvrjhkSyChwfObzWaLs88VaHB6DwRLsB/OrAD2GcPVTJWimpbAl5LOftWPTLNbDI+poDB/TXfE1bqUGoCLmi1dan/p+700uYeTkvUxcb3EPJYzNuqHuGbOHa21M33V7+iM9JfUff7Tg/6FQg+2uuEC7FgJ/GdAHv94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rloA8+4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rloA8+4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02BBC4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736496953;
	bh=FR3oS+H2xgS70l2NYFrkJbC+tmpGQYTlx/FwvTpKwjE=;
	h=To:Subject:From:Date:From;
	b=rloA8+4hnFwgOs3Vkmzg5G1+o/OA8Y225atZXSa2rAsmu9m98SBg1m8vPPt4ESFNq
	 KMnjRk5DgAtS7DEMdXgv3UkGaxny4AEQhZOhpZonxR1um/lHeJiVwLkwzPL6sMmBLv
	 envIHUMIfuvb6Q8Jcxg9PqHhh3h3k6navU7OySw6a7clx4wHo0WZ7x0LYT1FY/PkOp
	 s7/DvE7k9wENcQclq56DPJmltKkpsQLyQZT3RNVd5HX7uJjKyaFmMLsMaUrpSZJxOL
	 CGWOwI+wOBs/oHFdOlBskbNEyR2HLTZrpnPgRVoc/2BS/R1Soe8JK37m7Mm26M424P
	 x8wDriFBnrZVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B50DE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173649695362.9998.17880308728388222262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527ea8d712f280dd8b954cfdfe4fdfc2f70305953638a3e4af8fb3c95d1b9768
Date: Fri, 10 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736496953
