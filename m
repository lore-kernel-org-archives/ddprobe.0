Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BF1FC0B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748309394; cv=none; b=U9RsDyr7Y96h0a5wcYcyxtYgE/iAmOvKlnDEj9EWm6pt0AKMZ2vCYlq1nEOsMkIwhaJjLmzPQIXbYzB8Jtp9U2tZmAKbM1Tt0pORW1c7NBy2+zPs4Tv4BzAUl9DFivK/LuMJKuuNJA/Q5U2wX6iGDvfS3EFqYXrg2jFIS5pMFQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748309394; c=relaxed/simple;
	bh=ml5pTFuYSvHTIzflDRMT5UA6SO+izs7AwXZGP+BfUdM=;
	h=To:Subject:From:Message-Id:Date; b=GDDzeE9n4P2tf9Yg48Zhg6nS+2k9tTJ6zj+iUGIjWqNYyF+WURj8TStMwlbldgyB2XEcUMlb0CGepuk55Io035HFSs9Xs5T6NLIYDgD7JVjENfxdsWXUqp7tvxl/HjHNGIs/dBlWwzxX+JyGZwQL7jVhn8sNbtG/GVfGqLixs88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFHpmsHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFHpmsHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748309393;
	bh=ml5pTFuYSvHTIzflDRMT5UA6SO+izs7AwXZGP+BfUdM=;
	h=To:Subject:From:Date:From;
	b=EFHpmsHu1eXkB7AsVHPrl/aA+NIC2WBbFIoMVgAwuRrvduipvQl2lC3Owrg8WU5Li
	 tHTMu3Kjw8tg2a/FnuMlfYVIvkkSvqr5EA8/A2Q8fzzDgoknsRUsCBEjRRh/6sZi3j
	 fA2viaOpI/grcvXbii6u3Ti0R8siI3NkeNM/q4Z2gWoa4bMQrNnFW3OeR9HCjQTEME
	 S7apsooguBDgEsczaviVYRPQC11eCUByqWSl/m/bUBu8Bs0pf3lZaXcN4/shiLn7YF
	 YYwNQeUYW5wYkx+GITE0PN5Fze1bBetD4nz+L6y+qz+Z5Np5ykmjzOeq1eP+IXfQzo
	 luQcgpqrrQrcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B0C5AE59
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830939357.4641.5564940619694634985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba844bbcb939cee27f038579d966205bc9baa5351838bc59ba9a7cec9cc53a0d
Date: Tue, 27 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748309393
