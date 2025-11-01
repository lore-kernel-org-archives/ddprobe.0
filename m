Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAEC34CDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762009194; cv=none; b=GORd5aqIDniqtf38XcXwasuTWc9pbKBtvyTCiMTF1RmWMlPpOZ1y8iyuuJTNVpACBWqED5ROTWOGr+F2IwzU9CljjqPixm19M/cCNFCWS4tPZOKAoilbHbUjBJ4HMVM0DXWP+3OMFyC3MS4Q3+7v3O5EiClB2MyUA2/oqcVlRgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762009194; c=relaxed/simple;
	bh=tzK4TgMrb+LzcDScP+7/psl2lXPK2aSTVhkr8A6Magw=;
	h=To:Subject:From:Message-Id:Date; b=M8BVDFyHX7hBDEE6PO8Lu0bHjDJx9dcTXJLT6dV9uzOe9z7gh2xNpoq3fSgHgPKLzjnyKwk3bZFeZPFIsta+vTOQkdm2FMJ6WyakWtnLMWqlXK0Lr62TlAdAQS3DNG1Exdm+ZodpgIlJHqN9gYBULcXwbtHGT98Y/4+NM+qZfgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGK5nlmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGK5nlmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C04C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762009193;
	bh=tzK4TgMrb+LzcDScP+7/psl2lXPK2aSTVhkr8A6Magw=;
	h=To:Subject:From:Date:From;
	b=NGK5nlmM5rmWWLaSPxRLJ9QL8XNd9w8iaC2ngzbNqsvHVUL2yEb8ZiaFkbLpGxQfC
	 OYPY7g/Qu9AZpGLYKSTgFGQ3PuIyzhreBRCzw7LMfVHwHf2KCwcQZav2a3aCxIIWtH
	 GtEKV/IKsNZOctQeXNrp0Ohi6PgMEj7C5J5eYuJNsvg6pWkRYs9H3v2n/paYGIx3WL
	 vh/SdepjkeSq7bpijQJ+C0ZFF36GptEIXVEig48v6mtScl2YfQMKAsCjwKlzKWR9eE
	 rULzoHA9UJNmathyFPM1xx2TGtzobTsr72rw6sUYE47neXGC9OLIT+5CMWUqMM6lEV
	 /HZlaRIwgrxmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93668CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200919358.10989.6578469878808700021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217d25fb31c74075f5703b2598059b2cecd1a18df3a096647b9d13337cdec8cf
Date: Sat, 01 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762009193
