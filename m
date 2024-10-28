Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43678A59
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730088954; cv=none; b=CuPmnsx0QQu/tSGetOc5dv+Gl1EHt3qFMQvlXXdxh36TuYSdnSgL7+vzHLYrTaWd0X+/VcP6puqImpNgXVMqJQ+oVBuXv9Rt+ewgSaXm2q+LNJosou162X4XkxNhRV1wn9FKpp6FZJG9fxzLcJ7jFH+zn+DyL+jqi44e8F1ePa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730088954; c=relaxed/simple;
	bh=wKsdvzdlPCqv71LBg9N5hNGeZztEG0w/YSk1B8YhD/U=;
	h=To:Subject:From:Message-Id:Date; b=CQhYZzx2y5rMdYGZQ7TZ3x4wySa9+34Cqjp2FNMX61WvEXUx+rAuXMxAP0wtb7YRDFUtwDuHA4BEta8/axh8qtXCnUI6eZ72e/f0J5Xmpn1qwepmx0n5ngASbcQP5uBPJ922qEM5FPB1yqnJGuTT9hMF5iIMc3dnc+yjTgvJaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvOLbevM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvOLbevM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5013C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730088953;
	bh=wKsdvzdlPCqv71LBg9N5hNGeZztEG0w/YSk1B8YhD/U=;
	h=To:Subject:From:Date:From;
	b=rvOLbevMY1LaXFn45VeJVDopS6rM3UB74dSN7qGQVN1NYGmf23RVwvPluKsxitrht
	 wbssLtBIjGnbl8Ek9pU/vF0qKuncXPZ86W6v1Uh9Cb2D4GhqnK3mJwD1ig5JCJXW4H
	 avwEqd3Q0xvUWEEvuVbvXDcyVxp10zv/MUgunA2h+rD77Ein+e6lDuLqJWjs7qlF1O
	 1xTZSoO0uM6p96puIwdKm7u4Gt0TYDAl7uchADfmYr5WlrV+E79LgbNlYHJvuE5Mk1
	 oErpeGPh3uDbPVEl4kvmHxBI3KrreQ0qUPkXlz1O7vhPCF7QZdiKXzXoRxv6wGfQrq
	 krHqkn1nG4yNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CA4D13588
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008895361.645.13868227178986449305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e1f18e7babe6992537f4b9c055f464ddeef7016f21b0800585703f1e9474fe
Date: Mon, 28 Oct 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730088953
