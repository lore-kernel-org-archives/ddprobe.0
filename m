Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA8D1B2181
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729005954; cv=none; b=TAZ177YLXsnHZTK1u/Vfh/fpJdinV5lIkoS7YwRLZY+xHaRH2U07FIjpL8+i/ip1fjKEu+ULhsGz0za77up9hG7kPEbEYjLTK+/roK4GrnEwkdY+19PIy3Kk6QNAsWPvj+fJQ1FzpPwAYekYhdrJQXUVPHBcguMX7wITCwHX35U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729005954; c=relaxed/simple;
	bh=SSyVsD2roqPauyUPfhgClPdH4sctaUPJmAuDci+0evY=;
	h=To:Subject:From:Message-Id:Date; b=obUxPap1I+nEil/6oPU0WNDipTCT7B/mhNLT0/XpbuP4LL9lh0WuDI074s8l03hke/vHXOakBOJM4s03UtkW48hv6XCOg9fkq/269Y0MZXtwy81gWo4RmqHlhvIwFAsuV9CMErabBYLmzW82BzArw05Hre89gwIri9a7rnJSWWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTRXo3q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTRXo3q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A134CC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729005953;
	bh=SSyVsD2roqPauyUPfhgClPdH4sctaUPJmAuDci+0evY=;
	h=To:Subject:From:Date:From;
	b=DTRXo3q08+IwOCoEDi517kT77RXLNcUhaHXmKIG8TGR76iZyKNFkmrnviZKVEYJgl
	 4OKYPwef18xj/sc9O2HZ7tcdkpkNP4I52RDka62KObV5XNlOA7KnXrtQo4yTfDZ4zz
	 K1mC8qjGguanTJuOR7kP6qoW9jsr5geHTpVe4aGpdJnxV72go9uFJOFo3CRx9kxP+r
	 RZR3KIbjzMnRQb9hQcN1/RKt3jwsj3RV1FgPaBfWzYXLwA7vwAutlU35s/cLtUiL0a
	 KUzA7tQ1O3RessRu2S4WRCo9dR1fu8RpD9q+tRT5QvaGZnOpqZfvumSCemEjcKENG0
	 ZYxqezFgne1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916ACD1D878
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172900595358.29411.10715186419073252051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894c880b8ffc038dc8d57a3b5dc14c25269589073ff670bfdcf4e9bff59ad10f
Date: Tue, 15 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729005953
