Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF401F4611
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748194194; cv=none; b=jmP9vVOfDvE19rltb4zGn56ym0UGa+J1SveMPdzXcP+phSTmusFIfCSxOIs4ZL6okgUoly2MDor/IPnnaO2BBnNWH13pk0C1UcsYcFcqrhukjBbOh9/IYGbsfTPCUC2V0oU6JVt0mMKSeiZvDdbeQKtAeUDYjcHC5SrUyJxfkzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748194194; c=relaxed/simple;
	bh=CTjOaU1mwKwevTj+x5arxkND+c3up3cnGIFWHVGHTto=;
	h=To:Subject:From:Message-Id:Date; b=G2ydfpvH+a4NxKwY0nHmgqzRHMMIEC0E0BQSuNEhseLiSTW3aFadQYgR0qz0Ov0zJrBqdKrYS+m3D8mp0MXIGtOKGTu9QkhYrdULO3z9g1fWgOvhpKlUMjRFycQ41GZEvoytjOkKwybNvUCOLORbIuQWjF8PVWE5yLkVFMVGySo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vq42czNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vq42czNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7BC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748194193;
	bh=CTjOaU1mwKwevTj+x5arxkND+c3up3cnGIFWHVGHTto=;
	h=To:Subject:From:Date:From;
	b=Vq42czNhTY7r8DyzDZBj/R9pTnZGchDUrGfxFLT/4Kj707lkTi7z5AN0WrTIGyqSf
	 avkV0a/KFXFgCK8XS2cV9GO7N+PBSFg2F4z5MG5YwJhrykkgl2uX12Dad8UFDfAjBT
	 9EAsbKYLYVp0aeJWX3/Gdtm2jdY947aA85saLpb9Z6CMIvtj1RPplKe1dhRg9g6LBu
	 8WjJY5u4oQfYKtAkEW8MLverIEQrPX7DJkI7+5D6P2Y4GXl6yYGmB8x8W2w1UqqIHj
	 UDFGQfLBpjP1gX9IpmXOB5scYK53WOumd4hnCZhe3jYwTrRqEvIu9RzyeBQ71OFERq
	 Yy3ekpEaSiWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92746C54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819419359.23787.5641383246861246099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c272831789972f807b0635da73e0997b0259ecd03efe9f96c57fd283fd25aa
Date: Sun, 25 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748194193
