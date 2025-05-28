Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13BB63B9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748392193; cv=none; b=Cw0N7OcBYQl2lEBItB+yU7CxM124Rjtb5QPQzMeAXrUpMjFkqYsfNqTDNXcALvywkMCfzQGgY91IQNqHrygDVkJEPrTQntQgW0mWETBGXEzHeQwuRQyD76cqPcSUhcoVzr7xh++a6d3kKwzCkKc6waeV7RhZPGagaLlZ1dpQE84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748392193; c=relaxed/simple;
	bh=QD8lD//UX0TngVEZpeTJ3aCGynygwFeiZGJD2Bcexhw=;
	h=To:Subject:From:Message-Id:Date; b=uFh4K1YWjyGmqB8eETrZsQOXuHFQ+xGgXKiY65IClJP/buosx80920O6hzqsU9JGbViJAxok4icZcSsT9cDNnRq7vMA9VekMqIVOJgyp9jYYvxnorO/A8tdxpYCof2cZS/Qo1kd20ZJ7Nf9/YIKocBw6Ded5RU+wFaEqO0gwe70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3GZXUKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3GZXUKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E32C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748392193;
	bh=QD8lD//UX0TngVEZpeTJ3aCGynygwFeiZGJD2Bcexhw=;
	h=To:Subject:From:Date:From;
	b=m3GZXUKRLYUHM33LA8Ip8peBtUXW4e9ixd+ruZY9un/t4fymr0Q06tbILzeAgu2f1
	 75rHzhf+EFD9kGQ3Ek81yg9A+DVY2gtNs5u2xEr3BRZcItqpoRSdz+c5Ncqxu6gEeu
	 E9jI0ivPGLkYjKwxPqpVNMGVrpyX2nyi0NYJdoEIfVHnMDZxJYTYkiALAA4FE/zUNs
	 a7qqDdUuCIYpROG6XVYl5ygMN7DAAocvHtBmJzP42LYoeSDCVBSmWd0U0Vr9DvRVLX
	 NwRP0XF1Gk/lClQm9yVQMrmhKY6DFlH1iux6feCOGHrFR+muiOJkg0yu5r1iKfXpIH
	 51+qio+/Zp20Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F6EC54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839219357.11303.10667335264428181902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c8deb6f98878bc8c2aea32de02359fe68d03421f1ff7a8fa45ed15e81673af
Date: Wed, 28 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748392193
