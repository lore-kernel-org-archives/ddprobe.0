Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8E41A0BF1
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730566554; cv=none; b=W0u4euOn4c/VnMBnH71/cNXauV9saD6//hS9Uqiz4dxIXGvPb9SLXBhOSmkwyD2VP+uoxVNb+VLux2PsyYI36B9T2Xv74RQzBXKyFfSZ7sbpgLa1GkOVLgY2cR2quqUZCcF9Lywlajue1ZRxO4z5hv9OveNwJ4zQEpl/dSb3j/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730566554; c=relaxed/simple;
	bh=m8id7Z0cLIUdZOrKHwJUmIQY+kj2ooom8x8+QMd7ZXk=;
	h=To:Subject:From:Message-Id:Date; b=T4ShHOzFvQg15k8qFYiAOZROvC9d1/jQHrbIQtu3H3SUbF/UOnegeA3EiGIaCsNj/IW9udk6oKnvEEnwdyOzCGnYQAqL6fGF8rKgzSGg/4WTPgq4GTvrXNxks1zgxn7qWWRYehfcxMDz80y9iwGztNY5YTUN4Mai8v/WPYq3wSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kWNz3X1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWNz3X1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1824C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730566553;
	bh=m8id7Z0cLIUdZOrKHwJUmIQY+kj2ooom8x8+QMd7ZXk=;
	h=To:Subject:From:Date:From;
	b=kWNz3X1h3b8ie3CsQmgGevfkdag3kdCcRiEahG6eRNbLm0JNvLu2VXTFB4mpPzrHO
	 pbc8yJJprJBTLUHzsDVsIqBrfBi4/uR6ND7UsRTv+iuJM1RsChAe6ynoOJOVHePPhQ
	 zQOtH6En/aVSzF2DCETAwyEdnHPvVnYIIrrra+V+8FCgm3pe1Ib0Xu7xaUjzEfVO0z
	 6D8qPpvVwrEX2XtvYadvmVmXJkOwZMpEjBt4XMXjQJEt7cAlcC/upZf568oamaf7GM
	 jBb+8AYkY6GpgsnE/xtchHr+yXZwzWUOyI7V7Sf4xAiQVVHjR2lo51lE1LnujsP5kh
	 YwWTxTJs9L1nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC6E67805
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173056655359.21542.14985288786327519480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2900956f6f9d1e997cc58badf5ad2d4daea654174e7cdde338001bde988a79b
Date: Sat, 02 Nov 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730566553
