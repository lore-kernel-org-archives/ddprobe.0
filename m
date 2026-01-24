Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155DC13957E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769281434; cv=none; b=rUEr95wLJM2V7WW+0QM3xj2H3oTKPlwFQwHwvZhSYqdX187xTK2cTGyh9OX3xWRRTFosEQJi4+txUdu0OkuggDEpxh7PALlKVEomyzNuiLfIt99z833PnehTKEStTC1KMD2DIDyvPtjRWTRK//DkFgIZPBi1ZlYlysnM9FXfxxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769281434; c=relaxed/simple;
	bh=sK/eiJtvy2xLQK4s5/BZsRovs0+etVKOxWgwJKx3V7E=;
	h=To:Subject:From:Message-Id:Date; b=F9EsRJRcXZe6A+G2Dkr4JwScHwOwMNG2yqlv/sXWbyq2yqddjw9MgqoIZ9V6Nf4PWfvlr5pAeYKgShdqU197Nwnh9BUfM+43ZvW3xGh4ezg6YyHAEV+1SDVT7WPm1c9ghXmjWJqv+ksVzHzs0TqzPfREyB3Z1ahPb/VZk4uZe2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imhJZOxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imhJZOxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EE0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769281433;
	bh=sK/eiJtvy2xLQK4s5/BZsRovs0+etVKOxWgwJKx3V7E=;
	h=To:Subject:From:Date:From;
	b=imhJZOxBXZGc3ut/6zLQoenp5e0H32GfO1rCbehPhPtuWyc6IOr5zBun8u0gPlGkQ
	 HO+DxgOPVYl5pzxHiqZOSfsdBQhP/1wVRsZ++Se11bg2+utj5upWWBASRIWqoylRKA
	 okrdU3mmnN2UDThyYncx536e1Brl1u4r5bJArnscSM3Efyc2lgsgvT+vvU+DzEF0/9
	 b8WXSd1cpDsf/tGdBUe90PY4Ne0L+RoO20KuXg3xkGtTTktEHjgMoQ7V6WrNly4h6J
	 VE5YCd21fQgcZQViwkY7QPPU+l8/2Fkb1zbcSAT2HnEcfe4auhAxayaO91UuGY2/RO
	 6fzPhbqMooIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90164D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928143358.17089.3974203096691328147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da1588ffca594196bc03bcbc78eed3740e42c6658c5c9aa1f0f5bf28c83cd8bb
Date: Sat, 24 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769281433
