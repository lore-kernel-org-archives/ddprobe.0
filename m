Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C727131BC3
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 20:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715200943; cv=none; b=biCkv2T+t84H6GlHBafjRw/4kecD66DDu3FvIhGV20j2Q6R1aIl1CxVH4AMD51rqBLzDBYCYEDJm80WmR+2UG/LFwj0+mjD/4jwujaP+lY7j14BXFrBRz+hlZqPgTpaQqIyBO5EMtS2tE9j0GAMqTeFOJV9W7dDqRFztUy3BBW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715200943; c=relaxed/simple;
	bh=XShYvMSYGV/5oGzjV3fJnnQKtFItFGKv7HDcWyyQhlI=;
	h=To:Subject:From:Message-Id:Date; b=ci5p680Aqt4t4rXehF0aKvMZB7giFdWoSeWtNBYkR0hYHkbzCrPcmSQyidKllmdcLAskA6dSPxMD/lTeiDfDrWmrdr6cic5L03MCVe/XihLyHxPXqpAMdbBzwR733BSBiXo8bYHdpG5TIyHKZOs5BdyZLe5c9K7I7Xnv8RBHVEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuwlJ7ia; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuwlJ7ia"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D19C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715200942;
	bh=XShYvMSYGV/5oGzjV3fJnnQKtFItFGKv7HDcWyyQhlI=;
	h=To:Subject:From:Date:From;
	b=GuwlJ7ialzN4msvqKwG7xoRpxetM8YzQKwNgTQiGFeLodrQSNNW+lPpF8+euqCqNq
	 32uvZrnw4lAoyqZg1gXVAeAzso75JWOeB6kA5cFAjbmAo9lX8+6yJy+wyMNdECOehc
	 ahzgLJKejICQQGEW2z3QlrM7sK2JX23dmN5taiQJWLX+bUeTf8NuVakBipeKiFCY/6
	 ulsHexR7oh4oJKcRNKi5gTwZffXyEQf9ed3U8Dm7Wgbc51L1RDuTFTTQJ5okbAOIYP
	 fz8sOnBZymcFmDFjH13naVZmxyhKAGmHwB7bcpje3jgVFjXdYRzjZz7XBRxVZKGr5J
	 gWbGypdgg/QzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6206C25B4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520094279.27222.14178754930987156521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ecb1443b5a1abfa39875b7e35c7b94b9524d2218aaa2e1ace5a76aba3c4999
Date: Wed, 08 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715200942
