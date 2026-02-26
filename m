Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9C13A1A4C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772097894; cv=none; b=DHvE65Sv1MtmCkpRCgTf+KcKlwJQAHyd5SdthFYKwkWwnVVRp+wEAGTzcUVIfeHb6QtSnHXpysRQ+e0y9t2rrelmo5wfDsxlrmsvJW4o++DUlgHkeKqoihKv5javjOeKVZsiQWLYczrSHmzDclvcphDEHBjBKdVvyJv+Lo0bMKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772097894; c=relaxed/simple;
	bh=/Ez1tEwB9SY8ZAiD2E+YeCSeLdsRlCh0VZtCvPOQ2sg=;
	h=To:Subject:From:Message-Id:Date; b=FvbNMA2afYEoVlO0MVV/hm5n6paaIJV5/9+QGYV/rdN+EiH4ziRKDMWv2d95QIxzenrFF+xG6lqhOa0mchocZiCqpv/IzR0j2LqWH5/skQwM2h9BRzeI0kMXW3tAGnDH1FAtKE6VDB2qz4hdWy0xNvUU1LL/6W+0qauMIb3TXr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gInDVfse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gInDVfse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC841C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772097893;
	bh=/Ez1tEwB9SY8ZAiD2E+YeCSeLdsRlCh0VZtCvPOQ2sg=;
	h=To:Subject:From:Date:From;
	b=gInDVfseqojgv47vp229L9SdaYpTQI3yk1qdBkWm39NxAvZhR3GXIVt1lGB496pGP
	 cP0S8f36sIapw2OTdtaBYoudULpg5AM1EJo0TJ0jI0RH9/Ta2DzcZhcIoss0Vg8LJA
	 4LjYajiSW6huCtubH4P9yF+tPQR1miNWX0k+j+3MjVdYFJ3aC+LKZ3E/+BfX7OHK8j
	 lgnlM2tjUzNTgMtBIy0aXJq4258py+W4tSs20FvnXM0XczLsZDi5jGZl4GjUh7hBbj
	 8uolrew5eGUzdpWh7RQGabJ8I4EypIxvBSUQVsKqUpoXKW+xJtn1u+81iKqKApivYO
	 IkJvoAa9zbh+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3653FC5916
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209789365.2572.17968737462575058026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7aa6d761d031ac80a7e97841df73643edde20a28e7e4b0263a3d32854b4cfbc
Date: Thu, 26 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772097893
