Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48E2727ED
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756032594; cv=none; b=bXThDoqoV1kf1WWhj9s9vf74g4RoyolMXw3EbokYdZiCTEmbqHOh3M+RQyWDzvi33UVjmONziqZ6Kd4mDbr+aY8f9hT37JiXL/qgactBTJ7MnXcyc01FcO8qR2m4aZh1kZtwSQRFjDNXb9XM2ZOyGnzqDNiPBUm5s9eLHVvmgU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756032594; c=relaxed/simple;
	bh=piNRmh8A9SuYAcr9tf32Q2+LG8FXDqSXLzGLN8fBv/8=;
	h=To:Subject:From:Message-Id:Date; b=uDeatozP7fZqAtgTnUCoUlFhvKnMJA/eVHsfVPlBtxfDhJd2y0ymF1cFTd5hxmWtBUoDGi1V0xk4V1wZvWHacXgjLp2iT2cn9iy8GxOlUzLugO28U4XU1WHqB9WDygjO7Gwdcc7Pc1T7r8cIw0uAtcDKf4WF6dcL4JRmeFeBbiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN+hePF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN+hePF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14A2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756032593;
	bh=piNRmh8A9SuYAcr9tf32Q2+LG8FXDqSXLzGLN8fBv/8=;
	h=To:Subject:From:Date:From;
	b=dN+hePF5egOVK6ONyYwTMl4EVzWIC7ttWLTMtutTlQzg7jar/bWC0yA/HJALPs662
	 SwuwZ8hriRIPki6nlXgNt4QUqb43mU+YrqmZ9GURT/u0TY+JZ94zqvxD21/l0T6Wto
	 5irgk5g424e0lXGV192oemg7AVxUoK+gyFmXsu8ZWc2t5Dn3E52qLevWY+3KgikG0m
	 rTwbanDOHwBFoLnrrN+cctjJAxa9Cba2yJtu10xJvGxYAgfa/TmPW1TB1PNyCiq4fN
	 vW1e3iU3ujZTtB13AiPPRSO862HbJA7OWIeElYk9Xtfn3DAOlY4b647O3Pr8x31GIq
	 qgvZFuYxKM6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F4CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603259357.25703.8903694093578116570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb315052b0d7d557c7b87a2d271f4b66efa6924e067493871c70be2932e3731
Date: Sun, 24 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756032593
