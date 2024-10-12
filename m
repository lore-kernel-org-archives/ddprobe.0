Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380D8B67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728710754; cv=none; b=iRhz3YO2Fe/r0j4AnM9JGSLOU3DUR+2F2q43n3KdQoA7BEG0OTOjd0mkkWgiCkfzAKBYZ4vPPlC8dUcsgDBgykNzCNLHGE9k0Fi8tG5oMrGtoI6u5ZVIQwZ7SYd8GHOMBDbdMcMCaL/z5l8BOhLZN5tU0KAJTN+Kl/E+TRv1dpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728710754; c=relaxed/simple;
	bh=LxWvH06KITLGjxKDyc3G6PKNggQJom6X8qtHssudD6I=;
	h=To:Subject:From:Message-Id:Date; b=dqeBhLU0/A8JeuiZsHq1j+T3iIguKIhe7URB9WG631TmQsa3QpPQQ2SINxMEprY/c0pKsW8S0NrKiB03EPsiwyoHTh/3CQWiTe2UAgv8KaS+HCpPkZ25VSCr11eXpb9+N1bOgPKGaYh/+wH6oJP8MngD8HOzbuz7dYQvHRgklj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCSRUTXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCSRUTXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF575C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728710753;
	bh=LxWvH06KITLGjxKDyc3G6PKNggQJom6X8qtHssudD6I=;
	h=To:Subject:From:Date:From;
	b=FCSRUTXYHCBMaTNVM8eNnttjmGngBth/dku9ZPlLplP8kFDJoUTU2PdKnW50GtcYh
	 1lqrAxTek7qBmVm/3AyagqC/7Z4MLfqjOtX0o0w/d/HaHuvGAX+nkifJBA6FLVoF61
	 Qm+R9VbntRUObQVG5UOMo0EuUv4d/+cgBL+SQebpcCqu9WfsdruQm85WUvMYlLl272
	 ouZQzDXNyXsnKBuHITraJhvPsCuGvvJRx0mw8VyMgCqSQhtwC2S8XlAlTOoREY02tj
	 UK+c8NTNgwNPZ7Hvt5xPRbiFcDhHHbxwUcMF1vjCPbJq3YwcbpJPPmnr3kUShp9U+L
	 CdLILQxEhZCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD45D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871075360.25075.11616849085209758276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c21a86fc0c416fb1a23bef854abab4fa8f82cff0c410e71581e5b96e70b4a4d
Date: Sat, 12 Oct 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728710753
