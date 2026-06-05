Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC7C318146
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780665274; cv=none; b=tPcDnokFmCyIfnluidK63SRFhWEehU+qkWd2RvmGSNYjxJKjbqq1yJ1Ph/E3EDhODekFn/NJ362F/Hsl7Zxn4mtGtWidHpPDB9AVuTA1jDwS9glB4/H5KUQvPK+5UhfafEivrO3G4+d18omu0tzutCEY/a3yCxsCSf/8XgcvULM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780665274; c=relaxed/simple;
	bh=njq5Iy8CW2HXygciFh7KjXcoBoC3zO6TBNih89HjV3Y=;
	h=To:Subject:From:Message-Id:Date; b=SHU24/0Qnz+IfppqGUVEIgrm+UQVwseBB+c1AKC9h99kOUkQ1zs+0zHdXQmaNPDswZegjxWA3zF1FEzyLq5eohRz+qv7P6wknj/USS6oW1VHAisnMwH18AWqnAJuITzg/mTtj3DCCMuhFqzUOn9TIp6vpj0XWncF8QZ8Ujao//I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upf7bp2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upf7bp2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0AFEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780665273;
	bh=njq5Iy8CW2HXygciFh7KjXcoBoC3zO6TBNih89HjV3Y=;
	h=To:Subject:From:Date:From;
	b=upf7bp2qiY86K15j+Gut1w3e+Qv1X8LdGO56PM+49EW3k+JYanhPQpSgjbtMbXujF
	 7rrMcyAI/NLjBV3P833VTE51CMmAzn4HAT10FvAP6BJ2rBUb3Oe+UbRTioqzb26/MA
	 wQsfTo7M7sIaqhBPHywrDcG/IlM46sc5Qbn8pWbsd/RrAaJXSscjmOxIL3V8H87du0
	 62p4GNsm/8ekY3pDpU0YqpFliyT6r6EctSbZMjOJ6C5qD6FATNHOakeCBii9Mbkpwa
	 5IfbPfTX61V2slKEh+RKcEMm7cr5AwEluTeEOXyWTYd+O5k9JndIyqNPshwWDgWrFS
	 TTIIG3/yzJuMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA2CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 13:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066527368.24699.18170309277637550220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586aa6765d8b4ad78ada57364765325d5acd4e841a83fb2cc25783ea1eb11cdd
Date: Fri, 05 Jun 2026 13:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780665273
