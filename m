Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321202750F2
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755254994; cv=none; b=V1G1gPxzLKeHaAA/Ml2dIETjvdAbpt/jw9xpBB2QLUhm2ljfKj6NBdiGCs9jspOs3ZYsDz9FW8u4EzlLgoezAgG5FgPA1GqL28Lfrg7Dii9offILluuOApbLTiJ4sVOZV9bDqNfU5+xFbv7lgSZJAX8h0lf7Tu0k+w7pctZ+dR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755254994; c=relaxed/simple;
	bh=UtQNvmeXM/li2rsRcyuA9DAardZpW6EWNc9saTFI5ps=;
	h=To:Subject:From:Message-Id:Date; b=RmasuqON4vtuC+hVh9FUgaCJX/UqeDbdbzEaI4iWGqtmHjh1SU6gpzCGhgFLRvLS3NWt8uPtQ+utD1SkquUZmfXboy9Eoy4Z5NEfsXEmkJgbj/6PCVFxqXapTYgEwXzjeR6Co2PZqPDc4TXYNQJEZpAbGttycC79798qLCQ84jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYpd5zTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYpd5zTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D3C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755254993;
	bh=UtQNvmeXM/li2rsRcyuA9DAardZpW6EWNc9saTFI5ps=;
	h=To:Subject:From:Date:From;
	b=BYpd5zTspySoUMv08QWvpbC0HjzwJg9yND21LZFoNqKbls+PqQ4HWFQgVr15oY/Pa
	 Vj332qQ8abDI0t1ypr8MK1slWijLfNBP7Jt19cBbUi7ztJCMkBCS61fy7KOK7jf3h4
	 YdkHzAMRZ6Fu4IKCavfCvem/NgCRf7uTf6+F5oMl2JVexSJjJJSXi5lXGwJOyv1TF5
	 vtGeFkPoyiMIVjt79fqwJUaMtDZQGmoA8VgZcjs2pMKzVKGPAcKJnoUNBuqPmFiVEw
	 i27l2YvhF7tzAHM1jtnflZoNdwocjFM/glsgTLiq5iwIfNVBsLpiRFV8+IHWNho2O3
	 1T4o9/AvtEzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91995CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525499358.12946.16771592513492066383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef52bbdd5e3c2ed575cef196e427782cd549846c9a8f1c208a7a91d207f0c20
Date: Fri, 15 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755254993
