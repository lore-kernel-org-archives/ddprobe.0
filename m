Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B5D1A2542
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719266603; cv=none; b=jZklb+FIggdDRIVqzANS7NHbSoJTzb1pWv5AZcLd4b4KUzEvlTxmcST4W6kA1XvXZ/l52sKzCswm3wywzgpTGIFvmw5jKJrFU1aONRhwVUkBaRoMYb7HPlW9qtWGSw9ZeGdIJxzHICC+UL6yH8W0MZlPeM3PX1v3JuxHvzGPw2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719266603; c=relaxed/simple;
	bh=543c9/2UKvQNivOJ/nwWB2OR/bBeYusqk0ErtQt8SpI=;
	h=To:Subject:From:Message-Id:Date; b=Mk8DKkT/H4qpMxnu5HhYvAPwj/FDWZyt1Nz3WxCCGcb/nVat2ZOGHKRhHbMHGWb3jWQHKjTDzpyqOfv0PnmDK+b+RwOmrgddOaVV20GE2iF1Ai3V1Ia3hbBclhcs6n4zaG8lG7RMKrkfC89nJ3r2NB0OnM8jndDAZUULr7fU8Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9W/bIyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9W/bIyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DEAC4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719266602;
	bh=543c9/2UKvQNivOJ/nwWB2OR/bBeYusqk0ErtQt8SpI=;
	h=To:Subject:From:Date:From;
	b=m9W/bIyPUDZaK/cl3tgDf6F54gfoUcVgXm5FjfEHV3qEeBXEvMXyPTMsmFGelwDvI
	 wNKTAqgPf6i8vvhEsWss9cqqtdlxf+hdtLLEUqgNnknRyFX46h1ctQifopiO0UY2Xy
	 W/vWeSdr3ovu+arc0LCHmQINep8HsIc0cohgPkjuuXKfLQwnXF+y/7279x5E/sPY7I
	 Q+tswdUbo4AglMOBSgZ+rVoFHS3c6Is4k6LZa1Xk+8V+4Bac3vUrl2RK2ZVySzYEhu
	 YNK7UPkEoA7M7qjzTDRrMYZrqKzj83RhRJeQCJr2lRWu/kYOutxA32nSbNGouXGldD
	 I7e7Nx3jMhVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2BB9C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926660277.9176.11187977648415675947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221d05d7021bf90a2d46e232401cf099c92d7ca0e6d02f1680968aeaeec76a99
Date: Mon, 24 Jun 2024 22:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719266602
