Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A74429CE1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763249454; cv=none; b=BtasHOJoUwjScJBjEp1VwyWojCVcFcckF7daPs0FXtGDqBM/+N6xEABXmchHASw79AS/Bwot6BZDRI9TZu8tmvFqvQr9gChANl5e8wEFVt4G6v++1QnVqG6OhwQFvBcTMJ7e/t/S4xuC/+G6IX11M8wzQhUESE/XOvb5WRmFjyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763249454; c=relaxed/simple;
	bh=PPUsS/czEnuncVWQLxyggzbkNlycsrl7hQ2TkAXGwVQ=;
	h=To:Subject:From:Message-Id:Date; b=W4IM86dAYHb7H/Uapj2QovKke34XpT5TW9r99TCaXmmfkre0hW80ZfhPpOf3Jxpz/RhL/xjB6uLuJ/KYP40oJRjHMdG2vl9iyoVEASX0pawaP/a3H63ChSADI4pvlnhsxG9OppukZTUHORaLcvU1O02rC6C7oJJtgSi1ChWyu3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F68XAQyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F68XAQyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B3C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763249453;
	bh=PPUsS/czEnuncVWQLxyggzbkNlycsrl7hQ2TkAXGwVQ=;
	h=To:Subject:From:Date:From;
	b=F68XAQySpTlFWgFpgPS8IN6wCXWoEAgNtrHxg3l/bjaqIjZnyywiYxoLh8YE+kHil
	 x/5Svsdvab3PM4AkF9sx3JkQRirWTE6VckclKb95GyANBfvge/8nd1LhTLkQbmeKr7
	 vlUZ8E09xqtPu/z0fvijFbPSAnq4B0xqmKdlakUc+NBnVMkImZ+vvQQs6Qu+BpAlsC
	 7OCJL0V8LSRCaf1nvXVVlvFCyowy9/00idPLxAGFOz9Llhox4CUKloGspcX6qh6xZe
	 vlnBqLlJFj4Ob08/buAXqAzZlJUwCvcy7DNkjru/qRabUUVpEEEdBndEwFTNlszVTQ
	 0ZuvhQLHS23Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94408CEBF86
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324945359.27882.14885892902906497249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3120a011ff600b16519aa4d1a7c0a790d4698c5b129a1e4880830a32b2b6f2a
Date: Sat, 15 Nov 2025 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763249453
