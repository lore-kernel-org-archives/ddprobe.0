Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4727E17C77
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767837234; cv=none; b=jVqkUVG/Fa3MQrkz4U+yBnIdV5SRfydVAdOYN3YSJ+IkiAPTH8WMTOwMBaJJosyGjLnN2VJXZOzb/PGoIchy408E689bmozytZk19YTC1tJHOpU1FgHqK9vCGVx4LUFvzGHy5RlCgWwj0nKSwk4kAI2liq94OXbbKj1AgJYHYVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767837234; c=relaxed/simple;
	bh=F8ZzB9WMkWgyZa/HZHJ2Dek7j945Mz1iQ1qFDrUY/ic=;
	h=To:Subject:From:Message-Id:Date; b=Ho0cVV7uoVN6y2PZo2LpZIyNYRzKSbpqwRl6JhOtNAgh0m5+E2B+bqcvTWbeuauZaCCIUMm5Zo/X7CAJ93PQE1ywGWK+/Q6lepvRuVlcu7NRzYvtE67jOcJ7qMkbB9LUbrBV5MGtnBWSKtdyGPp0GDugQqoDE4MoByDxA1Vv8WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS5a751R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS5a751R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A113FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767837233;
	bh=F8ZzB9WMkWgyZa/HZHJ2Dek7j945Mz1iQ1qFDrUY/ic=;
	h=To:Subject:From:Date:From;
	b=VS5a751RSlNl0XaXq9vwriOOrTg8JWutSOwSAj/R+eRFsdlEuyPGxBG6eOZbWqLjq
	 zaHGE99cKltw8C4RVYUTzrAjpldksuvvdmhjp1GUbtyOvMqUJkiy3qhZ3UOq2JkyJW
	 rHafFpsXFQ6jhsv2Ep7zo3JIjLezGA5MoctvKtixyjIr1WEMazfcXqRiV7hZXY1CFX
	 RZWFaPcSSX42nlDMjLdFp/JQa7keyoNHv0f16tfzGNdrlYz7TGjyWPXrrx0H+OMmY6
	 YFjW3ze+YW2abxTq9K+NJNntQQ3sST+hdHvIudJaCd/sdi/goWbWBkM56dGsPuhE4Y
	 NzQz3lrWDM7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE0CD1488A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783723357.14646.1147322911795337307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9920c48838aaff3e4ffcaf51e08b94e0be10eae03e73c522f5bac99d9d98dd0
Date: Thu, 08 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767837233
