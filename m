Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074D018EB0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764902574; cv=none; b=KVzHqxyMZOdcBqPVYdZwY00hpWbchf4Zlq09IIm7uwKVeOM2WmAJZGo1nY6Jj1ZLxzU3mZIrUZDG/uoDEVq/A13752Sjs2XpjmrbqZsqDz11N4sPTLd4AVcAvQPA20O/L2cBbRkAneGDMZJJbiKSGOOkwzgHebsfFbN5OZ4l1KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764902574; c=relaxed/simple;
	bh=wRflMSAOeR7Q8ZTD6q6eq0t8ag56y1fqNxJbI5waFf4=;
	h=To:Subject:From:Message-Id:Date; b=bcvzrFq4dJA7VTHUwOlgX/yQbZRxZQbw4+ARFIW9Xk/bOyBqgB/HUVIwgDJ0c+ICqxsdixK6lFDs7B3r8BY5n0R9fqaM00e2Ns6fLpA1a6yRygyOvTgIH/PmDZDH9vaudUqUInhAREANz09KHk71seSzJbasohquXB1no4a7u+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdCBPLRn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdCBPLRn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1101C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764902573;
	bh=wRflMSAOeR7Q8ZTD6q6eq0t8ag56y1fqNxJbI5waFf4=;
	h=To:Subject:From:Date:From;
	b=AdCBPLRnBain8j/1fzdC8vJNi90u0jP5N0xOnkSB1wgTUMz5xmO8/E/O17WveCMOb
	 dI9fDNu5jGLmDsRyP/6jRh/sLtf77lwslCALFaRlk0N/ZS3opVQ0XCT1AjgFaBAnHt
	 hDCusx7y8s3nW1DYohyZZUpbnwYu+4nIaAeSe65oOu7w4cdgG9XQm9OeW2GFcyPgBz
	 dA+TEuZ0gv5hXXx57/3nFbLSYQaVNf3+qSwQRUZBBR1JurcBI+22OLbsXbQ3qhK2AT
	 YP8aD8cjIfAtcWV9+yp42IZZ9xenqC3OwSLx2uhib5c7oCIdgRjBNfIO0f1UYpf+JE
	 XAPFZ9rma40GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FFD2CE0B
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490257359.31124.3274674021284646405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7f84fd51ce165ad90112c7fb68fa6ac9106e2fd7a0c2aaa8a0aaadf9c5ed2a
Date: Fri, 05 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764902573
