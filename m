Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C7F64CFF
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708273097; cv=none; b=KMoDLtIykAsLjrKEJEDxlEiNh3lJg/zektXQIFCsKjy+BkE8rsdUKdS/ENlyXR9F3xlzsEauWgQpDom87gu5H3c+Btu4X0TPQ6o3UgLDiG3noVpTNqYEsSM4zyvlje3YOSzq+YoivaZ7PTRjoSo07ioLyd6BPKFpHTeYhjEZzUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708273097; c=relaxed/simple;
	bh=Z7S1Rd0YCeT/T9guO70h8N2itZG0PTq7ilhpd/Aavq4=;
	h=To:Subject:From:Message-Id:Date; b=fZHc0UcJj29WCCJQ7WS7tsy+JIv61ophK9eQd1OCkObfXCaibdF+dcuFoAEW4lNy7C0Nl5ByxBCqSaTuY2XAWGjIyicB5gKmr/OqQg9EYDbaDOUZKxy2tvqT5dnMONRUFAJytjPcKo6nFENdNPuTjGL+KWkErj92/7X9R8XSHiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1Q6FZRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1Q6FZRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CACAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708273096;
	bh=Z7S1Rd0YCeT/T9guO70h8N2itZG0PTq7ilhpd/Aavq4=;
	h=To:Subject:From:Date:From;
	b=r1Q6FZRyKtaSAmnNJWYrtB7hpAs7MgWxStqAV0XYSBnsAUYW9aeuhiAFd3XsIilF9
	 ielB5fYCTZEmvhmjCChUx+Y08MwqTOU1buKsTI8FrllD1CGjvoP7pZdCowlk2jg5EK
	 8dM+q/iTlavky4ll/iUizBh6YYWBc17ThK8snlaQEmexl0Yf9gyLjdnkI0lvBXE8C3
	 t9mwe18BNXGsJCCmPvDCUnKECwj9FHRPmjdKF4rwSQGUYFFtD04ymriqzmSeMgOXw8
	 iaOlOkrzl6kXN/9aWgsvrq8uDMirGR+yBYMpy8hKd64D2vmKKvc+dJt21F85pGebtj
	 9lZG+WLoJqkUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E4FC48BC4
	for <ddprobe@lists.linux.dev>; Sun, 18 Feb 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170827309637.24395.3162600220285935771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d980da9e2bc10e4e65c06d300ae08ca5bf1c1752ce94470d61dc5b667e929241
Date: Sun, 18 Feb 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708273096
