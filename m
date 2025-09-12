Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1763E26057F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757670594; cv=none; b=nv7/kjAw0tbXA9FDgZwz3O/C136BfeWh0FkMmjF5Sv6zYi5/te4JvPXiRucddOx1AfiLa2yHytiqSIx7k04TOoIIVMGjIrEu6BxkUUdwmM5bDa1c7DbkTvVv0fo+mo4aitwi9kr7UDUMORaQJ5dXnkrIW2Cf77cSsNFupILvGBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757670594; c=relaxed/simple;
	bh=9I9XFQ/ycpHjxNe+EtAIjW1wCznJR2763IcS32SrJRI=;
	h=To:Subject:From:Message-Id:Date; b=ClLRAFqryV8TS3KdiX4GpR3N+pd1Ob4cmY4lKtQQq9A76GSuFsnW/R4Sz7WDmkWB2QoZ9G8S2Gt/PJ8a9HsVBlK75bm+GXwI1nNAMVG4VS6zgk2CiFDTjBI61jnfsYGywwKgKjoc1f1UDCLN5OPkXewLJ7f+ebOEx6PGywnKX70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar1zQ3ZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar1zQ3ZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86C3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757670593;
	bh=9I9XFQ/ycpHjxNe+EtAIjW1wCznJR2763IcS32SrJRI=;
	h=To:Subject:From:Date:From;
	b=Ar1zQ3ZKtvANBSXiYVhalMZnJJBFg9WOCzXS0P0dwLPcJL3ArHLP224yyU68pdMTR
	 hOapPuHXXEGgq63XilmaTvEkpsfXKMYWjei3an/4T85NxwMoDzh6t4wX+11GCkG6j+
	 qJ19sM3zKt8I27vkJPwvVn7s13Rg/MgPTXhZ4ZJXlzaMa0Ypmyrfk3OsldCQwYdaSe
	 ytFIdJSIwPFAEQrdJFosIRfCj+V/pVfMOmpDPwHrouHiCa9/roINFt2ZBdU64NC0aK
	 VXZL1l0Q9OPwlB7U6o0KTkS0Csi6qcTuvb3FEqY1hYkq/usjS2sZrCaNP05KHgwgiI
	 UYMHhm3WGt5sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C61CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175767059358.31623.10189405767769738384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9d10f93a8b5959d714096e244ae43af92be329368d87bd34a45c877d8ec6c3
Date: Fri, 12 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757670593
