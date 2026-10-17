Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A383BE175
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792206034; cv=none; b=sqp8STPP6NYZF63F/zn4mZH3Dox0mBLUM9fQUlUGgv33wk9ica4SsMhl2vJuAhM99+yuLTvPIW8lkqRrwY7CVa3DK4td56BziEeWeO4x76Wkt3AppMmfu1+MJEiiSXCNZURiJzngAkmB1fZXhMcnf+0JOKiWcxhn9lqHNakaSno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792206034; c=relaxed/simple;
	bh=yhRnfvryMEGVzmQZEggASlcJ/degNghnn5Vm/GuBrEc=;
	h=To:Subject:From:Message-Id:Date; b=VFTsk/rwxv6IceseW6vaFzm4J5ROojJeRHzTxG1LXQWyvmtYWtOEmkFD7NdcOB3cgy+fHjNE/uR4ARC3zAQOg01STrZYYuCrDbhw48SGM+y5enyftrbABJ+UObNUOQV3Ca2SlkRsJgTShkQMpWqKlzYcjHaIn0N/e+ykLBcHTm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXP3fMpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXP3fMpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC62C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792206033;
	bh=yhRnfvryMEGVzmQZEggASlcJ/degNghnn5Vm/GuBrEc=;
	h=To:Subject:From:Date:From;
	b=WXP3fMpxvqTEk6UqUMppLwLlddKmJ0JgjoWVm+FN4jjYN0F1GxhsgCWMqaSv1Rr7E
	 NmmBVWzCoUNtw9uw67u7lyrKw2reWCn+quCSuFn0AaoenQg+9ec5wre3lFWaOjIPKy
	 2iVVdjl57JFUGO/j+eDgxjtCt9VvlqXvPfJzCAL36dIuRpxWbmc9hjDSSyxlxoOAbt
	 VMnuQNbCtI8PKU3XD+cT5eL45qkMr45SkFUd7RxqCKjqGQ09jy3/tz3ObsUB7zU3sm
	 0cZg5Xr9n0o26EnJvdhxRL8J5LCkC/UwtJjcKvLqPEqwcTfnDXMjv+M/EJBdFRg1Ga
	 zPh8DVX7JoKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B809DCCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220603373.441.4906839009727921670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d505161e500afd1ef8467c7c188d7a0e33a4b46193acb5f3d71a1fb38b45484
Date: Sat, 17 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792206033
