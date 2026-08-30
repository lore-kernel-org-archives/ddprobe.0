Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0062D781B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788132634; cv=none; b=q7THAEbUbP41wcsWaE/c9ib4OgDNlUyz0PgBH/ARs9+UE7OaqRZ+jxcOuUp03uRdAn/Bbx6VMYgJa3tpmqRjzwFZwjGzixBLlu74SXwdz5GgJFejw5rSOgFAzpg2TVsD1hQB5fqNJIAqifuKtK0em2FRtwF8H3+fx5i7OXFVWAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788132634; c=relaxed/simple;
	bh=0O3Fn2BkmhCTrXL7hf5c9pU8SwTX+CoV32bmRUa6tpI=;
	h=To:Subject:From:Message-Id:Date; b=hEPKCWhDOg8FoLfLrkQAUaYWNHIrnnl0yPw+x3XQnOqvK+AQ35XBeumjj66nYnw2H7f6iEV2qhbejd+HOUBaEVxSXwvtCniBsXmCpYgn1ihAkoObcZFtk9W0UXTRlzKAkQ2qXDwF0Fq7SDms6LDN/KIuad3UJzfn4GhmhJJHqHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smSEnKRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smSEnKRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF904C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788132633;
	bh=0O3Fn2BkmhCTrXL7hf5c9pU8SwTX+CoV32bmRUa6tpI=;
	h=To:Subject:From:Date:From;
	b=smSEnKRN3qb6LU3vnX6aSLP055YZEUxrhPB1pKGm69ndyZUouHA0nFUUmEX9HDc58
	 j0T81tLzaT5LC7MdngbDgWjunPaW8I9YmBLgCnZ3wDr8frqtvp1eBJapYcdBorE9+e
	 J+CGPSbP0auRAgeoS9qWTCag5gNIoQefYdzR2V+3qIXwaPKLRGvZ4PpEyJ5Za2aepR
	 ic5CoTLjIPfr6ULeLzIn7MkIOr1RehKv99Ro2r/nlGuHh530eVtZVsR0wIuOLbQ6qh
	 sdZ40aOcTXjaKHnleHGoItegK0GUAt7jcTm+AKObkN9GtPL5IrvhHelOibBYjzqDgt
	 v/txqiZPPljjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CB0C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178813263371.12638.5086585662108631769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104e4cc6f1520c512008b85c4ad7035d885b0e1efd20af3dc13d555904cbac14
Date: Sun, 30 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788132633
