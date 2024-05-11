Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3540A7F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715448143; cv=none; b=HXmYNb5+jzcTu1WWlVqKU5hZ5Z0rLJWYyDwT9XdpqQZdkD6ij5An4kgSSayEfuri1dbGjAPvJB7wR2um+Ng4WP6VZbcnbkoF4y3iWiR4z9lAxcxLhM1hei475g7qv4r4Yfo9RnzbQK4gafitak4iMoOE1wt9o0WY4cY1St1fjSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715448143; c=relaxed/simple;
	bh=fUWrwufwEe/wM7Q4aVik024JCw0rHZSDZkikSFdt6zg=;
	h=To:Subject:From:Message-Id:Date; b=B3ULobWW4+4K01xeJvnM2PNnAjG9HPWpPYjj1YxX8JVxkOsmG5T1qdaMUrMZo3WArebQPyL2X/b5cq+Okr6+Yp0GpxwO78G1ifR4Rg6zPw2VlVZXNMqMSkdv6gVocOQeK5AsEm43IyjiMb7IjFEwwEV8PcrknkGs0lxCu9DWi88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFlDsTUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFlDsTUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCC9C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715448142;
	bh=fUWrwufwEe/wM7Q4aVik024JCw0rHZSDZkikSFdt6zg=;
	h=To:Subject:From:Date:From;
	b=IFlDsTUeSER2N0OxwAFvm2oT5YeA327J6dT3RjDpKwqMK+LJFJbUEzMbp5B2H0E2G
	 +Mg7jrdH+LGkklRjlB7RyOcEWTI2S4c5OevkpU26rLu6ialGcS+MWA5OBabuz7WBps
	 l8qqIi8XfUKVHWYWKi0lhchUQm5rJofn2R9hHru+PfRN4qN2GFhwJs9Av/zWEeAWhN
	 s1xtuxm0yOYg3PblVfR0+lqf6DMB9nm+vIyvw2UvtGCWelGfBihv3fwa3/VQTIQlC3
	 6yfBFg1R9GQ+gHSbITT8unTwhlt4z7GWSp4LgnzKt0xF/omS/4P0ITg9z+1PVBby7l
	 dW0lr2X42ohCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA320C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544814275.3204.12663357973537892156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f37140e0d46783e0539217943c214a296431df0b6ec212f4a57a5fcca0545d8
Date: Sat, 11 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715448142
