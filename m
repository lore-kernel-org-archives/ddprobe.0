Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A9319CD01
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741520934; cv=none; b=P7kqeKKq8pUCIsyyuiPiOg3XZb1/7NcY7iHp10rwOPNZ45tDnwVBSQSALFKAqIHCo4MBodAaqk0tRRjwzZhiF/lcRtEyBuV527nRSk2yFbNuc2Qerd5dKQ7LIF+Oxu+jHsc5U8SIZc9f+e+ydqxRZ/wLOIBGWRE3ayh4+SNJq88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741520934; c=relaxed/simple;
	bh=DPYS7WhxswrQUNPQh7VPp0Ju9JkyMLzUj5h2BeeosTM=;
	h=To:Subject:From:Message-Id:Date; b=coxayVeiLbByec5tTMo7e1z95xQbBh9iPI7LtZSFqzlh7ZmnxP4sLuNMaLS2pYtKmsbuUQb/AIlod6gse19AaQfT8T0g4Iykl3zdTE6VEkDrel1N+slHWNUimVZpzI5Kk0qJw43sqH1T5i47EkubmK8KxB32bA9LCI1ohyQVNcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzoVtJEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzoVtJEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFABBC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741520933;
	bh=DPYS7WhxswrQUNPQh7VPp0Ju9JkyMLzUj5h2BeeosTM=;
	h=To:Subject:From:Date:From;
	b=SzoVtJEvKn4uNTm0KiMZNEKS2bfqlum4Vcz1PhA1jgS1ETEtm/EDZUEWw6vrEugqU
	 Jo8/MKc1EyFJrT8HPWxN5R6lS6W3gmkFGJWJdhiR5FAE8K60xk/J/tsfn4aUM9hJPD
	 tswIdHxV6QQ9XMdbLJKa+5CpSCN1Ym97/df6h7AwTuWTBa1pXFUBM/hv+m9JhoYSeU
	 hsIJZKCud54unyEVkKZdXx/uCD6qeJ74jdUGZREBQMouACoo3xmumJSX70xSIRmRrf
	 vcK/GRVfFNg82vzExPAoM/jIGFbpCl8pQm0YQfP/eOlTIj5Obi2dA6wRuCxT2r4Li5
	 X6yAIxuBwe2PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4E6C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152093362.1406.17044503500543975252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ddea526f2d3da181573fa0b99993bacec6d9de590857a979b29c39814287bf
Date: Sun, 09 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741520933
