Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC452FFDCE
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761649794; cv=none; b=iwfErGFH5+FieoBBaGtiEdYAva/+x2l7V0mc41/NodiPuxTDszMIX6pMzwj4Dug9lS6/H7hktfY+TCzW0iS1vUV1CbmxKsgK8gcG3u6ZO1lV90vksd5J4yHITxJLTBJxg+rA9T9DB/v9OY32P75tlqGpH0o1t2lbWaCGsFBQWOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761649794; c=relaxed/simple;
	bh=5W4iaI1TFT9Dutb2yKLGf5QUfPm2bbykK9qLYgtBVTQ=;
	h=To:Subject:From:Message-Id:Date; b=LmlxQQdNZDEihsxVY6Tz8UepTi766SLGqXtinPXQqzihHS9l8BYrLTwWha/oxqKQlUuB6pTRqmGHh+bZ0yo2lwWwfEjRt1bjWGUUTPWlfIb9Cn0142V9WQnGbcJNiS/6XIwvDCZSXrzOGgJeshNVuIs5iBZY5atudho0r8xTIe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj86wIEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj86wIEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F337C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761649793;
	bh=5W4iaI1TFT9Dutb2yKLGf5QUfPm2bbykK9qLYgtBVTQ=;
	h=To:Subject:From:Date:From;
	b=oj86wIEvmXmbLbhAgGuHUBg3EvVvmqfzi9WoJLmWe9adV4mF3tGKm0Z5M5S7ZBv61
	 HaDsAWncnFVz9kKYifV0EIBzjHwAssAnavz4CEDXgLUr90Ahuig00y7MGfebjhBSB3
	 JEvZ6qI+QmYzl2hikM3BU9brwo6mNOLJ6GZDuoSnFn/7juwUEwfdxCHt3KuUDiiytX
	 73YMG+PwyMieev9zmVb/8SJrorrUHqROIaQ5TwMMdALV+Js4TaSs+iBBAmuJ2WJk3u
	 /kTT4hDesHrt4NjrqvD2qO8JYlA39MAfTCQuZxL+HK1ERyt/Lm38IPGDtj3bwrwkl6
	 TeVLzj5CIKTgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAFBCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164979358.2900.10695657446825862472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f5368a06d6adebcc75a55724ea7c815dd794735751eb566bdf4eb647396914
Date: Tue, 28 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761649793
