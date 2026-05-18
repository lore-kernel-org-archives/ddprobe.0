Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B52031E838
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779099634; cv=none; b=XQo0gVBuhBkKXA7RyAc1aVo2hc4IA7uV8nqpISEq6JEKn99n0cZikfDr+U3FKLvFN+Ek/dgl7kOvBzv5EumBYVmRXHccbqVRepuMZe7GAkXFwvUEAlraHCijorzn9V3/5y01UpFcD1BZkJNBdrWpu77kqyHcP7pIk+O6+PnAbpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779099634; c=relaxed/simple;
	bh=rtY/ByFMaplpyQSN8gqdlhFxbKXUo83tZ1ZlO9yvBSs=;
	h=To:Subject:From:Message-Id:Date; b=kKb2N7bRiYwTBIHreP8vferiZuL5uusqdqluWYzTE+LgVYqzbEy5vm40WulOj494HUhpFYdvcc/ViGWI22byiAjJWCcjD5n+qRGq4In+IlU9tn+0cODPfJprRnBKrRO8U8KcXh3qQzcoj/Cnk86XJsE7isFhgAQMZo4SK6bsjpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3CKML1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3CKML1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C901BC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779099633;
	bh=rtY/ByFMaplpyQSN8gqdlhFxbKXUo83tZ1ZlO9yvBSs=;
	h=To:Subject:From:Date:From;
	b=g3CKML1YMbuORFKQ1GIuKMVRCPk91pW80yv6VLp7VLaYXOWc5sm4AKN5pppeb+PuA
	 Fmla2Cb77F9vrgS4zi1w38dWw3R5Oja+ZXOCzGviTwL6LatDAbyz1GkDj94/8NeBvq
	 MtC6cOUuQH3hHz8+Ji1K+SrYIGuOY6nA9O3Ippy/qCedh3FdoCIdPnBZR/6Y1o4bEY
	 sdd8+ZFsjDLyAlnEFci6GOOsxo7LcjqCzRkwJ5n2OH+MSOHJhVHGJ2yNnTr7ZPcU33
	 rGxlCIDNYTCa4DNSqkkejhIk0Z4KE/LQ7UpUgJWH79VFdPuc1R0NosR+RmkQAqRydt
	 5M8idVY7mbreA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EB1CD4F52
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177909963372.5629.747476362204732196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfd9671f6d4e5faea1233dc0828e625d923c47708a3726b845a40a929741b2d
Date: Mon, 18 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779099633
