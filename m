Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEC12BB17
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759162194; cv=none; b=Hv18JfIXjLcdjcN/oYT6tiGWEUpq0Vfq0kSAqm3PhdCAOGTmqcnFB1rYoO1d853WKo+XRzhiU/in72PV0A+V+QbY8K5PzOrQ7FsEji/ds7oJk7vnmYn8z0VR44rqEqIxHamFZlD1A1GuMyW3yHWqxGJejn12eHUCgFKeTSG2f0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759162194; c=relaxed/simple;
	bh=74VtsySJuIcr7wieexb5wPDpED8cMseay3q4+lb3M/s=;
	h=To:Subject:From:Message-Id:Date; b=No3niOY8iKtp9FkF5BGgLdginxqlj7mFEZmkZqip8Nnz/UDPEqFtcZBN2o4MLWzwEfrYNnoK5mbOWpmcVq6+quvzlzyFdNEbPRrpUjNKpU2RKlA2xd/7VkaQo98oDM1qmxALkkUXy2HVG3Ei/gOo2wpXXmW39n1irS9LOOdo1nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6wXjQAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6wXjQAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAB3C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759162193;
	bh=74VtsySJuIcr7wieexb5wPDpED8cMseay3q4+lb3M/s=;
	h=To:Subject:From:Date:From;
	b=h6wXjQAYe1+ypDWdHyNlB0L4CElDWZTTmimoRQxUz5EvGGOoYjhFDmltyp8zJmcsJ
	 6F1qiCEfqgL+b2KwyD8ZULmtTQgTm54Lgujeq/c3c7ukLm3Lw8Tx7blCkS2fVFSq88
	 f3n5PjZMRL/7xYRZ27BnlmMTWNoYlv95Br3QZgHtxS8+Y8ljoDB1vFDUj4BFCw+Lra
	 9BamuC21a5VEuFpoWdt/Bp27Sy+7nAcYjCkDU2QIjHuKQlwiv1qSW1BLCrnzG0azoS
	 Yp4j8BCNrrUIW491EtoPRjnN2ym10WRKgvVEQAuTaUVnuQPkTpxSSWi9t6REc0Gj96
	 kwDymufCii7Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544DCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916219360.20071.939816717564666838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6c3f5210a93a5e01a8d4f4c58c9172701b7d6d1e8e71cfec3acb07d08493f1
Date: Mon, 29 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759162193
