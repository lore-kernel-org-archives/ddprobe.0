Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E175231842
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771055694; cv=none; b=EME6zif0aWw66dct2t411LrAh3DunpW26JtlhcvHLH+AG25nG25vjVOVsc+y3c2njfJ6UNdwjbWAvt66sDMXst1KB8KLdjbftdRQniKNtctWAW5qgLej0P+f1IZ8v/bOGiD+OGMTLkE9xT95fqMB5W60zpHOigNe4ww4bCaFo5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771055694; c=relaxed/simple;
	bh=yrMJejtrrckJQiosyR1f1+YSgUt26+27BlaQk5Z7GeA=;
	h=To:Subject:From:Message-Id:Date; b=BX5W2FK0x9HIERqjA7DIk6IVaYN6JnthCAmCM3pVkRckYvJ8iZTiliCKueT36N6Vrkgc4d+jB2P5J4JgegThrSjjxZRi24ZZIyKJvyvSsAXwdyFhtfWn7MRw4prFjCwPjOf35BsOCGflgEA1ljiTeundREWoOgJUytXgnTN27WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmFXMwuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmFXMwuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7903C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771055693;
	bh=yrMJejtrrckJQiosyR1f1+YSgUt26+27BlaQk5Z7GeA=;
	h=To:Subject:From:Date:From;
	b=EmFXMwuH76HDHxJjl0XWqBuI9MCF65WHRwMGj92octtvK+Ydv77gvq4c8NQMLhdCs
	 i3NfEhR1c0HfyBIxtmmtAce5/mB6wiEnxqgSuJTViOLzXIfHcFsFgvRNVc0pTd+Tlq
	 BnGNMY4C3OU1d9Pzjk74Wyid7SzkhI5e106x7933W2g/n4TKsnE1pNos4k1Eejz1r3
	 P4dNOjIxA746QYD3WsxfKPmQGW7yS4uZnDI5JS76Vg1lc9CNE2NOtxoyPMA6LxhwQd
	 oSFq2nshiLZaNiq1w0N09feqM5Z4q1KXan87DAiC9luYGamB/T5AUGX0BdQcY5ocIP
	 3+FGKcpVOabgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB83EF99EC
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105569363.12835.2411434239414508330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 848af04ac374243f6791eec966367aaad9ee1655ece8108d9efcee155f189714
Date: Sat, 14 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771055693
