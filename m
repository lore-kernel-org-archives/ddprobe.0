Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428F5A95C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736283354; cv=none; b=nqjD3/xYZmKjrg7avIxInyckB6bz4lieSWP71mNa/RCRhaNAGqLaIrgQwF/9xuVK52snZkC9kPJ6VUyl5mqyy7785C/rZx4kKR+TLWd3jRtVngFspfiuVmZnG+ss0t/9ZQiMr1FD2gbigOqxqc5jEiBCG8eSiqFkD2ovFPF09cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736283354; c=relaxed/simple;
	bh=HMy2iXPgVEOxO04AbzRcNUW2VLEFFSthrnU26YU1MoU=;
	h=To:Subject:From:Message-Id:Date; b=m7OlrcDGgOGwBzmvJzpcd4Ih6w37NBA5HbrdgTyqjlNbifNKncG6gUkZGmXSE7ZLAdsMq3D8OrF5nmxV1ABLhbBhCVQGlRx3I3bQNefrfSRX2e5LEvJK/Bn14Tb5uMaoK5JSbQiHLKcmituOaAaLZIl0dKvt2D+BQr/8pYBkBF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tf1Hpb9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tf1Hpb9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DE4C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736283353;
	bh=HMy2iXPgVEOxO04AbzRcNUW2VLEFFSthrnU26YU1MoU=;
	h=To:Subject:From:Date:From;
	b=Tf1Hpb9hJq521t9wVOQEP5M/wOLDEYTi/tGZ3UTzWgofro2h9BG9pgsc7pKmIq2Ox
	 M5S/w2ihaWrQ6WrxaIszVQu5w2OhxM91e0qnp0ug9k2ZANovNLgMlZhDVB+dxtNHlr
	 tudSWcsYFOZ7aKVpquOUxgZ/guR0X+2kpjQeNIGoPSwhW2is1DGm6DHXs6aQTzrt61
	 NoqvLi/bt5/XOrkPy0nYn16MixoTq506vktUJe+7qSIBRJxHSXG0l1+JSBcXvEWcAo
	 Ojv5m9RnAHIdcuBqjbTNUqUQbkXaERUby3qWg4c5ed769+cZcBR4n15u+2kxShm5rH
	 NUidj7nuW4pUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7738E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628335364.2737.13921138430136063772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd65cb4710983e63251f448a0fbd31c129e76c325fdb7c2169924bbbb539eb5f
Date: Tue, 07 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736283353
