Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AECC3B8D45
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765495974; cv=none; b=p+BUrJd9n/Rm0LIYlHAmFVxq2kiuEypUriD34v/A6tvw51nyCq+8AtfiqJcRTRFolT73sNgGIwLCTVQ2ZYj1iQUK1zJME8DAmeOXJYcNRBMViWiXppBMyLWXA1gJK7WV54nKVkhLWyCOMEjQ7Tmb201vePjxWq9wanHZ4Yj8TrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765495974; c=relaxed/simple;
	bh=jlWeonD+lU7fRoXmA5OKXiZhI79qGEo7TDNJG/uRagA=;
	h=To:Subject:From:Message-Id:Date; b=nik8Th6dHLXAxfwSkdXNcsdVcGLo6jK3ub/2tn9yHZuk8i0sBqT4IzuKIElpdra2Xod30bF0G5a/ArSjhRMFpN29zLirGd0zbaoSXRYJHjvdisu66HXQYKOIss/ykQ/O25jtfWLA4hfuvyWWFdGHkrN5SIL6ft5LfFI82GZgulw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8c4dXUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8c4dXUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FADC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765495973;
	bh=jlWeonD+lU7fRoXmA5OKXiZhI79qGEo7TDNJG/uRagA=;
	h=To:Subject:From:Date:From;
	b=d8c4dXUGNaUiAhkY1f0ukbZ0L1f4j6fwWLJqXVt7r0RG+93j1HGbUUboo8NxBwITY
	 aSkMIHqbCeSu7onW+hqoRBGCpbTz7ARbncWaWMlsumNAReC+p2g20SAewJec4k3Lvm
	 J1ZX3SfAQmZAjgld5gxXUrJxWFkxaK70P0IB8qVKHmQmh2qx1XYdPheBOk2luFQ7TM
	 vHcOoBNktXBdPYqRGtwEPu5D9HllAWhrIVBNhnZz9Ru+nVXwVF/EWqklanrrQGwJcS
	 /xaOWfU4ITx+8cd+taARyzMLBSbHcH97oFs0S6G45U+b6ZytyC+cRn9wTWoshUJ76k
	 RMtr103/ljt3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CA7D4335B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549597359.19224.9895565105301281456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34dead03ae5b06315382d82330dd5bb2739a269faef90d8b9048602b5bdf4bd3
Date: Thu, 11 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765495973
