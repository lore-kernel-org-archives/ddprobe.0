Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA613911BD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783846114; cv=none; b=gmfKYbUYkNlxoL5eAJ4Z1zKfoMmtWktQTfGfPU4t7a5TAcwRluwC+JAqHm07cE32uc3HEMGQf6lz00RHD3Z68bkTs/08QqsOr3ABw47OUVI7E64ykUOU8LbdoQb0lL61iU1DsrYTu0rlfVtL6/NMisxpQ0R9ItlBuOxf8M3bd8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783846114; c=relaxed/simple;
	bh=s9QB2JbN/R31BsnPBn36e6c8Nad6YsLF5F6ucrimWp8=;
	h=To:Subject:From:Message-Id:Date; b=svt6p0TMNFR8tx7Gk1vWGj84TVKCboN5iD5lxmdnTVvYnmPxsEfbIilmQAzqC7QifZl4P9tIvlVRM2Uqzjw4x9TiE0A8xTXfmKXD4QmLLgQ/2P/rHytPLgK4mv5VhAQQg3b+L+kZ/bhhhoZrvSd1EyUUZGxOwXT7nePNBN3NvJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K31nKELg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K31nKELg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9697C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783846113;
	bh=s9QB2JbN/R31BsnPBn36e6c8Nad6YsLF5F6ucrimWp8=;
	h=To:Subject:From:Date:From;
	b=K31nKELgH1GEl0E9XzhsU/zTwJDMXBW/ZE2S3z12JIJrVoICu5N+MEGu+F5w5o7+e
	 oF+8nUPIceo/a9FnRm+BoJ/3CxzShrVWYKbJWflnD8nQT+qE1P+tT9xwAR9dOFSTn9
	 s17Hl5Xu/B848f5IP0jHLIufn5k9t55LAH+q+R6ffrA9ETR8m4r+OkKis2Pspixwf9
	 ElTZeq7IMLbycjmxBywZRmZo7v7cFTE+tMPT3TvHpwDXyw/yd6rxO+sXI/kKVFGsk0
	 Bb87Bs1QLELWc/Fn2FdMwg0vffvPWPhhXFhec3l6YBinf0L3s+ny1VWIWpigSZ8lfl
	 1ExiFi7NF26BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A857BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178384611368.29498.3604360251952450123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8b801b2d2d9f9eeedce20233469d7fe2a35c76bac4d684dfc16468e887aa4d
Date: Sun, 12 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783846113
