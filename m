Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F196AAD
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727443554; cv=none; b=W0EwyU+T4oZDFCSXzuzPwP4k00tnkPxfa3jxwORkj2oSyW+STnAewFR/hjZdwN3RMcapMkg2LUQctq7sB1q84leR9GDvaiP4gH2BWFF3n4arfRpHVuITKIRPRNSoBeEi5uKgRkVCXeeeSmnQqmnkPetbRCefDmqVph89/RaYkyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727443554; c=relaxed/simple;
	bh=6U/Wue2ipqlS1fmq0OhgQJm3Sl0s7eamYxMkbXvqHD8=;
	h=To:Subject:From:Message-Id:Date; b=fHkdTm9rfQ1hCk0kjqoeMyKqavIb1yBHLz6mlR45x+G/X0ursrEjTUZA+H5qsw3oLY+q0B+XBM4Pjj+0mUEopY0U8KOxUOk+wn39ggZckS9Ehikxnyn66pHRNxy2oeP3NYb+6G6xFcHR6DFQOJC3zlVysAKCtkvg9zmkETEnLMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsUdI8FL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsUdI8FL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BEBC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727443553;
	bh=6U/Wue2ipqlS1fmq0OhgQJm3Sl0s7eamYxMkbXvqHD8=;
	h=To:Subject:From:Date:From;
	b=WsUdI8FLvAWA21Oj0c4qBqYxO+5VyDo8IZNzASOMwbfzqN1BC8yS/GX3QrxicQUXQ
	 oXFNglZupqYzKDi8a0NyRwuKeqanMmWToWtIf6SxWKfLc+LCD5/8EHOhmayUQuSXzB
	 upb1eNoetx1HpZoClU+lESau/Wm7SKh70I3OGeiBsri+37Tfdp5ZL3ai/nCst2b1Nd
	 vPBl9qT+jBKiVd7ADszOWakh0FHS5pkmccXwzEIu9ZIF9MLnnSzl6rdEeL5A3lee40
	 KLGQpLZqG+9u7fEjT+SGH/q1g+9hOxENvjK5NAaIKxYZz7zH9KPV1lnt2JwlCxcxN6
	 YkA9Sd2ij5Hnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92943CDD1AE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744355359.4748.14980890077125789680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b87d3537472e4623a7e89883ac5d24abbb416dfac0e4dc6ca4d1792d1fc9a29
Date: Fri, 27 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727443553
