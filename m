Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3680521D3D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784779174; cv=none; b=Z5KnejlypejR97a5N5wgBwySjXOi8HOpjf/V9lwIDSvkIqonklMhTtTK5ZGIcETPnboNZPpEA+81GR6eXsKYqza1+6GsGCLBlBDBZpDnoLYyk9aP5zgdAcA1PLxOWFKUXTGqNyzXXh85eHB+J6r1UU/xNowfPpEcfCOEAOaAxpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784779174; c=relaxed/simple;
	bh=Sr9bvAoLdPoCIHG92nwo+xFEfNjSuZd+UfJwhjjDzuQ=;
	h=To:Subject:From:Message-Id:Date; b=qRSJFLeF44hD3MX5nAJpeLrFFIX/KqWFxVKS1ZnD4S+LtWltUr6OWW0FrgWxc+oHrdtSGWkA5mi4ZuoXdayI40iMl3jMPnqX3/QNU4Cv9hs1u+AviIsVgRTeeaIsDhKeD5hz72h0be23WN1R/QC3kkmYaJESIImUr3Ut489Ew4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENGBLVwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENGBLVwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4025C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784779173;
	bh=Sr9bvAoLdPoCIHG92nwo+xFEfNjSuZd+UfJwhjjDzuQ=;
	h=To:Subject:From:Date:From;
	b=ENGBLVwV7J72zwxTEVGbuNNX0Fyg9mMDX8+72Qqp+VrDoALpbXiLI+5vDG/mRkG8U
	 sStIsG9PjebLCly+bTi4EKltY0Oe+LGXfKC3JpjJquJ+UkxipAXvxjAGxXmkSC7kNY
	 OkYqDfKypmp8/AOXaetak+B+/2q3MrLE1+EgVTZrLpRsncm11H/cqj6c/BR+2ntzKr
	 xb6DOV3VBgE2/02GCh9UHynwi9LycJOLPGbzEhKAtrP/bphiXFJA3JFvCHPdxV1NMe
	 Fh/Z5RI/U6aKizN27C4yOR/b7Hq915eGbg063nNW8D1OJm1cauKnAWYV0fKvMXmphq
	 bNkeOyeY/vBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE4DC44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477917370.25419.844700706789764537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2b120b06c20998c9ca2350d7b5b26d68055ed0cdb194191dfe4aacc85aa0db
Date: Thu, 23 Jul 2026 03:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784779173
