Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5932E8897
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782380254; cv=none; b=Li1g6iHiBDXDoWCqVvV3lEofQGl2daVT7XNzU8I7lWVP6AIVNXE7t6Q1hQBnXFXYs25kf+li5VXfP2g5mqMTYHMXqPEFhHNZbEFh/ch2LOnpTMXkn+VH7rTs56y7hOOtWBM6Artwr4pxbwWm+CAU7n3oFsTu4SyPhLdIKnMB8Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782380254; c=relaxed/simple;
	bh=yqsyAbx3ngfQgohDZ4CHskY6fqf9WtjAwxv62DR9H94=;
	h=To:Subject:From:Message-Id:Date; b=IR5nkgI/mO3+SKUdOQwLfeKw26beol4xrrOCCutGHuM13jzoVrcZdsc2y9EfOwGe9E/dOFUBk4VGxK8DY8g0dgq2Z9H5uqeKx+/ZIWKoFGQ8COI2c7igtd+uqn2Q1l/oWvJPGFlQSjeq2KjeU5m1AG2Ft9tDqzbJbdBBmZJAQKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpxdZFbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpxdZFbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F8DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782380253;
	bh=yqsyAbx3ngfQgohDZ4CHskY6fqf9WtjAwxv62DR9H94=;
	h=To:Subject:From:Date:From;
	b=PpxdZFbtlq8VYWEj6MrOU2SGFW+h4X9LSGINVwD954DpEUW3BbAEY0zBhEO3xyE2w
	 ByQLFtodftdqF0/gSlc/G8ZKseH4HJi6JK2lNiz2cl6ioHZfqwEd6xpSWeagnTkXxg
	 ESKuyl+pFePIali60JZF6jeMkoOnrxJXl0pOmDbx+Zw6x2oN25QUQ1tOqvKONNZ6fV
	 xzN8T6BM7JjHVdJoNA38LGADgvYGTsns/NekQ7anSQG3fliTS+pblU+28rerCccpR3
	 w1lSriDxeIVZtA4FFe+bVsfHacQVVEGbdx8jhitHXW+TQ7i2jpLiOVcxCNfuZa/4UK
	 r2i4lAwJyNYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B205ECDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238025371.19742.6543340683172030860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f73e655636e2d95351b968004b2d9f8bb1b021f3f333aaf046c26de9b01650d
Date: Thu, 25 Jun 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782380253
