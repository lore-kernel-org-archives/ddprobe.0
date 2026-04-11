Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1729C275AEB
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775874454; cv=none; b=E5WPaC33E1rdgdMQ8LhdR+QCztfAvtsw8lkzv0kDAwv84VD0l3H5AmVACwYW3TSP/u7rQTpbMOk4ZCqTPCIMXAVGaTnbUfhrCICloKc442559oFruf1JRSf+8cO1mfeq/o3zHLDkItJGdZm+Cr/Pg8edeVzHCqlZX7+sOvsEMvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775874454; c=relaxed/simple;
	bh=JUcf4+wQsrURh1e0+6K24GcINlchJ78rG2m23R2I/ds=;
	h=To:Subject:From:Message-Id:Date; b=t1RHnaCVEjBh24Azt2mqEBUl/pqU9AXTR21yJWUQN9aEAPa9xR5oyLHG0HqoIEf8/6FYSw0vHBQ2Bk9V9g3RckjQAoDJKTKcu/BtvY8wiEX5buDICAIsKKEPpkD40mkpspqIr3HQ9AKVTG36RLXQ83pX8v3HtVOawMN6BliQWJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtiYioKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtiYioKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE9DC19421
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775874453;
	bh=JUcf4+wQsrURh1e0+6K24GcINlchJ78rG2m23R2I/ds=;
	h=To:Subject:From:Date:From;
	b=TtiYioKUYYB8a3ExX/EBt0SO+C24DPxILjYx7fwOG7Zp5gnDSzRZBT5xQHaThVpKI
	 VOiHOh5zHREdMSvjmDy1JE14WZ//FJ1Re0d1h9/YU6I9FeM8FcTIuU/RutmJ405NTj
	 liUUVgjWKW8/Mloqx5/0EINfKTcq5xiRNhI9gRC/hHht0ovIP3sQj9Urb8WL685T2z
	 7JBp6RIyLLk1aLpUhzOFmQphvFqsmTgHzC8Gi3rltadAOnoXeGmY5GornGPkYfwgCt
	 BGplQfAgjSL8gvAajwx5wJe8xHm1Tb+CZFFYV6KPr4MZ8KN7W5BLKn7dCARdOwuDij
	 Xo/2jR7JX3A7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A953FF45A18
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177587445368.8334.9790815341938372365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4b6982af2a1505a02fd6555490f1d00586f2cc67f89950784d3328ee03e8ad
Date: Sat, 11 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775874453
