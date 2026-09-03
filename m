Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689984F7988
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788458434; cv=none; b=F18dx1V2PMvok3t4JbXj4rG7ohsI2+AEZMjwX5KndizmZHf5c2Umk/iXwu+S2hjn2P/pBUDF+cgURWO9SzzjsAfAg2OYVg9tcM4iAKRzQt0wsqjNY1B5t+/b7z6s2fzTrNCufyF2pcotsheN/Eei2t5hPQjun0Zz3VeI/+q6uU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788458434; c=relaxed/simple;
	bh=dEeBhTxWc85oxkhB150QTvnBdAzOLkVxTMny5ALFYG8=;
	h=To:Subject:From:Message-Id:Date; b=ONhQPHeQc743QCDLM6wGl0M7h3Z6qKpYOYbI7mTn3HnJgF02YwUjgTNdWLJhsGvMFcYs3MJif4ZqvY7hhcz6ICG0A/LnbA4AohQIW3JjKFqHtMcnpelT3F1N/ZPxwZXV/xWB16mukuBQWlyWS4n+tYC2zGW8buc3ipYoSEVaT5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoBY/xRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoBY/xRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B42C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788458433;
	bh=dEeBhTxWc85oxkhB150QTvnBdAzOLkVxTMny5ALFYG8=;
	h=To:Subject:From:Date:From;
	b=JoBY/xRwTNYDXIhbI3PctBjFmU8mUmX7djrBwWQtXzBdUPzWlMZPnOov7GZ4a4A7p
	 jDgm3qEBre+4PINxANVHaehvTfzdZsPaJBQn6JbxRZPUNX06cLXdn0l4rBQ7RhtNaD
	 +16Cw1K8K/GNffw6wyqAf6MH5WjEy2lsO1wIGWxg2Ji0RcX9LeP53zeNLy94iFRO/E
	 gleX8X5AtNKQlXNI458JInKKKHkXf5EagRmeol004p5YfADP4pTCP96M5A2GqNiUVx
	 +SO7Kvv7gMkfaGJqEo1BCLsJhq3cD5p7f5rm4r2rGIrH5cc6mN4LzL6F6KB2nRs5j0
	 QpDmzezWbaiYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F3C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178845843369.30812.16237361881461800096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce686c2c264a42aa8bc5d9066b969c88a2198797174bd4321b8d08e7c8ddf706
Date: Thu, 03 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788458433
