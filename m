Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE4114F102
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736708754; cv=none; b=LFze8fh1S5NDZOejbMpSBJ93cgq0HWWMj3MmqREVZwzZjoVf8xlNGPHLrtlsgChUoXxISYUkuQLaXuPu/d2Qcu4bv4z5VOxZikPhfaMPyOeuiybfUKxRpX8vsCnFrimSEzfPAeWyqFjOU6o5uO+iqmZpQE6EuBFAo+v8o+S31jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736708754; c=relaxed/simple;
	bh=opZKWOuliGiskcHCbamK//AUxvpa2mP1CEwkGmqAWn0=;
	h=To:Subject:From:Message-Id:Date; b=Gwm8ZCwC/CCZI/Dci++uzQZVkvg9xSXtRNfdQYpTQYFNd6+hoO44KufkSVbRsEsyOPj9PepEDstTrbb8YPFvtYeqHz1OreYLZBE30OXCVp/dA9Gr8w98nvBdvxHmf9/M5tZ761oIYXSNK1SYU4tc9Nw4hhfQGYiHdZvNKwq79es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqg0Sh/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqg0Sh/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76ABC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736708753;
	bh=opZKWOuliGiskcHCbamK//AUxvpa2mP1CEwkGmqAWn0=;
	h=To:Subject:From:Date:From;
	b=oqg0Sh/fGXzNsZvDmQE85W1Chb3rWudEKakDBFnxEOczjUc9maMW//UrHzY8rwcru
	 c5QOZIsil3eurRZd2U5cDY6naoxXSbN2+ljfaH9qarjyZLXQ1ORd0ALFitdp7TqqWC
	 jm/p1MI7gptCIKxYfuHM4BMLLdG2p3eEZZGMVZUuOwbCYzn7DZwnFDHp8iq5UczJi3
	 NVPji01jRHSYjNJNbXanT7nFNoTROeC4oUQYYAfjsVak1ZhWIQBDvm3HUUoWhpavYW
	 xF8yzwYltGe9UQJsMCkFLrvmwIGpburZXBssT38v/U3TxxvOln06Q8i0m+vf2DNuoU
	 SRway2Z6xWIcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C600E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670875360.13903.6625257543492905363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30263ae1cb62d7d636227945929609b0784355f39d4a27ebf32a3c1cab121f44
Date: Sun, 12 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736708753
