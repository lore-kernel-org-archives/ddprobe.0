Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500E138B15E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775804254; cv=none; b=audJNkhB+mRknZ83aupOTCD8llG+jvsXscggWmmkOkdUpTRVoqmyCyFgmMoE+vvQWOaZSu/ObULngWQWSYNS/dvok7jurLABIfIuKDB8iPlXn68BZ0iitmCUBVvHOxxVEKXmWQnFN8TQJTYGNCfUKfeJ5ig/z8gQBMiOh48z5dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775804254; c=relaxed/simple;
	bh=VK5IvXHeDYwY5dBECdbjBCkEuOp6qIAt0GJv8io1HNs=;
	h=To:Subject:From:Message-Id:Date; b=oA3ZGfUO7HVvO0NV2p/wubguZbI4NidvbVgndxXQC1CkaI7Jkzk0eeQpfN4LwoB5WH8bgOi6QsIaYG0w/v6a4U9VLBnYtRcOTH2hLOgZ6TaDztkJOAehsan7C8vw7U97JctiXLSsqJbY0sWuFcsA6TEn+p8gHQwUH8L7HRTxcG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpa/15wU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpa/15wU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3075C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775804253;
	bh=VK5IvXHeDYwY5dBECdbjBCkEuOp6qIAt0GJv8io1HNs=;
	h=To:Subject:From:Date:From;
	b=lpa/15wU5SDl0eHTsw3PcrW/rQn8O5dQmpGQeMEpI2v9RwNNxcAXPFlOXXRhFZziS
	 97fkaYmaW9xIXeVAi8et81ao9ATYh2PT49zm+e+orI8MJfX0bSRq1iHvje/RX8DEWk
	 5yoDi6Bj1wR/RCdUICRUPcugS7LZNaxsW2i2HfZOERiPbd8ZP8Kgb1/+D5vdSsCY5G
	 g3UpO5g1hxvXR0YG8W+N8yu+E7dVd8QuzV02zbd9hG03a9Six0OGZgLqawci5ngMgD
	 HQ0W81VA0Fttsh+WY5h9rZAoRdVSdoWVnKHovG+r77TU2YDMtWYFifJ4ZQSUoOv1EO
	 YCfB242/3WA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA077E98FDF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580425368.486.811074188019921461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3141caa765c009e556c7ba91767603bd12d8034bb9a403b97400189717c8debd
Date: Fri, 10 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775804253
