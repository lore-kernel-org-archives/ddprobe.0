Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ED2258EE9
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788582034; cv=none; b=CJxsGRBQ1O8ORdk1n22VBPkHGM/E/j/4RfMwPUWvKDPooggSBX3AF3wNTMSqqLxrKIX6TkuV9v/IIDhg+YNCCPEfQxbwCzBnBGNjqY1sQVFLYl2YfEbBHXtsKNkbJ2K0zJ1kqXjgdmeu7mR7hVOoq1Vh0+uPZMgTqe0zr1m4Ths=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788582034; c=relaxed/simple;
	bh=Un8ogr3zRGXQ1f3xvLrN5dqlzXoMdWNUnOkzLboKhRE=;
	h=To:Subject:From:Message-Id:Date; b=DAT0yMfT9N8ix0gEQJIM8yalAGHKFfNDrEzlfdrDXBuDV4kNpKCQmDtW3dH+m9HuqvaLArDKZkxamJRX8fqb0pLz10I+Pjn8yqrDD0MtcCKCjJ02zk4bccFRb++eylN/qyEAq5U6WvkIX0njDNn3tVgqy/Fhm/Fay/2Swb+qgsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2NSHmWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2NSHmWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB70C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788582033;
	bh=Un8ogr3zRGXQ1f3xvLrN5dqlzXoMdWNUnOkzLboKhRE=;
	h=To:Subject:From:Date:From;
	b=T2NSHmWv8kwVEsqcfYdJz08sOogUrL+cUh7/y64Y1EZt1oCdgQrByn7edYGVfcV4w
	 O8+NFOLjcnyCD8UkTShYYstm0P7mwM5Ogwfy/Iuza0mAbLivX1bICJNuDJAN3yT9MZ
	 QelGeQEZE5pDYPzXHR8vj1opodSVEYxHAGP9hVBWRna1dVh9tZ5nATc9HfB4d/cqAV
	 h/UOJpYk2Osv1xlQ9U++qAQPRm9hMWJYMPn0GtlIa+l4UHahYoJ1fxo/M5c17ybKjP
	 8NUY5C2/4NNvOrjA6/Wodm7Z/n848boGbBB/dAQkOIUyP84j+l/JBVMqolRmRVpwjR
	 cTtZYXoFRmCCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42CAC624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178858203371.14945.9132667722912434968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633fa1eb5e1bda16992ea2b36359ee5ee658527fc72bfc7495630cd5be8b0c7c
Date: Sat, 05 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788582033
