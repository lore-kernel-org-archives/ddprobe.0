Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4161E39FCE
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736172354; cv=none; b=tkPblUTpIZibFU3NUf1dCXA+nz6aHEiEOhoiukv05xIDS07ieOTjJyGrovtt6Ok0BQH6MQ3QoVBsqPTLasbgIfx/vsbVmyaDNJ1/3TlsWM8grmqfdXBq9erutwwElta5VymllPlDyQtfKOzcIaRfen3GjjaX6WQ2YxBaavjcmXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736172354; c=relaxed/simple;
	bh=3lhVjjpAFuAO/OPxJqwrR1J2/+6FpDyvHIdajgbZwn8=;
	h=To:Subject:From:Message-Id:Date; b=GAb8ZsXe512RO/t2JxSVIkZgD/VrxY4RQEIO2N9sAmH4ZXmHhGUoWozNpMN6/4wH9cfONQY+RvkABtXSK+uDaYo27mab/gM2DmpETMQtqDPagCia7qwQeCKRjfdy5U//ck4pulAdYvrwwX6pk8SrTTHjAh6U7y0SZaB9RtH0zfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GccAAX4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GccAAX4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8408C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736172353;
	bh=3lhVjjpAFuAO/OPxJqwrR1J2/+6FpDyvHIdajgbZwn8=;
	h=To:Subject:From:Date:From;
	b=GccAAX4pQ85uSsy5tcuf1YswcI9V3M3LKdb6r/zYamkzxG+aZbNdGVxpVrky4eWXY
	 quwlXjzROb8xBJEJmyMhS5aMoE8/h00jYgUvL4agU+RSAQjEquAgPqGvLN1/dBbgnJ
	 8t6tTw8FoGqzcAorqdANwWiG2heWSpNH3HUH/PDS22UVhXe4qGcU+QID4iBe7CSh0j
	 HdschJZd4R46gAFhyvnHivqxgZlPTz+EvJqnZsItFmg/FM107KwLjbKJqMZg3NLE3T
	 CeZjkTA03k358xho0VFItfR9XzQ3yG+/lj0dZthJZ7ntvSHK3q45CstYKw5k/MZIum
	 2uzZIOWw3WqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D36E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617235364.3899.17553506798146323639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753524c069c4bbd4fc52f02c0bfb18248d24c40e84cb513e510fa53028c3b1d1
Date: Mon, 06 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736172353
