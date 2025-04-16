Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4485223906B
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744797594; cv=none; b=tSzeXRm8TG3SIe1o+yCZrigPJ1og/1IRdXnCH0UCufUKltJB+/SXO+6JJh/y/s1J/YKRj4RcDtTTq5WnVvjnuMG3njUOmEPED1+omd5ukujgNwtshe3lNBrOhm86MmxHzAZkzyEcLgzJcCFPApduSPcZ88pOo8JOGl5qa6UaTcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744797594; c=relaxed/simple;
	bh=XE9fjqV0W+DkTBw8YoOl2j1trSCnUdgO4u5JLE5tFlY=;
	h=To:Subject:From:Message-Id:Date; b=Ivc5fFqAmXH9QfvJqeEtt8D5ZVQuf2OvAXnzT89Xk3/5eDZDKt5ESownFW+M5caLcQLYUOx3WaAyP9QgAp4G9oSvRwoJexFsifww+V1FDixJyvrHZcAlqzG6pgqu+7lrobUjN6RPq5H9s+LJQ0BW2XRM3Tq1zKCAor3boWQyI+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2Ot3txE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2Ot3txE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBB2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744797593;
	bh=XE9fjqV0W+DkTBw8YoOl2j1trSCnUdgO4u5JLE5tFlY=;
	h=To:Subject:From:Date:From;
	b=t2Ot3txEeEMU8TYrJ8/F3BEKcwidHz1RQC9obsw6JlCtvmaTMCCp1YiQTUlQHzN1f
	 KrRjgf6CMnnHbaf7fWc18j3CrTAEN08lngFotcAwRVpB11/7rX8fJpV6P8Gn1BfbQF
	 qxecD1mYjJ1n5/xe7XQi8MuK47+vP3J76sjfa58fzXLBSWI4yXvanRaKeQtHtmWlja
	 mQKWvpTJCTFfaV6MfTftdhCNUtHjDnGfdsBwRrE1KgJQOsfpHZ29K5ZMFX+IIwKwM0
	 SlERzCq3TMstw2ARFEq6RO4uQdTs6W7HiPO5q0FATwU5/Re2fvncNk2382v6GOjUOn
	 1c5jhiYDSlulw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982AEC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479759361.12839.7988720484010038156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ab9cf7438b0b1522b68fd4f6974ea045033faae45777054880094001eb84c2
Date: Wed, 16 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744797593
