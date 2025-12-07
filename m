Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2904F269CE6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765085574; cv=none; b=J/u4TuFUoBpoXj602+2798pZjB9Ta/27Db7lAet0+8u4P1/kdf3knwLprOIBcV1d2PoQ+jv97X2GRBPVle0TvZ8KnXBPE+//Vw2X8ELo7rVd0ru+7kNsiXwVAwA5ML737kEXseTZk/vfAb0FqQN+ityFWHIkUUbwmw0KoW/iC7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765085574; c=relaxed/simple;
	bh=EfIi4stjAX63tfjsXFtCi+BGtbnfU4W/QrD7Uvr3Ojk=;
	h=To:Subject:From:Message-Id:Date; b=dqAy66Q/R583Ew8I1zm+o2rtragW2QiJK6z15FL0VU2N6Jzm1ilk5wGIG220olRx1HhjAqf2tTmgfsSj1hLcrXYX/bv2K9ui6WkI7SlHk5XYym+IDCE0COe/spLPUo+xjVaA/hiasd+g28JGwkIfFNjpVUVGC7RZ/c0rn3w7mU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzewX7js; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzewX7js"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8358C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765085573;
	bh=EfIi4stjAX63tfjsXFtCi+BGtbnfU4W/QrD7Uvr3Ojk=;
	h=To:Subject:From:Date:From;
	b=RzewX7jsOrAXNnZxJMGluelMjHYjxYcFQP0fvC8IYEJcPhO50Qyf9sey6OuhcQapa
	 keD/9fjrGA35me5x9dc7FjRfwI9fD8tn7UJ2DtryjiswRDa/yrr9BtQbtR6EMLt5sO
	 RCUQMVSABniwFS/QZBoaMYlfC1+syFsv3MevTKg2cEjR2EvJuYi1p81F38hNaWnRuj
	 yyraSlmN2gluYzAbPgYJU7Ae4sLDRF2SYPAusD2mcDpQJzxQiHcWtxtV2L/vXmEvxV
	 T/vOPQLZCno9BuDvqyDT5OSpWRC1+QyN9V1gErY9O4gncblt3yF1BlI0WdTtc+GhYh
	 5LcbiT59PKCfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93257D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176508557358.29522.3545266829552763843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28142dd1b8349082d686b67bf993ddd60b4afd74c1840c27e2a03c2d46a8a23a
Date: Sun, 07 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765085573
