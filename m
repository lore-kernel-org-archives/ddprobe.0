Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD481A8F95
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737066954; cv=none; b=owMkLUbHVoix/U89EBhT6LquEO1Sa5xp0S4pTon5De0u8Vpr5oAto9NOt2J2rBQQnFV4MCMXBZoIlOsckl4YL6SLWW5oGfNFIWicQM5Wsn3BxWf7CkZDaV6AK/+IFbweV5KWptWTk6YCEIj+EbqKYx8fvn12o8YJ538RwGhBKus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737066954; c=relaxed/simple;
	bh=6kjMralLMcb4rIel4ebM1G9ip+8kump5Bpv0UHgBvs8=;
	h=To:Subject:From:Message-Id:Date; b=pMJLvR2Uqppw09te53taWUhJ0BAia2ahwV57bhQ39G8KVjPO1OgJKwRFZmfPZwgrxyOiWmiE7D+lj5SLI5vX5MHilK9ZJbsEI6vsaLUAe/MMaG2yJaJoX65qxYPzW9LHAJI6/EPgasgHDqY1IB2HMz7eClCirq5kVBikom0At78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nw+xwLww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nw+xwLww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B2C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737066953;
	bh=6kjMralLMcb4rIel4ebM1G9ip+8kump5Bpv0UHgBvs8=;
	h=To:Subject:From:Date:From;
	b=nw+xwLwwia69Qw24Rzt92IQikzU2N4k4VPmRB+apAEhvMDpziHEZz8aoyqWjF1a8l
	 aeXV6JPNKX5lqsJCWODTt5o202NhlBDBW4l0qOhJPemP1gUNeBX8rWteaUf+wxuwGi
	 8OstwKuXYFR3b+eHoUMzn6zoFS5ongizRfgK6Pw7VBv2nkCe9udRLWG5yChiGUoM7w
	 cKRaUT6hrfkFkenWGiNuqNsnsJpibdEmfzWE57T07+ZItv5G2eUOuwY0jibbG+KGlw
	 aBe6KRUa5+TvYVXxst2gSgohCzvtk9B+slYwgEWmQIyVqhcbnlCLgxC3sFCEsWA9cr
	 /44Cn4TLX7q2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91174C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706695358.24143.11921445163864387470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216dfe77b42f253271a8a90a720fb604a116d7b38a9e03364f1ae0218660e277
Date: Thu, 16 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737066953
