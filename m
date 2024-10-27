Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E1217F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729994154; cv=none; b=ISCq0uTfMMoYTOccvQIoxoGPwboE0tgdMe+Jit7y/aaFwz1z/77AZ23Er9dng+Dqm2zq3HiI8sHed6eqEE5pPZEIEiLDC39faqDLnktusObm726Q6rqIUVcdVTvbQKH/Je+4+1wAjNgJOVs+vwqWQUaEwfQMtRzBLhW6cnG3C2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729994154; c=relaxed/simple;
	bh=6FrlJIBq0vkMOGkxmZ9JE4P4hTbe8lOjp5dQ+bwXERc=;
	h=To:Subject:From:Message-Id:Date; b=MsDLU4V+zHPaV3TblFIOiHZePZAnXJiLmGxgeq8ilTfWo9oWVFOtubqrd0qymXy+V9cvOLG4phghgV/DOdzT30BDvA9p3ybLu4n8gHFKC+bAE7cS7nj68xcBJLq0YM3rn9GaSQ7h4tyq2vtfPtRtqqihT/HR4qdcagsjZjQEs9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppYPMPv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppYPMPv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEEAC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729994153;
	bh=6FrlJIBq0vkMOGkxmZ9JE4P4hTbe8lOjp5dQ+bwXERc=;
	h=To:Subject:From:Date:From;
	b=ppYPMPv9naCwjlxPMBBX12RgkJHM9OVLjtGIyUZeXgefVbISg7UBMpRSV7hGZaUIa
	 Th2CckArFoznxeIH0PuxQSO9ALrVmVQcq+7/Rx9NDDWdsnPi9KrgkiAciWzhwlm/kf
	 nn33DY/7KDI64saW93lEZ9dC8GmLsRC5bc4HCTkkarpJxUSPKioEviOmVtooD4g6vi
	 V0UGFpnZuR2/ncHR4HAVkuGzDPynJu1O/3P/syfSwrhySFcxlr0OopLZPRduTYSMHi
	 OGv9SYODtYFntQhHXAmpuKlr2bUJOXZh2FNKonYiYgpxLB/yk4Dfys65wYfs6phoUK
	 NQEmSwvZ+hsFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C390D0C604
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999415360.10639.12904751186569703266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6cad38d3e84d7bd19399818a3afa40a627db1422efb7f435f1becf87cf9ec7
Date: Sun, 27 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729994153
