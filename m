Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F67928934F
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765369374; cv=none; b=Sw3AN9Ya/LH8UQnRBZWVV6aVJYQ0OEqmHqCRr0LiAjcib9ZRF1uZtTP+dB8AN8OLBvJ0eLw4WPUAONsFDqhHJg5PDHdTnRD808a1zdjlwddBaZQFdhvRFMhBenXLjUVZbW4y2ItA9CXcq1yhveX9tncEZ6Kh3mNzquOdv2ldx5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765369374; c=relaxed/simple;
	bh=tz5gjewGHy5FyfCTMUFFJxbOqoyBPWGseFax0OGZowQ=;
	h=To:Subject:From:Message-Id:Date; b=KPXB1RAlDswuC0omvgh/20sp8vWvoKd/rKhuMyCsK94HcdtC7rtVqTJtPnfdJI/Y763tGXqDDLaHdPnPu8tMMuStLNBKYeuonXPg9kII2lBm6S8kiMWltGnHvHQeoLIR1agrB5DIr364lzRi2bCWZFi2prKkMSWWu5eCh3kujzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9zltLMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9zltLMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDE3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765369373;
	bh=tz5gjewGHy5FyfCTMUFFJxbOqoyBPWGseFax0OGZowQ=;
	h=To:Subject:From:Date:From;
	b=P9zltLMmMumsFUCj+lcRDgC3bT2fTsbv25LkmSvlVoi0B4X6Dcr3OcGBI000m2J1s
	 675cyfGmvw7T9pgV41192Err6V6mpPTY8HHRhGYW8peFwY9PGfMKLbHYhlYj0V+Dbi
	 eAxvtY8xI6Grp2HfBrtebh/1/zLcwFLsMF8qFnT8MxwXphiDxKc3w4Reb05PZacIRp
	 V2P9fPwwQ2nzz70AxvAgXcAScm6SCvtLVvMkSwBbiV3YVddZuykthxCaDpGaIV8v50
	 Dcw+qhdEMtJk+1AEbBWl05IsVHfHyB9E3QmCjvQY6wUQv01hBX7oOPlqbu1T5FaVak
	 PlB0rIvboKDMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F0DD3C536
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536937360.2403.7543987179985876163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1f5c7299a0470927629f2d8e07b282b113041e50ee362ec4afe65735d68b86
Date: Wed, 10 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765369373
