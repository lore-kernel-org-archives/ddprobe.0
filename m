Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC1F4968FC
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787851834; cv=none; b=AKDP+8VljxqIYX2rqXJs4Wp4OG+sAz2wMMeeKC2Klob9YzzYvZU6yRqxncKehPPMoA8HTaeBZmbdbH69rn8qv3mf8EqCPHSm4trfJDOW1nBcNwUFv0z1cP87SimwaGEdcIfbd/4wR9mPU/dvjTsQ2gvzLOPugZLfYejd16lXniU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787851834; c=relaxed/simple;
	bh=Wo+FxxLKcmF4kTvvGgzadVOTN33D7pC40U2cebTSU8o=;
	h=To:Subject:From:Message-Id:Date; b=kEihea+CTxMi2PQB7fQYg8ehpq30G7kE701H+MgrfzLDJ4oEISJbphVtC7nG0S0zqxiPz47HDhdXJjiqwz4ZywkV934nMgycDSslkzzn7gGt8uCqK1fnhHJOpwV6di75yoc7IO4EqhEfDTVvhwFQ/gvrzjOCaXFn8rTNgjI0pls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNsyaKBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNsyaKBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF01C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787851833;
	bh=Wo+FxxLKcmF4kTvvGgzadVOTN33D7pC40U2cebTSU8o=;
	h=To:Subject:From:Date:From;
	b=qNsyaKBaSGBLg5AxsnUfwx+tvHpnhojR61j8OCJqJOe6C/qrNkyinzZBiA16EbdsQ
	 1dHP0YO8gf5U2cqwATu1rqKoTKTqdnawKT71pzqFgHtDszvbnfOL+ucEmwB7OLmWqg
	 INEWvUR8eNKDknHt7CpnRK2OegKbzscyGmY8JwFnACEUhTDO8nRokEoFSUHtuCb0VX
	 1S8P3OlBCnYNOJhRMpIlpWz2AiACQQy+tOlPVlByVJ8k7K/H4ZYO82lr6D2/YqbrxU
	 u8RBseuxwDRnoOHAjZDc0DnXMyvWWTTtyYJUnrX+Ld4Q9NAo9CRTYdRTz3/3RlSgE7
	 OTQrIocvUJktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B04C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178785183368.12960.14228212206236560716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a52daa586cee25d3e73abc7159285498882f1f89272408c71ee537ba88063c
Date: Thu, 27 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787851833
