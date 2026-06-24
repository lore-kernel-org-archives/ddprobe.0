Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C0A384CC8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782284194; cv=none; b=kW76bNtfQyaeKCBj/a2UBdnh6eSiTpZbUjBx1V26hZ8bOy0GnUaPn8ijB0MOaEoKAbTio6VccS7SxMecpxb0ZGelIcTiOE3dgrGGJodINYVdrJqBhsWCNBYhe1/UzzktPhOxKekBCifn8RNxo+kYLs2+yKShnqnqDiqdXVs4swM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782284194; c=relaxed/simple;
	bh=oLjBx9aNnwMW6NRyUjJih7Z3Andm0zNjTb1hmrcxqc0=;
	h=To:Subject:From:Message-Id:Date; b=cj5bSNSNipsT71AHZ/tbiR0vwYNEIXqIeNKVKwC9aZ7UrkrVwK+fQBt0U7h7OhNtO4qdHASki1hMm0eDFNipGeVt3H0yh6CAFZ4wYSRhFkfQqm4NqURjzwh68bJuTTpY8/6wuWaNU/wptob7krzQUgi+MY3vXwxL7RbL/dJzyt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OePD2VaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OePD2VaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE523C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782284193;
	bh=oLjBx9aNnwMW6NRyUjJih7Z3Andm0zNjTb1hmrcxqc0=;
	h=To:Subject:From:Date:From;
	b=OePD2VaQjn2Qsv5TrQa19J9ezOo9ClHIObxl2+mRXyOkEe8ms4FsL/g/1F+dPZcGx
	 d2BztlOMV8sWkn9LpHR5n60+ko75iQHOr/uIGCGKAQY8geEO8x+YL2wvMmlPnwnkSM
	 I4MSxgCI9MJl49epVyJ8n/JYruMBD706GDGRLJbtJ/4UJqUzL2G696n8LOw24A7oxB
	 s+8LtWcHh2AlmK+TeZKGqD8Gafe160M8RBVPtPXABVRJFbvMXMOcETpiFrQpj5EXtB
	 ZzNhZeYjOaDmhH7us6nYhiGK0NF9ONiQ6jLJp2pvZCaIXoGDC5biPgjiBeCyvLPOk6
	 fQHmpGNJZMBDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3B9CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228419370.23981.6909070321293039307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beee09f349a2514d21b14c4d73dbc835ddb8bee860796b907e9baa847d21951f
Date: Wed, 24 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782284193
