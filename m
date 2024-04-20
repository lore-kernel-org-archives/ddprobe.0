Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562C03D0BE
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713647423; cv=none; b=Cdzq9UowhTkMkz97/TqqA7kaPhqSOZdMh+3nZlPk+SbBD4pJ5rgtRKZ82OfZCHywvgJo4K5B9vEx/UK66eWply5HCI0Tdj38oH16tEaBf8iypVOSKNSWKGYGao58Pfk2M+INF5aqxSEjOYUzuoqX/5V6euuiPGplLAbjTmHNmp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713647423; c=relaxed/simple;
	bh=umXWyANYi6lgfvXuISHsBRh5AtVROCCcGd/p2Pz36dc=;
	h=To:Subject:From:Message-Id:Date; b=sNfyrqYA2aUkb4JW/hFbRTCNaqWzgS2wBPFI/GHDtZ0yUT9D5YyFEGfl1b+KppUmO2AIn0tvK+Cp0XzE1Mtw+A40bWliDhl/Oji/EkDejLOboUfAA0iEAH3hwmHYVtLi3SD7Ge9PzBOgvb0RPhcb1pR4qTnNf3pocwvypftkHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzCTfCoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzCTfCoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED9D1C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713647423;
	bh=umXWyANYi6lgfvXuISHsBRh5AtVROCCcGd/p2Pz36dc=;
	h=To:Subject:From:Date:From;
	b=NzCTfCoXu0XK/3yqZS/Z9rA0fDg/MpDc3m+/OhT7mZtbaNBXPuXc9E5tQ2chuUtUH
	 AiAd+WFKpxDEVa54StgMPI7JDcZnWHtRllFDw5CoQqrkDqhz+7jBNOOlLCJsFQlg7u
	 TqOVx0clV70A359R644/bVX/TXnUGbkIUdxlJItIvJkQr17x9zWvKzEefyI1BWOWlV
	 +r7LnIsIvIqc016VY9FZjwFVPGe3reDSJo7AG3SiBFfYR25PD6HETyaKR3OHc0D8+Q
	 8d9R0PACoRVeCIDyZc0R1wJoUNqHDjW1R4pMXqJPmKai61sN5WtBzjq+8vpMzSi/Uh
	 3p9yHCS1jalEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2722C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364742282.21220.11839965530668709179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c74d72c08c53a970334c2b07744d680734c300571a9a9b5d525786ba580a2ae
Date: Sat, 20 Apr 2024 21:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713647422
