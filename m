Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27723EDAA5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770207233; cv=none; b=eU5+WCX5E/rvc1nL1Yd410GTslFfm0KAZxK6uGSGmQKRQKhf/9vlcheYLDqYc4FhIFEFuoz8bQgaUbSJsdSRYKXNtKSqZhyjf9cwd5W6JLscQRnbwE2JPXYOhLqh+PkOvLAnbR4vFl6OiqBIT3pTaE5HQL+5ycSnTZo2a4Lid8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770207233; c=relaxed/simple;
	bh=fxBwhKE4j7ZDd7VS0Z4aDPi6BCA9pzY/VoFsygNZscU=;
	h=To:Subject:From:Message-Id:Date; b=hx04zZOoGh4pCG50uN8+UkLXGdtcO1LJcGOklvdVxJz9p8Wtw/tY0UtJe403PSlhgopXIKrkwXl58YS0FiXeaUkfbxPhmqfRAwn6pvcNtDlcVxjYxEs9YYkeB7AQa1GWPGuRyHqrmU5nfAvl4/wWKitXs0Tc/OmQtMvGLVw65w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8V9Y0Tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8V9Y0Tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38C7C19422
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770207233;
	bh=fxBwhKE4j7ZDd7VS0Z4aDPi6BCA9pzY/VoFsygNZscU=;
	h=To:Subject:From:Date:From;
	b=u8V9Y0TvjtQDqev1+MVi3G7woOMR68WOHLyphjkNJ6xT8iH58ImnWe8Dx2LfCwRn0
	 cN3+DDjPtz0Nd5SlXKRjxj4lrgcjrEvWdWSnj6BcumsW+D4PmBTpKGC7bBwzJtFjf7
	 BFQHmvtTwlOA7S7cFhajcKqdMpkmX2t+Kib9nvJrtkAitjEcFZzTx7hDX0ey7fh2KL
	 BX0KGVdfytY/IXkD8gYKcRI7M9MiL3TuXoft9JEJRQjVfEcSKWR50cacaIgRm9aqqU
	 pGFmU7NIXbYp07GNpOJesnf9afcWShv9lS/3WK4lEeqM4gkNMZWDJKHsiUGMo8D/zc
	 NUBlZK0/k0yIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D6FE95392
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020723366.28686.6862416854661398101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67032cfee563962a0e1fabb1f75d4c18ecb3e75a369fb7407112d3458aa47e9
Date: Wed, 04 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770207233
