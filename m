Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F393433A0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748079594; cv=none; b=Dvt7OvbMFQ9czh++tr/r7rPku6Dmhrp8+VjOHnlN4H/dG9U3d2eq/Gr0+do5hsKZf7WZe/0qGyj5eVqA3tsYjcOBpjpqruFaCNPpTblQRpbBuMOVUTJaG5EoWeOyLxG2FdlrJSAMF+95NV5rMtA8UfcyWbpQS+A6/iyos+3UXDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748079594; c=relaxed/simple;
	bh=wHEAV/cI4V8L1Zt/g9DN7b8ok8MVTZja+MfssvkGkEg=;
	h=To:Subject:From:Message-Id:Date; b=WKhak/Ya0ye1ImAbKX+4y7gj/PX54d0KWj2bR07dK70pvcy8QIvR5pjE4t9urH+56RY7oss9H7Ikm56nfUUEpbixmuFy1gFW6k9JbyCy36gs7vQvmFIg6cGrsa2VICBZlHHd1qaolVBykGhaczB4Lyy/mpK7HwSoj0F6WVEbxaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwzVZnNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwzVZnNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5A8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748079593;
	bh=wHEAV/cI4V8L1Zt/g9DN7b8ok8MVTZja+MfssvkGkEg=;
	h=To:Subject:From:Date:From;
	b=dwzVZnNfJeqir7+G0a/6jMaotZj60hzNsbn+Z5ynxWumnHruoVQWAFWmqWfvpmlT6
	 1cAWZmz2ZGvJ2C/pmmzwLua/QoRvJS3BOiCFmg7Q/TZtm8y3dQSyVtMgXWRXRP2g9B
	 PxiL+YzVXAzfya/y6/vy+qXzdXXJ7QKnK008eKVSyOWcN6b2mIN2T/n9isbsPez7xA
	 RAICYbm2WUHC5f86aEd30xU19hrLfZt/1AWK2UVdCikqsmnYyazQePXNpri5RcGgdq
	 A1UgKEdUe7Nm5yKZUx0WrIZRzIWpq8AiedyhPJeHZR5Y5imkbbru6lX/2wBidStxSV
	 3LH6U5uSw1jPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F32C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807959359.1744.2190183965258694999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdb9f92cde500e578a73cb05b330eac1952c7b9337fc94879398ca6f4e911c0
Date: Sat, 24 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748079593
