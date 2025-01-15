Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E981D95AA
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736972754; cv=none; b=d8V4atsQ0NW9wBUo6h/k41ljDS/pB3gj5R4v2uBk3OWDMTtbaSZLRQDqhuUriC3OJDaoMFD0CojZ3ySwg70LqbXoXFE9hGpUH1oO+gpzDkus8igkg6CJLJjp+i74q3lsLQb28sdZA9HnUC7lS4iDGITovRsHBFX/J8kTNw7Ag9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736972754; c=relaxed/simple;
	bh=+yQN2ynkUdSeZ11WG15RzP4TgNPd3QbS8KObU+bhVU4=;
	h=To:Subject:From:Message-Id:Date; b=jfn4qkGGdJ3e8Qb85VedZfSqB25IbClGuTcCVfEHl83GaDG+XxstMDbuJ+KFsidDXgzJyPyQ6DTJS15OHC6DGgqwdzb/Z8tEViIwoMq9waiccaeaYfOuZP/IYXkixKbVeqvrezbMJRpp26lr8IIfxHAwCS6FlKvnrzij32CIRUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMo0Pfh9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMo0Pfh9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B7DC4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736972753;
	bh=+yQN2ynkUdSeZ11WG15RzP4TgNPd3QbS8KObU+bhVU4=;
	h=To:Subject:From:Date:From;
	b=NMo0Pfh9078hkA1hl8XMJxoOvbuQC2YBpNSavZGx+cuM36NjKFr5xXVuXvJ5npWXe
	 vLS/f596zrkuGkOClwd8vmf/GfWMScJRVdzquAWXjVnZaGbU2cG4cPXGmAgwjG3zO+
	 19ulbi39iW6aTEcxaaVEIM2RnyP+g0tSh2X6Zws4lRL4a430THejB7aWqSo7VbjHNa
	 T9UAM1K29rJEBQKuFIWKDj8qcLwvrNBh7X1cPgHyGt6RgvJq6rNj772T3WEAJbrcG9
	 tq/9/553BLJuk7qgL1ZX0PysSmGirzgNZBOiHjOnchdL3jyM70pxPzVYWX2PhDT+YG
	 mt9kMPshweD+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960AAC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697275360.27517.9157980630632090612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9237331f5ef6edfffb737decb8e20aaf29ba60960adb304a69a482aa798128af
Date: Wed, 15 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736972753
