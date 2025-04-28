Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A218DB0A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745870394; cv=none; b=BGErDiJKZw+v8lipbkbWSeEsDOfZjm0tZzVjoMMZM1vC46/ebDG65ZaETuoDFnXNgUxTBtGXhzVulzk3gyRqP3u23+6kew/DzfJjM0MSUVTaQux5XnErW1FX9rEiK/Mj2RTaAVtYwlurHYL08zpPVea1zR5CAvlPiRkzBRN738c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745870394; c=relaxed/simple;
	bh=cGQgRmvz7AGtHYzNiK2zyrYgGuT7Njf4yRYS63Nj9eI=;
	h=To:Subject:From:Message-Id:Date; b=MPevIE+mikbCgPVGVUD6lDb2gRt9TEAze18xMCLcbR+1oeFDR5ITVqzM2M6DF0KWw1Jnx2b2HlkqC1xnl8lgtNcLSVt+bVbJR6SC5pRuVQ7VwSt1gyIKp0B9WllKAsoFYr8VdKmrEquWEh2S+GuK0nuVBJphXD/mfFwMzXpm5p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naWJoB5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naWJoB5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC2C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745870393;
	bh=cGQgRmvz7AGtHYzNiK2zyrYgGuT7Njf4yRYS63Nj9eI=;
	h=To:Subject:From:Date:From;
	b=naWJoB5H4n0t60sP4O367EYcMTr+eR4S42DovHZbXniEN0nptkWwHBLuoToAPa2or
	 ryPKBW0MOTk0bV4QrEPGq5MOR1TGQYpdJzo03ImUPJGCHI4j64MnsO9fuuaMm5vtww
	 Sq1JnQIJPPadqlyvVLwf3NfO+kxEOaXo5LTx17Q5GpYW08Wr5fZUnl9ry15FimBzVu
	 cb0mf4TpNBDB4fcElU66ACHtXjjuANilDzdm5iH+rqbVq3/5wjypqeGwT0SUl41u0z
	 cOLR6A9k5HDxUSZs7I1jqD5gLG/56FiRTJzbmnya7bJy5gYycSGMGx7eYnsBBOI2Uq
	 zATS4X4+JO7LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E161C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174587039357.1492.432623274171216726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fef45d676e7cc654d3ee938cdcea3864aa0a8f2a689887a916799d2479b11d9
Date: Mon, 28 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745870393
