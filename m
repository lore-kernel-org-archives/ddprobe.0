Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F385C330D58
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439834; cv=none; b=rTIZ8eUBxA2glSpc4Vrpn9HEL9xz1Gj3zYmLJedICJrlaS6RvdBK95Xuwq1RiziY29Nk0HJ/0GXabo4SF+S4DKlhl8rhefq7UR+c9MOBqtKmfuvf7HSjqcFw8qm4/hO5mqTrzjOzLLgC4v3EPYcGWPni03Ze1GQXNC5M4vJOIgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439834; c=relaxed/simple;
	bh=YJLlJ+TPeKjjIsNwbAGV13rKrmdX3o3BRf27buWe5uM=;
	h=To:Subject:From:Message-Id:Date; b=sm4j7LUqNYKEiXukQPQeRpMtnwEdvITPnXLHhBC+NW1nTZTY/BUMANKFk8GfwKBf/6cgrSs0GS5w9u5tcM78btq5chPSzl0hfgOsiVv3nSgS4vIa26L9MwVt1Uq/MutJ0UYqFAZGf/WRPt/FwJ7QlemUXaYCFtp2UKLFEBCbviw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUQ7a0FY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUQ7a0FY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA19CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769439833;
	bh=YJLlJ+TPeKjjIsNwbAGV13rKrmdX3o3BRf27buWe5uM=;
	h=To:Subject:From:Date:From;
	b=DUQ7a0FYcrHynNabteIbh1Qiwh+8/qQWbJWz4Wn39ndELVgnRAUWyeqLIEpYzx3+L
	 uZ5kXbPAiP80suVr1exTWzG64i5jnr3me+V3Ecch6tm6D7nblIHpEwZXA/FdThVW4f
	 J8FfkUIBL896hJazCpG/HRUW3rxNwJd+VTC10hCsNiQtrqA9/49pYzyCGgrZTneTOk
	 sWI651/WTpKJLh9VEDhcW70Kj13i88xc65DqpexioP6Uygd1NZCmTmYAw0AAI+Ukjy
	 PFOkBRMqW6Y+Fb0Nxud9O2b6GoTU88GW06aT6i091WDins4NVCF5RXSGxt9h0PxCb4
	 88dYFtlKPj9Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A83D13C2B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943983361.2148.8289007863069807505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e2418c94ea9e6d1045cb0fc7edf71466396487a6462762556e7b886d9508b3
Date: Mon, 26 Jan 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769439833
