Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB581E9B3A
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770554634; cv=none; b=j/4RmFYdhToGxh7gxm411Qsd8k5C2YAAXTXilFzgT5Zu4CPwTqgMmalMVF4tUi8Kt9PliSkg8uyfMiyE7NAOmBUxw5Iado/heD7MhJeYR/CD1xJXTQuKBXPxKvqoie4JGKzSH3nB9jddfJtE3u4gHlxskY7mloCvh7R/7WVeyJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770554634; c=relaxed/simple;
	bh=NDHb2fzQl9Avq+p3C0PoJRI/PPYfiU3yzhgLt9hM7Ns=;
	h=To:Subject:From:Message-Id:Date; b=uKhuRONr3ztiGE4kxdSIaA/MWMUErb412sJqe2XM6FJ9Hq4TNPDMzXygSdgOd60Ii17ttqEeJqbDz9OZDZDGt6ScZUknwNFMnvTi9lbCJAm20CapK8S4hBEtXvmne8QATFo311XbUntzQqwQ73Q/kWfJnYDHCJC4iL14WUjfGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8oq61pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8oq61pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E8DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770554633;
	bh=NDHb2fzQl9Avq+p3C0PoJRI/PPYfiU3yzhgLt9hM7Ns=;
	h=To:Subject:From:Date:From;
	b=q8oq61pGhjvpgu1iJeP8Yo2hS1UInFw5m4QdqBD6SH+1aLH3a60VbrAxp/zO8qUzU
	 zSgKbsiaT5KR8Eu1xaBAODXHRDEd5p6wHttN6Ih6J8ygkpLBZ78J8AmHyMagoqEeW4
	 06DPdM1CZZCvBXcchk+rzBOjC32ej5H6MC1HN25Nq547+IJyBt0ojAy/b/FYNFAvUv
	 eQCxHj56UvRsrDwIIilsV766kvJJ5/z+Wsgz/i7Bv4IRhpQmnt2WIo9mOlTjeNC6RA
	 jWq0bYo3vGiPms8cuUELhjT2CyhaH2SLYCw2E1z5hd8sREmFHg4u+p9JFhgF8rpcoQ
	 wA5j+Ebf2sl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D350EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055463358.24646.6788091437104010854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e36c30f992ffa066d7df6912b9c1b459fc5d41588f00eea2f4127bcba5fbe0
Date: Sun, 08 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770554633
