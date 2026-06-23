Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828FC8EB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782254794; cv=none; b=Nm3V3Wd6/V/J3cbeAqSaxb4NMxGMoxKagsxsFO2/Aj0nNVB5xAdCP7W1uLbBMPvD4pmjOSymvyAuslu+lOcv5YdwRhziGLhY1mYaTOBuzpsPMjpa7ca87NW0Od37tuRllGxYwdfEkHWTvpY43/vnBf/LdziiY70SlEQANuW9B40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782254794; c=relaxed/simple;
	bh=i0UliaRoewVAmR+In4VTckRuXAuUxhEAh9DySPVDgHE=;
	h=To:Subject:From:Message-Id:Date; b=Q5xOO4EkJBs2Lq8CTR2va+fE9UfwQMrZwFL6Gw+D2ZyGXsII2GJ+KmiuvgGmCTob15/62H4UWUUnkBvl0O8BiyS5m49KzrlQHej4/bEA/yB0NAbqiop2I06QRAghHgzkYXxK1Pdcf89O1ZK0/3q5oj4SzbXoITjsW34w++cceb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAnH3o4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAnH3o4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB304C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782254793;
	bh=i0UliaRoewVAmR+In4VTckRuXAuUxhEAh9DySPVDgHE=;
	h=To:Subject:From:Date:From;
	b=iAnH3o4/h1GRZNwJ6fp/33WK9sbxkkqGrl89c+dVbSTGmYK471ctokznA8pceZSCJ
	 aUi0syk5YWwVePAfhquTAPBaTKnMzIZxU5If10qH/RpVjRIDhtAKlfawa46CG1pPK1
	 l0CGewO6r/5Ht0HPJ/husQPqRBsfC/cUQFV9pt5esoFthEPjMQ7tjU4FN1JqQLWHc5
	 DNdiky1QpEEVokQa5CeFmBf1j3CjYWGhPq+c4950+w5r3j7vBgfg2y1CtfcEQ/S+lp
	 cWx656VJNeG5sQmbtikn3zUm9HNauOW6r0WmtLhl+SEUcI1qh/wadC1TXJS0JZvz0J
	 2FYmj6N0gfqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16A8CDB47C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178225479369.10222.14454299563326440924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483ed69c31dddff21f4dc5dcfaad15e6bb1dbb080bd7a8e941c6cc590b5c6c96
Date: Tue, 23 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782254793
