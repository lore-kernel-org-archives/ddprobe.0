Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171D62EBB8A
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773446094; cv=none; b=R6x7tNFNlEr5/ao82MYKMOb4mDAYvYHZtSkb0L6AktnlxmywTSsXZ1lXiEnsZBpVmfPo3hvrUSajwd3Aedtzlfg8GybyFSlQdp/G6ADpufBs/d51oz9qC7Jkb/7s59/tQFoD3Sovh2pn959ZwP3oMPMTvqo6+bVD8sylqflUXd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773446094; c=relaxed/simple;
	bh=8LkAbPbIZAnAznz7J/D5pV393uYKuasgEvdr6Qoffgk=;
	h=To:Subject:From:Message-Id:Date; b=L4pAeZ6P3Zrlp3b5fE2Uuii5iTfJ15rdd/zSaEWvwFPYxpy5l6XzHYBYB+VPdVxkUzgHJjIFoDFi1No7Qh2M2ZytTzhvNQvd9VKu3q2mlBScopCaZOrw3Ig74R0ocJU2gvTdqZ7+D6JBcz8ruOA7bguVPQZCXb5KUY+xCFzHcms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtKAmZUq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtKAmZUq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3100C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773446093;
	bh=8LkAbPbIZAnAznz7J/D5pV393uYKuasgEvdr6Qoffgk=;
	h=To:Subject:From:Date:From;
	b=AtKAmZUqTh7fdhuh6CMTbVFkMsGqZIDp8gr4xWBd1kK44YYR0Lzg8idDxZqEiISYj
	 1PdTOshGAjFvZKAQcEfN7H2uQ13Vfd2OJ0B9ND0TunyYFqVJUkAx4gUe4mnzK8Zkj4
	 Qt0y1P5tmN7NBOFE+Ln1UzJXrA7nyGgtId0mz5exD/p18f3e9OvBKN0TefWsHDJnKt
	 CPo4PFFhtEVbQ1ch7epuwy6nC6gOF5CvF+XTaHF8TehyI12uQ88AvHkRpDTe3F8SxZ
	 9RK48skQ3bKUNQFwtdDGbC3NWKl3GqUmn081J1QpeFuYwqXDUGL9qdIcNYJvd6bi9k
	 zToY6kOnECHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA2107BCEC
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344609358.24364.12740109139272817650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84039acd9c9ad272cf5cf3e6c556848d648bb4530921d5dbde4c68cac5d3b77
Date: Fri, 13 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773446093
