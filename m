Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B20236453
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771186494; cv=none; b=HsHNRFGTjQowPfFCYOyhSTdKH4CBteZv/MjZa4NLpw8XcB+TpWPeNfsV9ROPA7KD0ziWZJQ1J6F5WINp1+DkBtlCbTp0GTqZhUXkotACfzQGFY8cgDbN4nHeg3wzvD79kj81ZckR0+LC6cR1Y5TWEign2236GfgPA0EdrH+NWrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771186494; c=relaxed/simple;
	bh=CtdfayAEKChzMs/o9HWu1JJfKE8sAVbXTAFymD7s/q0=;
	h=To:Subject:From:Message-Id:Date; b=JgX1oi/M0TQZwJMt5/PJqQC0lYMlCdK7nv7qStBf8O2Fm+Hb1koV64kISBGaQxJK/P0kDKQ1wammU4cQ9qL+vEeT9sfaLQwBirwX6+mOqX7GDqYteRqJ8eMQPANJZDa/Ri22coQkFOOcrzeb5iIMYkxNpCDrnvziEVWosyQBT8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxXnS3Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxXnS3Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA347C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771186493;
	bh=CtdfayAEKChzMs/o9HWu1JJfKE8sAVbXTAFymD7s/q0=;
	h=To:Subject:From:Date:From;
	b=NxXnS3LcLijFYvQyhBA4Z0mQ1/zHmYC+vAnl6uLQ1fZ3+JcsLAdGoEptbU49bvwAT
	 JNLTYRQ8/+ei2R4jLwaz9oZAsgOCQ3lRErieD9E67d43vXhfSTn/VWEnwuAaibuSAy
	 yYL0vTSj6rD9/tRUZaFVLKjDCMInFv+9QOouXmQHs6gqhXGH7d5mEsquteGzmUViY/
	 +Aj9kVMDDlidETKYSfymKsmnw+YK0w1Dgv1U8ssh6RUCHvCgsj1+lekv6Oq3iiPtKq
	 m8oYFbrnhRGg/3vcRKw3S7ZYlXCywX0TXnP2aEZO40RoD9rWyAkXeUKBk+Q6bG3pFz
	 cH6t4kEDoXH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97983E63F11
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118649359.18680.3156292568884776199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890f557a6d9990370bb49ae5b63a080db0cf55f172de6c83f4192b623d2a0aba
Date: Sun, 15 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771186493
