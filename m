Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5C633A9C5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771976094; cv=none; b=NbCql4QZhBuUg074OkEj0V45wc0LP37FEfIuM6JNWxMWRCHr4peoizbmNA7xk38RibWV38cTmk9fnGTTXI9l8dATe/Qp3mhShDUwPlrNG4Tz+KUMcbu7XXYx+mYfH4x4NOe2bc25vsjsmrR0HA7u4RvLfKZlFP0J85fmkYnhH7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771976094; c=relaxed/simple;
	bh=AGqtmEK73QTS9W9Mzm3Smx1oTXS2iUZiEMM/13VMX9c=;
	h=To:Subject:From:Message-Id:Date; b=YJbqllml9PcyhlgX5LPkNHBAD76aQ+Z7x5Rk9AgcCxCPg/FNTaE+wBwF344kN6r87+FoPLDBR26PZpBv6vHUT/iY0x2udxdZnexgB8SUSMtA4TUhSOHKoJlbIt9wm6WgufD8/aWyl0q3blYFrdtLMNZS7RVsq2DrVOu9ZcrPiNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QadGk9nY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QadGk9nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33C2C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771976093;
	bh=AGqtmEK73QTS9W9Mzm3Smx1oTXS2iUZiEMM/13VMX9c=;
	h=To:Subject:From:Date:From;
	b=QadGk9nY5DEqTGbmtvnZTCKK3AgvQIofi7YCo6ISbAxkqmfMQz4tcPfSUu4ofzHcm
	 a5qDWmlDbE+L4dHIORKx71GAh0ww0XMUhzNmWtEiFuxUlZp6Zm9thalWA1BjXy9Scy
	 T/fmaOrsZtgz75FjgwG3+FeYYUCWvV2VRbV+KZVyGdzcfqfxg9XtwCn9AFsD+Kg/PU
	 Nu6i2FJESr4rOeJEIq8zcn4BG40GvU1FfB+nxv7HgqC+qhz/yAXiB9Wwd7A+uyAlWo
	 tT54SaQIPmlHnyMX5zY8AZu2P88FMptrxKOA5v6ggoQvSsT3q4VUMi2or6a+rYKGd0
	 oxZbKqzuCKnNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A939F55425
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197609360.14457.4775289441234217595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ebf97cb1bd991fe9cd93a52136f3491d6edb66137174f57f8d2a2f672c0b50
Date: Tue, 24 Feb 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771976093
