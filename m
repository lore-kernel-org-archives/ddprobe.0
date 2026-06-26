Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB493F44E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782475054; cv=none; b=uToIMjdvrbBDzvnhzwy7l/FR8+6PnbwuDmu1bzgVZQx4s+xxEtO6j+d6uUWmetE+3B1qvgMT7mqC0JJI2oQ+Dw2rc5CVyDmIfeh1lLs02Ah8T6Pa0oVrmovVGK8PEvwWL54YKpssKeqKcLQqyvEW2fRV6JM9WDkg8+bZq+PRTTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782475054; c=relaxed/simple;
	bh=JMxJEDC6fh2k1aOVSX1Hx+VVDOcULTRSWt7OgHic8+g=;
	h=To:Subject:From:Message-Id:Date; b=LWmIJqiBQCEdhiofkKLSJiLixs7g5fhYnR/UROWow9K5PnrPK7IK2kfU7n1b8bEI4uLDZ3xbc+xyMGFXjgtl4qlrHCHn9o1KcO8na4dyGYsjz5E8C7TgdUdewFACegIi0kqNzB9oBvhp9flodVqLYHtcTu3OYossWGrEeWO4GXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvyekXw8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvyekXw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ABDC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782475053;
	bh=JMxJEDC6fh2k1aOVSX1Hx+VVDOcULTRSWt7OgHic8+g=;
	h=To:Subject:From:Date:From;
	b=SvyekXw8vxtJp9zNNmPCSz3cVhpcazInLXKU6vlHfhQ2XyPS/tCZAbsElyrIETEeJ
	 0vXn7EnpecX8tixbWA8/VXD1DnRAGN+lkDqXM7J9kdUg3mi7lUJCAWrIeZ8uoXOV04
	 tLBS9kBaCDHFcEFaxX7NNdi03pZUO4gVIc/WMkRhVPpYBYZcp+Vbdc5wDY7aXbgaM3
	 oLlK0aG5GoRZsqkBulrOB2db+4jQYmbd0SGoy2rZPTrS6JLGrDD+KZYTHi2H5XFjGH
	 aqZC8vY6k5jsS1L0EZ471ZGNV91Al/i+phx8aVYeL3Zqje2Byd0P94gmAcQs8BXKo1
	 s3/Q0I1q3bjcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD86ACD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247505370.25351.4460086817032413917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e1e551ce166f5ba3e8acba534b4f0e01f595394a89b94ff5a1f18227acce95a
Date: Fri, 26 Jun 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782475053
