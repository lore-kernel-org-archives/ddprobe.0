Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF3114AD0D
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766945034; cv=none; b=I6ax5vuQAJnNIyrCzfRxt8GvhKX5dwTZSk38pRQuD12HCCK7PfEuangHMfFre3Q3w6h26vhvd37Ch1Vyujtg7Ya5tGYkBM0MCxajYPqmk00PsIy2JSuJFenEiK5GSQ8IL+07tTUW6DXOZyNFXUrfZ2wv6hAV+6ZoRJjUhU/zPNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766945034; c=relaxed/simple;
	bh=vIDWPBEdb226ny2Pje2zloycDhdetKI5OiyQ3oKqp8o=;
	h=To:Subject:From:Message-Id:Date; b=sPjsavTj0ujszUWaXWiPVCaBDFcLQi1rzSF09enSh78OwlQd35i3PAUhJ/pDG2ggnA71zOevd55subTkU8hcLEiUyd30NFmOtzVRkL3aDEFoTA1YCpUg7WeSW42UqMkAGGXPRrZcRjY3kwfbMRlAlqjvXn2SWbyg6pTZ1IK/9kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW5CPN5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW5CPN5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766945033;
	bh=vIDWPBEdb226ny2Pje2zloycDhdetKI5OiyQ3oKqp8o=;
	h=To:Subject:From:Date:From;
	b=rW5CPN5RM+yrgmMcCJlic3mqnqor6jJ3Qv/Ilh/nV/36V66AI73VMOyJrILhfdG6j
	 0sfzfURMk/dl5fk3EXorW2WdMAsIoKLnvhANVMP2ofRVFqCW0lqggYLji/0aeyvKe9
	 TZTJRY5/FJsRBaPVuVGkQLpffM7FibTCrp6NHPQjk8ZmpT7cMEVMQV+Tbw2PR/gBy/
	 2Jn1iJsJVWZ7Uf9wl+Nw/ZSlC8MG3DDGKyMazJOZJxlpMQE6m7BL3MDYXIqLQGZdGN
	 YsJFuvKavuZkRy6tOvQVkLe3WUgJsyaNI2JJke7lCRW0JQfaPb3e+wld3TOZQAb84C
	 odnD+Lez5ZLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E45D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694503359.3496.12086079956351804418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6563385d2860998ba21a42720d6d8d58dcd46d6f1b5e4f1b7e0225d05e17920
Date: Sun, 28 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766945033
