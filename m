Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACE12F85B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764481974; cv=none; b=JT0byvJFGgvSurNs6cOdKb9Ld1qmyV7TsG38UdfJkiYngpYqvuRIWu8aTAGHiL25aYHN6Y6UtcSFkkIOI+35GOmiOD0ISbMzZqNII+zZLaeK0jxMoqLwVupT4SZMmXbLUppEnOdwXDzGJ74C6oSHNXNM+g3DyDBXok/Zf45a/DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764481974; c=relaxed/simple;
	bh=f1yohs3V5G5zwb8lcp3r2/OFq2VH5hAr0AcTf7eOr8k=;
	h=To:Subject:From:Message-Id:Date; b=t2lmdyRtZ9HaxLtkkfRdGz1VP9hwu1plKl/O+CGxrtxhBHeD+olgXzTFF15GNW3wWAKnsZuDXoFtZhyz887FaarxrKafSKPKu5hRPCfohV71BSu0F97b3HWmLnhmJwJmSqbMEaSGsRjzgthU2EPGh52ZAjITHyWWagiGRXBQwcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0CF/fNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0CF/fNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB816C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764481973;
	bh=f1yohs3V5G5zwb8lcp3r2/OFq2VH5hAr0AcTf7eOr8k=;
	h=To:Subject:From:Date:From;
	b=u0CF/fNqPk1szhyOe0oWE0k0D1htRXtyIhyPxLvtfrLKsS5r5pFt/97yECd0fXi3E
	 NC3YzzHzVZQyVWywnR1CleukaRt26A7ohWRRR9OXj1C5Wd2zWrhwtWSKske2Ed9437
	 N5RVb8pGrl2q3j7A+N1aWcEZmZ0stmUtlRT6M8tCSz54NVEnWNYyiz7ps4s3heXn8k
	 5ScbtigeB/R1Mui4MAYgEl5JBRU6jNIpQpGXxrlbzMXD1gvPnNrT8+pCixXhlP/Y7X
	 qZzVjuoYAdq4juJV+esSJGI1x+YG4lUAV10kF68mmv48fK10uRnD5HZU48sMqSTr7w
	 1yiF/Y5TtU8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C4FCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448197358.26853.7389639198230461798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db0f5eafae75de3ff14cf4b08ff2ca32ee8afcebe2e755f8df1f962b270c884
Date: Sun, 30 Nov 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764481973
