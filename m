Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A72936D508
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764466974; cv=none; b=KhgscLDaazxcpiEuFz+n5epByk6wUXa25/FHlpqSy83xE6jPDNA1q3lpsKDhJWnYQCKViXHfpbW6DipWyeKBfdWc+z3AFxtfmVWuYmMEjje89If72Dx3CgA3oq52sRiW6Yd1GqHEx6ToEOr5tsg6cfVo1zT8FOT+/Oa1HTfZfaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764466974; c=relaxed/simple;
	bh=Bv2vCXa+cmj6sHQ5HOW8VSArwNYjW2L/kpoQu/o6fZ4=;
	h=To:Subject:From:Message-Id:Date; b=Wh027SpgGzTKOFTJtSvl4ITD4q4YvRp+D5CbAyyYO+yC1y022h3jtORErw8s3hcLCnXmevwte1ZxilcO3vnqUwx/6w//x+8qkYVcbfUzLmmfJhTo6Qk2JL38Hnr2JuudQ+CAe3zo0x56kmWaPR4x3WE6DBPoVlmt2aU1Hc4OwZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzbgNh5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzbgNh5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6938C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764466973;
	bh=Bv2vCXa+cmj6sHQ5HOW8VSArwNYjW2L/kpoQu/o6fZ4=;
	h=To:Subject:From:Date:From;
	b=gzbgNh5dZq2xEIsUFsqLVkBb7K7HDErYsKLHruN6X6JmPeUrWkOHVnbpcg67voo4T
	 oNPDUTGD9YZRnWY3VIf6rjC1ohgNu2vbiiEGXiKxqc65c0DYW3OLOe8IJJGA3cm5D/
	 sE+jvtAAZrtdZtz0EALFdgYQfP2XhiauDVjag1t4CqMF+SQc9f9EA/TyduS4xpokJj
	 YerRZCb0Bfr3cmQUJ+OhkCmF7NK4MqEk3dyk+gywr0hl/F6T4EmzU6j/+A3Bj2CEKg
	 cOggsTKMiNMZW+M/HlJN7sF/eJAoGffhDh3+khZ2MzKB6mQFpVZaR1BmBicyjwiFTg
	 OWUd+PI9VfvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A2D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446697358.11896.12067618865805715648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecc21de3748b507b2fdffc16d4e1d9920678d997b7260f2c90b8d11da586cdb
Date: Sun, 30 Nov 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764466973
