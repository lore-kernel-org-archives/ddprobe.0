Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A1380C02
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735734954; cv=none; b=TJlrGB5YEy3eZoLU3/3JT8ln2r9dl9b0d9qKWCzuDFYdHhVGcjSfpcdBMoMJ0og2LX+TTGImWALgqZfpcT44QcMb3tLlsdksWxBiB2EaLveyi/JOP4b7JVIHKiaEG+5qVi2N0GV65SmONFaNNNXAQW0glKmm3roxIOQlZfU/XjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735734954; c=relaxed/simple;
	bh=Swz0puK/kJWuwIKBirc2lr8w9mWyftYh16lZR7RirmU=;
	h=To:Subject:From:Message-Id:Date; b=e0dUEHtWlCql4Bey6EFKQeoXTvBlfi4qMwjHUx+OUELkq+Ym9fQSsyhdukEGVRbDUqVyKaqFqwXTlPqhDCOLCiAyAJ4l0LtaSXxAXpM141TtVlfqiYBbd+o01fZ1qj5TIH3h9WWl2nsQx19fMILfERf451A90TfY5AJy4kGfnAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjEl0L2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjEl0L2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8354C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735734953;
	bh=Swz0puK/kJWuwIKBirc2lr8w9mWyftYh16lZR7RirmU=;
	h=To:Subject:From:Date:From;
	b=BjEl0L2jtBHaMW8N/Y19msAGOmQ/1S1JOIE7+4W3REaqOJwPREnVX5ONYiXfJTLWT
	 pW2wKqAf06sUm/b6gnTiQ6Akim3sOOdF17JECscY1EYqETGPjthvMPZov17hrjXl4k
	 UzGCC+DUlOLMLm+OBccqMiULIbd1E7cM9/eiEzf0gRGMkcUn1yYBTQrep4cdqSGJm9
	 0epZZRn0+uw+pwzvll7XudAJ0pPr/1mqQQJF/Ck1zFvwScIsqHewSH4OC6DDiBTsYY
	 czGKKtiL/d6VJRk12oYYdbF59ScKKxm2dwMhnnrbFWTAVJk7S9yRHQ8aIN0bT7hdv7
	 YGUl4rxanIxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94071E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573495359.3622.9421993800906999829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752423ac40224d6594c86833e2bd16bcc1a2b6c9a90e180ec498cb07b9c03315
Date: Wed, 01 Jan 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735734953
