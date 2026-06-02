Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E7E3019C8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780417476; cv=none; b=raf0oVQ6/DXuei5gPEtFnMrSoh8866tdTKh9VRjR9pB9sEtBE7Eyj2RgapTlM9hVL5wpHCwfjUvdjYQl7rm66yCGBn2s8J92Tr2z5Auks9TbGkiMFB3jCTFjXpK5EC/7FNZ9tWEZNTtQ5UOsd6sZVgm2REoE2GIn7nJgab0sICM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780417476; c=relaxed/simple;
	bh=NpZWwgLHVThNFHs+uutwKzUBDAZYu1PsjCDgFmdixXA=;
	h=To:Subject:From:Message-Id:Date; b=ea0LK5IG03tQ9N1FAtBwVhq7I4kDC8wv7dMZ2EGyoyu49sIGuF+Bg7wmvA+7rhOq10HzeqrB8goPFjShA4Yq4pLiQOFm2VBNDoylnRwl1w4dflqvPv5iirkQGBzNDkOfifNXFT+QT9a8okax72AAYTn9+UVcOMoKTz/qFkYPt/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+FB4hyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+FB4hyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AF5C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780417475;
	bh=NpZWwgLHVThNFHs+uutwKzUBDAZYu1PsjCDgFmdixXA=;
	h=To:Subject:From:Date:From;
	b=W+FB4hyzW5G/R/sm0nmxeb985JqKCazfhJkR89BcfEgDEqQZcljlrk45n9aujJ1/j
	 vSdA4ciBnmbrojGssP66coLuciT1GPx7RGvacExerufSpHr9dHjx1et/WUDDFzqFDo
	 o72a3UlmTuuB5Fv9CeKfli2KSbefuJhJcWerMNrZICtd1USlyyW19stFe7ta7mlGJW
	 eoVMjsauzoXMd7oROFY517cqpIJ8Tjez6442xEIkqIUC6TAmGH6j+reDgqKVaUBWHl
	 JMZs5xHFlJZyI43iBOiU2LCEX/fVRzkf/YN18n2F85mpCQGEH45H3+5yv6KStQM2Yx
	 90NcTpNi1jl4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC724CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041747375.8686.10787520424241948117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c80fe638cf25a2e30853371f3ed393f575a63b7239960b2ff69610a7cbf8081
Date: Tue, 02 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780417473
