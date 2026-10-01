Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D83B31F9B7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790892035; cv=none; b=ISuiw/xR7lFPNafYBtzptHsH4UZe80gE3DZlDCjf8WLjrrYSVmf5x0g41BHs0/A6jiYqrwAC8zxDBmipQLUiK+jNMUwztFELqPAkT3M4J4t4Rv42YT2ueP5UA3gQMCupbvY+7SRSSqfwvvU8ekE0OUGllKET7qoVOXkmvJ69Gqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790892035; c=relaxed/simple;
	bh=dTP3GTwP+5aJev1BDYwriviGoH/rMH/9zb9qCVhoBrA=;
	h=To:Subject:From:Message-Id:Date; b=W0YBuNGqCVwhP7NpiRlo94toDtZQ3daFhKt3VQvyKvD8XmoM8UDmChLDuc0t/DZ8WWZlIIDvRPGExVAyDLedvov03M80zbWMTFLuRfSzuiWBZyrtnVzT9qcpbq2N091p5OSfq6otm9CVhhVM74ACgzyBmGUmpoXYcPyiyKpVe0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3GC3M3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3GC3M3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BAEC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790892033;
	bh=dTP3GTwP+5aJev1BDYwriviGoH/rMH/9zb9qCVhoBrA=;
	h=To:Subject:From:Date:From;
	b=L3GC3M3IypEUnBqdpYZMU7tlLPB72UlfVlJLD4mS5n8jSTl61omShqs03dv7i0NHe
	 RqoSnSQmgc7V0bz3A7EjkhwICnO06MRGywnnVDsZvkJTkzpTqiZMXQtB5K9nmRgHkJ
	 nfZ5Y6pj1vD/t6Z8IswRaufVezi28VszfB6ldMh5/hSszQnX43j6vsmgYnaHnvcZJy
	 uvnlHR5d9m7trB/iSmCYCtsj2n7jnlHgetslYl9xn8X44MWDI3ngwuAmxkMOnx2HPi
	 a4oZdhCOP3zXtqnqKLThPciGku6PgBIDDEP0cyCYzmRrTSqpBUVqEWpj+bIK59t+Ko
	 wmnnL09Bpk+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06F6CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089203368.3281.18199289407759122252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392bbaf58e5b4eb0d2b38b170e43c6afe7f66b022517f4c5e66454df659103dd
Date: Thu, 01 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790892033
